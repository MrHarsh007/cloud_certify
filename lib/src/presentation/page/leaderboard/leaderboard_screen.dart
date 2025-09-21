import '../../all_export.dart';

class LeaderboardScreen extends StatefulWidget {
  const LeaderboardScreen({super.key});

  @override
  State<LeaderboardScreen> createState() => _LeaderboardScreenState();
}

class _LeaderboardScreenState extends State<LeaderboardScreen> {
  @override
  void initState() {
    super.initState();
    final leaderboardBloc = context.read<LeaderboardBloc>();
    if (leaderboardBloc.state.leaderboardResponse == null) {
      leaderboardBloc.add(const LeaderboardEvent.fetchLeaderboard());
    }
  }

  @override
  Widget build(BuildContext context) {
    return SideBarScreen(
      index: 3,
      secondScreen: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const LeaderboardHeaderWidget(),
          20.hx,
          FadeInUp(
            curve: Curves.easeIn,
            delay: const Duration(milliseconds: 800),
            duration: const Duration(milliseconds: 400),
            child: BlocBuilder<LeaderboardBloc, LeaderboardState>(
              builder: (context, state) {
                if (state.state.isLoading) {
                  return const Center(
                    child: CommonLoader(),
                  );
                }
                final leaderboardData =
                    state.leaderboardResponse?.leaderboard.toList() ?? [];
                return ClipRRect(
                  borderRadius: BorderRadius.circular(SMALL_RADIUS),
                  child: CustomPaginatedDataTable(
                    headingRowColor: const WidgetStatePropertyAll(Colors.white),
                    dataRowColor: WidgetStatePropertyAll(
                      Colors.white,
                    ),
                    footerColor: Colors.white,
                    columnSpacing: 24,
                    horizontalMargin: 30,
                    dataRowHeight: 65,
                    rowsPerPage:
                        leaderboardData.isEmpty ? 1 : leaderboardData.length,
                    columns: const [
                      DataColumn(label: Text('RANK')),
                      DataColumn(label: Text('USER')),
                      DataColumn(label: Text('TEST TAKEN')),
                      DataColumn(label: Text('AVG SCORE')),
                      DataColumn(label: Text('PASS RATE')),
                    ],
                    source:
                        LeaderboardTableDataSource(leaderboardData, context),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class LeaderboardTableDataSource extends DataTableSource {
  final List<UserLeaderboardEntry> entries;
  final BuildContext context;

  LeaderboardTableDataSource(this.entries, this.context);

  @override
  DataRow? getRow(int index) {
    if (index >= entries.length) return null;
    final entry = entries[index];

    return DataRow.byIndex(
      index: index,
      cells: [
        // Rank
        DataCell(
          Container(
            height: 45,
            width: 45,
            decoration: BoxDecoration(
              color: getRankColor(entry.rank),
              shape: BoxShape.circle,
            ),
            alignment: Alignment.center,
            child: Text(
              entry.rank.toString(),
              style: context.textTheme.headlineSmall?.copyWith(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
        ),

        // User Info
        DataCell(
          Row(
            children: [
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      entry.fullName,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: context.textTheme.titleMedium,
                    ),
                    Text(
                      entry.certificationTarget ?? "N/A",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: context.textTheme.bodySmall?.copyWith(
                        fontSize: 12,
                        color: Colors.black54,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),

        // Tests Taken
        DataCell(
          Text(
            entry.testsTaken.toString(),
            style: const TextStyle(fontWeight: FontWeight.w500),
          ),
        ),

        // Average Score
        DataCell(Text("${entry.avgScore.toStringAsFixed(2)}%")),

        // Pass Rate
        DataCell(Text("${entry.passRate.toStringAsFixed(2)}%")),
      ],
    );
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => entries.length;

  @override
  int get selectedRowCount => 0;
}

/// Returns the background color based on the leaderboard rank.
Color getRankColor(int rank) {
  switch (rank) {
    case 1:
      return Colors.green.shade700; // 1st place
    case 2:
      return Colors.orange.shade400; // 2nd place
    case 3:
      return Colors.blueGrey.shade400; // 3rd place
    default:
      return Colors.grey.shade500; // Others
  }
}
