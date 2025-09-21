import 'package:cloud_certify/src/common/debouncer.dart';

import '../../../all_export.dart';

class TestLibraryHeaderWidget extends StatefulWidget {
  final CommonDebouncer debouncer;
  const TestLibraryHeaderWidget({
    super.key,
    required this.debouncer,
  });

  @override
  State<TestLibraryHeaderWidget> createState() =>
      _TestLibraryHeaderWidgetState();
}

class _TestLibraryHeaderWidgetState extends State<TestLibraryHeaderWidget> {
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
                  ..._buildWidget(isMobile),
                ],
              )
            : Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                _header(),
                Row(
                  children: _buildWidget(isMobile),
                ),
              ]));
  }

  Widget _header() {
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

  List<Widget> _buildWidget(bool isMobile) {
    return [
      SizedBox(
        width: isMobile ? null : 250,
        child: CustomTextFormField(
          hintText: "Search tests...",
          prefixIcon: Icon(Icons.search),
          onChanged: (value) {
            widget.debouncer.run(() {
              context
                  .read<GetTestBloc>()
                  .add(GetTestEvent.changeSearchQuery(searchQuery: value));
            });
          },
        ),
      ),
      isMobile ? 20.hx : 20.wx,
      CommonDropDownWidget(
          width: isMobile ? double.infinity : 250,
          hint: "Select Certification",
          listOfItem: certificationsList,
          onChanged: (s) {
            context
                .read<GetTestBloc>()
                .add(GetTestEvent.changeCategory(category: s));
          })
    ];
  }
}
