import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_core/theme.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

import '../utilities/theme/app_colors.dart';

class TablePaginationWidget extends StatelessWidget {
  const TablePaginationWidget(
      {super.key,
      required this.source,
      required this.initialPageIndex,
      required this.totalPages});

  final DataGridSource source;
  final int initialPageIndex;
  final int totalPages;

  @override
  Widget build(BuildContext context) {
    return SfDataPagerTheme(
      data: const SfDataPagerThemeData(
        itemColor: Colors.white,
        selectedItemColor: AppColor.primaryColor,
        itemBorderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      child: SfDataPager(
        delegate: source,
        initialPageIndex: initialPageIndex,
        pageCount: totalPages.toDouble(),
        direction: Axis.horizontal,
        // visibleItemsCount: 5,
      ),
    );
  }
}
