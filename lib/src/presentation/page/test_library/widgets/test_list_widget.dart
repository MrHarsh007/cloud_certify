import '../../../all_export.dart';

class TestListWidget extends StatefulWidget {
  const TestListWidget({super.key});

  @override
  State<TestListWidget> createState() => _TestListWidgetState();
}

class _TestListWidgetState extends State<TestListWidget> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final sidePanelState = context.watch<SidePanelBloc>().state;
    final double width = sidePanelState.isExpanded ? 375 : 320;
    final double height = sidePanelState.isExpanded ? 320 : 350;

    return BlocBuilder<GetTestBloc, GetTestState>(
      builder: (context, state) {
        final bool isSearching = state.searchQuery != null;
        final dataList = state.allTest;

        if (isSearching && state.allTest.isEmpty) {
          return NoSearchResultFound(
            title: "No Test Found",
            description:
                "We couldn’t find any tests matching your search. Try using different keywords.",
            icon: Icons.search_off,
          );
        }

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            LayoutBuilder(
              builder: (context, constraints) {
                return SizedBox(
                  width: constraints.maxWidth,
                  child: Wrap(
                    spacing: 20,
                    runSpacing: 20,
                    // alignment: WrapAlignment.spaceBetween,
                    children: List.generate(
                      dataList.length,
                      (index) => CourseContainer(
                        testSummary: dataList[index],
                        height: height,
                        width: constraints.maxWidth > 600
                            ? width
                            : constraints.maxWidth,
                        color: CommonUtilities.getConsistentColor(
                            dataList[index].category),
                      ),
                    ),
                  ),
                );
              },
            ),
            if (state.state.isUpdating) ...[
              20.hx,
              const Center(child: CommonLoader()),
            ],
          ],
        );
      },
    );
  }
}
