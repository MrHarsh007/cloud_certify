import '../../../all_export.dart';

class FeaturedTestWidget extends StatefulWidget {
  final String name;
  final String description;
  final int duration;
  final int questions;
  final String level;
  final String testId;
  final bool isFeatured;

  const FeaturedTestWidget({
    super.key,
    required this.name,
    required this.description,
    required this.duration,
    required this.questions,
    required this.level,
    required this.testId,
    required this.isFeatured,
  });

  @override
  State<FeaturedTestWidget> createState() => _FeaturedTestWidgetState();
}

class _FeaturedTestWidgetState extends State<FeaturedTestWidget> {
  @override
  Widget build(BuildContext context) {
    // final isMobile = ResponsiveBreakpoints.of(context).isMobile ||
    //     ResponsiveBreakpoints.of(context).isTablet;

    return Container(
      padding: EdgeInsets.all(BOX_PADDING * 1.5),
      height: 350,
      decoration: CommonUtilities.commonBoxDecoration.copyWith(
        color: AppColor.primarySecondaryColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: _buildContent(context),
          ),
          // if (!isMobile) 40.wx,
          // if (!isMobile) _buildImage(),
        ],
      ),
    );
  }

  Widget _buildContent(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildChipsRow(context),
        15.hx,
        Text(
          widget.name,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: context.textTheme.headlineSmall?.copyWith(
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
        10.hx,
        Text(
          widget.description,
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
          style: context.textTheme.titleSmall
              ?.copyWith(color: Colors.white, fontWeight: FontWeight.w400),
        ),
        10.hx,
        _buildDetailsWrap(context),
        20.hx,
        _buildStartTestButton(context),
      ],
    );
  }

  Widget _buildChipsRow(BuildContext context) {
    return Row(
      children: [
        if (widget.isFeatured)
          _buildChip(
            label: "Featured",
            backgroundColor: AppColor.white,
            textColor: AppColor.primarySecondaryColor,
            context: context,
          )
        else
          _buildChip(
            label: "Most Popular",
            backgroundColor: AppColor.primaryColor,
            textColor: AppColor.white,
            context: context,
          ),
      ],
    );
  }

  Widget _buildChip({
    required String label,
    required Color backgroundColor,
    required Color textColor,
    required BuildContext context,
  }) {
    return Chip(
      backgroundColor: backgroundColor,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.transparent),
        borderRadius: BorderRadius.circular(100),
      ),
      label: Text(
        label,
        style: context.textTheme.titleSmall?.copyWith(color: textColor),
      ),
    );
  }

  Widget _buildDetailsWrap(BuildContext context) {
    return Wrap(
      spacing: 15,
      runSpacing: 15,
      children: [
        _buildDetailItem(
          icon: Icons.lock_clock_outlined,
          text: "${widget.duration} minutes",
          context: context,
        ),
        _buildDetailItem(
          icon: Icons.question_mark_rounded,
          text: "${widget.questions} questions",
          context: context,
        ),
        _buildDetailItem(
          icon: Icons.sunny,
          text: widget.level,
          context: context,
        ),
      ],
    );
  }

  Widget _buildDetailItem({
    required IconData icon,
    required String text,
    required BuildContext context,
  }) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, color: AppColor.white, size: 16),
        Text(
          " $text",
          style: context.textTheme.titleSmall
              ?.copyWith(color: Colors.white, fontWeight: FontWeight.w400),
        ),
      ],
    );
  }

  Widget _buildStartTestButton(BuildContext context) {
    return BlocConsumer<StarStopSumbitTestBloc, StarStopSumbitTestState>(
        listenWhen: (previous, current) => previous.state != current.state,
        buildWhen: (previous, current) => previous.state != current.state,
        listener: (context, state) {
          if (state.state.isError) {
            showCommonToast(
                context: context,
                message: state.message,
                notificationType: ToastificationType.error);
          }
          if (state.state.isLoaded && state.attemptId != null) {
            GoRouter.of(context)
                .goNamed(AppRoutes.PRACTICE_ROUTE_NAME, pathParameters: {
              "attempt_id": state.attemptId ?? "",
              "test_id": state.testId ?? "",
              "from": AppRoutes.TEST_LIBRARY_ROUTE_NAME,
            });
          }
        },
        builder: (context, state) {
          return CustomElevatedButton(
            isLoading: state.state.isLoading,
            width: 200,
            height: 40,
            backgroundColor: Colors.white,
            radius: SMALL_RADIUS,
            labelColor: AppColor.primarySecondaryColor,
            onTap: () => context.read<StarStopSumbitTestBloc>().add(
                  StarStopSumbitTestEvent.startTest(testId: widget.testId),
                ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Start Test",
                  style: context.textTheme.titleSmall?.copyWith(
                    color: AppColor.primarySecondaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                5.wx,
                Icon(
                  Icons.arrow_forward,
                  color: AppColor.primarySecondaryColor,
                ),
              ],
            ),
          );
        });
  }

  // Widget _buildImage() {
  //   return Image.network(
  //     "https://static-00.iconduck.com/assets.00/google-cloud-icon-2048x1646-7admxejz.png",
  //     height: 200,
  //     width: 200,
  //   );
  // }
}
