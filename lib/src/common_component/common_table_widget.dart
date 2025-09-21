import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_core/theme.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class CommonTableWidget extends StatelessWidget {
  const CommonTableWidget({
    super.key,
    required this.columns,
    this.rowsPerPage = 10,
    this.onCellTap,
    this.showPagination = true,
    this.showSearch = false,
    this.onSearchQueryChanged,
    this.showAddButton = true,
    this.addButtonTitle,
    this.onAddTap,
    this.showCross = false,
    this.onCrossTap,
    this.searchController,
    required this.source,
  });

  final int rowsPerPage;
  final DataGridSource source;
  final List<GridColumn> columns;
  final Function(DataGridCellTapDetails)? onCellTap;
  final bool showPagination;
  final bool showSearch;
  final bool showCross;
  final Function(String p1)? onSearchQueryChanged;
  final bool showAddButton;
  final String? addButtonTitle;
  final TextEditingController? searchController;
  final Function()? onAddTap;
  final Function()? onCrossTap;

  @override
  Widget build(BuildContext context) {
    return SfDataGridTheme(
      data: const SfDataGridThemeData(
          gridLineColor: Colors.black, filterIcon: Icon(Icons.arrow_drop_down)),
      child: SfDataGrid(
        gridLinesVisibility: GridLinesVisibility.both,
        headerGridLinesVisibility: GridLinesVisibility.both,
        isScrollbarAlwaysShown: false,
        showHorizontalScrollbar: false,
        showVerticalScrollbar: false,
        source: source,
        columnWidthMode: ColumnWidthMode.lastColumnFill,
        frozenColumnsCount: 1,
        columns: columns,
        onCellTap: onCellTap,
        rowsPerPage: rowsPerPage,
        allowFiltering: false,
      ),
    );
  }
}
