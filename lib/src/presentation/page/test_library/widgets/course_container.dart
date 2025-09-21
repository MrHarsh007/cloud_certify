import 'package:toastification/toastification.dart';

import '../../../all_export.dart';

class CourseContainer extends StatefulWidget {
  final double? height;
  final double? width;
  final Color color;
  final TestSummary testSummary;
  const CourseContainer(
      {super.key,
      this.height,
      this.width,
      required this.color,
      required this.testSummary});

  @override
  State<CourseContainer> createState() => _CourseContainerState();
}

class _CourseContainerState extends State<CourseContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      width: widget.width,
      padding: EdgeInsets.all(BOX_PADDING),
      decoration: CommonUtilities.commonBoxDecoration,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // CircleAvatar(
              //   backgroundColor: widget.color.withOpacity(0.2),
              //   radius: 20,
              //   child: Icon(
              //     Icons.cloud,
              //     color: widget.color,
              //   ),
              // ),

              Container(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: CommonUtilities.commonBoxDecoration.copyWith(
                    color: widget.color.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(100)),
                child: Text(
                  widget.testSummary.category,
                  style: context.textTheme.bodySmall?.copyWith(
                    color: widget.color,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
          10.hx,
          Text(
            widget.testSummary.title,
            style: context.textTheme.titleMedium
                ?.copyWith(fontWeight: FontWeight.w600, fontSize: 18),
          ),
          10.hx,
          Text(
            widget.testSummary.description,
            style: context.textTheme.bodyMedium,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
          ),
          10.hx,
          _buildDetailsWrap(context),
          20.hx,
          BlocConsumer<StarStopSumbitTestBloc, StarStopSumbitTestState>(
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
                isLoading: state.state.isLoading &&
                    state.testId == widget.testSummary.id,
                height: 40,
                borderColor: Colors.transparent,
                backgroundColor: AppColor.primarySecondaryColor,
                radius: SMALL_RADIUS,
                onTap: () => {
                  context.read<StarStopSumbitTestBloc>().add(
                        StarStopSumbitTestEvent.startTest(
                            testId: widget.testSummary.id),
                      ),
                },
                label: "Start",
              );
            },
          )
        ],
      ),
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
        Icon(icon, color: AppColor.primarySecondaryColor, size: 16),
        Text(
          " $text",
          style: context.textTheme.titleSmall?.copyWith(
              color: AppColor.primarySecondaryColor,
              fontWeight: FontWeight.w400),
        ),
      ],
    );
  }

  Widget _buildDetailsWrap(BuildContext context) {
    return Wrap(
      spacing: 15,
      runSpacing: 15,
      children: [
        _buildDetailItem(
          icon: Icons.lock_clock_outlined,
          text: "${widget.testSummary.duration} minutes",
          context: context,
        ),
        _buildDetailItem(
          icon: Icons.question_mark_rounded,
          text: "${widget.testSummary.totalQuestions} questions",
          context: context,
        ),
        _buildDetailItem(
          icon: Icons.sunny,
          text: widget.testSummary.difficulty.capitalize ?? "",
          context: context,
        ),
      ],
    );
  }
}
