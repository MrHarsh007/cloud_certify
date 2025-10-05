import 'package:cloud_certify/src/common/debouncer.dart';

import '../../../all_export.dart';

class TestLibraryHeaderWidget extends StatelessWidget {
  final CommonDebouncer debouncer;
  final TextEditingController searchController;
  const TestLibraryHeaderWidget({
    super.key,
    required this.debouncer,
    required this.searchController,
  });

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
                  _header(context),
                  20.hx,
                  ..._buildWidget(isMobile, searchController),
                ],
              )
            : Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                _header(context),
                Row(
                  children: _buildWidget(isMobile, searchController),
                ),
              ]));
  }

  Widget _header(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("GCP Certification Tests",
            style: context.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.w600,
              fontSize: 18,
            )),
        5.hx,
        Text(
          "Choose a certification to prepare for",
          style: context.textTheme.bodyMedium,
        )
      ],
    );
  }

  List<Widget> _buildWidget(
      bool isMobile, TextEditingController searchController) {
    return [
      SizedBox(
        width: isMobile ? null : 300,
        child: BlocBuilder<GetTestBloc, GetTestState>(
          buildWhen: (previous, current) =>
              previous.searchQuery != current.searchQuery,
          builder: (context, state) {
            return CustomTextFormField(
              controller: searchController,
              hintText: "Search tests...",
              prefixIcon: Icon(Icons.search),
              suffixIcon: state.searchQuery != null &&
                      state.searchQuery!.isNotEmpty
                  ? IconButton(
                      icon: Icon(Icons.close),
                      onPressed: () {
                        searchController.clear();
                        context.read<GetTestBloc>().add(
                            GetTestEvent.changeSearchQuery(searchQuery: null));
                      },
                    )
                  : null,
              onChanged: (value) {
                debouncer.run(() {
                  context
                      .read<GetTestBloc>()
                      .add(GetTestEvent.changeSearchQuery(searchQuery: value));
                });
              },
            );
          },
        ),
      ),
      isMobile ? 20.hx : 20.wx,
      BlocBuilder<GetTestBloc, GetTestState>(
        buildWhen: (previous, current) => previous.category != current.category,
        builder: (context, state) {
          return CommonDropDownWidget<String>(
              width: isMobile ? double.infinity : 380,
              hint: "Select Certification",
              value: state.category,
              listOfItem:
                  CertificationType.values.map((e) => e.wireName).toList(),
              onChanged: (s) {
                context
                    .read<GetTestBloc>()
                    .add(GetTestEvent.changeCategory(category: s ?? ""));
              });
        },
      )
    ];
  }
}
