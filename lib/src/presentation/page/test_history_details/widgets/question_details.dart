import 'package:cloud_certify/src/presentation/all_export.dart';

class QuestionDetails extends StatefulWidget {
  const QuestionDetails({super.key});

  @override
  State<QuestionDetails> createState() => _QuestionDetailsState();
}

class _QuestionDetailsState extends State<QuestionDetails> {
  late TextEditingController searchController;

  @override
  void initState() {
    searchController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: CommonUtilities.commonBoxDecoration,
      child: BlocBuilder<TestHistoryDetailsBloc, TestHistoryDetailsState>(
        builder: (context, state) {
          final testListQuestion = state.searchQuery != null
              ? state.filteredQuestionDetails
              : state.questionDetails;
          return Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Question Review", style: context.textTheme.titleMedium),
                  Wrap(spacing: 10, runSpacing: 10, children: [
                    InkWell(
                      onTap: () {
                        context.read<TestHistoryDetailsBloc>().add(
                            TestHistoryDetailsEvent.changeQuestionDetails(
                                selectedIndex: 0));
                        searchController.clear();
                        context.read<TestHistoryDetailsBloc>().add(
                            TestHistoryDetailsEvent.searchQuestion(
                                searchQuery: ""));
                      },
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                        decoration: CommonUtilities.commonBoxDecoration
                            .copyWith(
                                color: state.selectedIndex == 0
                                    ? AppColor.primarySecondaryColor
                                    : Colors.white),
                        child: Text("All Questions",
                            style: context.textTheme.titleSmall?.copyWith(
                                color: state.selectedIndex == 0
                                    ? Colors.white
                                    : Colors.black)),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        context.read<TestHistoryDetailsBloc>().add(
                            TestHistoryDetailsEvent.changeQuestionDetails(
                                selectedIndex: 1));
                        searchController.clear();
                        context.read<TestHistoryDetailsBloc>().add(
                            TestHistoryDetailsEvent.searchQuestion(
                                searchQuery: ""));
                      },
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                        decoration: CommonUtilities.commonBoxDecoration
                            .copyWith(
                                color: state.selectedIndex == 1
                                    ? AppColor.primarySecondaryColor
                                    : Colors.white),
                        child: Text("Attempted Questions",
                            style: context.textTheme.titleSmall?.copyWith(
                                color: state.selectedIndex == 1
                                    ? Colors.white
                                    : Colors.black)),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        context.read<TestHistoryDetailsBloc>().add(
                            TestHistoryDetailsEvent.changeQuestionDetails(
                                selectedIndex: 2));
                        searchController.clear();
                        context.read<TestHistoryDetailsBloc>().add(
                            TestHistoryDetailsEvent.searchQuestion(
                                searchQuery: ""));
                      },
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                        decoration: CommonUtilities.commonBoxDecoration
                            .copyWith(
                                color: state.selectedIndex == 2
                                    ? AppColor.primarySecondaryColor
                                    : Colors.white),
                        child: Text("Unattempted Questions",
                            style: context.textTheme.titleSmall?.copyWith(
                                color: state.selectedIndex == 2
                                    ? Colors.white
                                    : Colors.black)),
                      ),
                    )
                  ])
                ],
              ),
              20.hx,
              CustomTextFormField(
                hintText: "Search from question...",
                controller: searchController,
                onChanged: (value) => context
                    .read<TestHistoryDetailsBloc>()
                    .add(TestHistoryDetailsEvent.searchQuestion(
                        searchQuery: value)),
                prefixIcon: Icon(Icons.search_outlined, color: Colors.black),
              ),
              20.hx,
              (testListQuestion?.isEmpty ?? true)
                  ? NoSearchResultFound(
                      title: "No Result Found",
                      description:
                          "We couldn't find any questions matching your search.",
                      icon: Icons.search_off_outlined)
                  : ListView(
                      shrinkWrap: true,
                      primary: false,
                      children: testListQuestion
                              ?.asMap()
                              .entries
                              .map((entry) => QuestionAnswerWidget(
                                  questionNumber: entry.key + 1,
                                  topic: entry.value.topic,
                                  options: entry.value.options,
                                  question: entry.value.question,
                                  answer: entry.value.answer,
                                  correctAnswer: entry.value.correctAnswer,
                                  explanation: entry.value.explanation,
                                  isCorrect: entry.value.isCorrect))
                              .take(state.totalCount)
                              .toList() ??
                          [],
                    ),
              10.hx,
              if (state.totalCount != state.questionDetails?.length)
                CustomElevatedButton(
                  radius: SMALL_RADIUS,
                  width: 250,
                  height: 40,
                  onTap: () => context
                      .read<TestHistoryDetailsBloc>()
                      .add(TestHistoryDetailsEvent.loadMoreQuestions()),
                  label: "Load More Questions",
                )
            ],
          );
        },
      ),
    );
  }
}
