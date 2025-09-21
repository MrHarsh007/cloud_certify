import 'package:cloud_certify/src/presentation/all_export.dart';

class TestHistoryHeaderWidget extends StatefulWidget {
  const TestHistoryHeaderWidget({
    super.key,
  });

  @override
  State<TestHistoryHeaderWidget> createState() =>
      _TestHistoryHeaderWidgetState();
}

class _TestHistoryHeaderWidgetState extends State<TestHistoryHeaderWidget> {
  @override
  Widget build(BuildContext context) {
    final isMobile = ResponsiveBreakpoints.of(context).isMobile ||
        ResponsiveBreakpoints.of(context).isTablet;
    return Container(
        padding: EdgeInsets.all(BOX_PADDING),
        decoration: CommonUtilities.commonBoxDecoration,
        child: isMobile
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _header(),
                  20.hx,
                  _buildWidget(isMobile),
                ],
              )
            : Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                _header(),
                20.wx,
                Flexible(child: _buildWidget(isMobile)),
              ]));
  }

  Widget _header() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Your Test History",
            style: context.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.w600,
              fontSize: 18,
            )),
        5.hx,
        Text(
          "Every test is a step forward — keep going, you're getting closer to your certification goals!",
          style: context.textTheme.bodyMedium?.copyWith(),
        )
      ],
    );
  }

  Widget _buildWidget(bool isMobile) {
    return SizedBox(
      width: isMobile ? null : 350,
      child: CustomTextFormField(
          hintText: "Search tests history...",
          onChanged: (value) {
            if (value.isEmpty) {
              context
                  .read<TestHistoryBloc>()
                  .add(TestHistoryEvent.resetSearchTestHistory());
            } else {
              context
                  .read<TestHistoryBloc>()
                  .add(TestHistoryEvent.changeSearchQuery(query: value));
            }
          },
          prefixIcon: Icon(Icons.search)),
    );
  }
}
