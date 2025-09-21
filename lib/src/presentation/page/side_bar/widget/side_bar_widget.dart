import 'package:cloud_certify/src/presentation/all_export.dart';

class SideBarWidget extends StatelessWidget {
  final int? currentIndex;
  const SideBarWidget({super.key, this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border(right: BorderSide(color: Colors.grey.shade300))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          10.hx,
          BlocBuilder<SidePanelBloc, SidePanelState>(
            buildWhen: (previous, current) =>
                previous.isExpanded != current.isExpanded,
            builder: (context, state) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  if (state.isExpanded) ...[
                    20.wx,
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          Assets.png.logo.path,
                          height: 30,
                          width: 30,
                        ),
                        10.wx,
                        RichText(
                            text: TextSpan(children: [
                          TextSpan(
                            text: 'Cloud',
                            style: context.textTheme.headlineSmall?.copyWith(
                                fontSize: 20,
                                color: AppColor.primarySecondaryColor,
                                fontWeight: FontWeight.w600),
                          ),
                          TextSpan(
                            text: 'Certify',
                            style: context.textTheme.headlineSmall?.copyWith(
                                color: AppColor.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w600),
                          ),
                        ])),
                      ],
                    )
                  ],
                  Spacer(),
                  IconButton(
                      onPressed: () => context
                          .read<SidePanelBloc>()
                          .add(SidePanelEvent.toggleExpanded()),
                      icon: Icon(
                          state.isExpanded ? Icons.menu_open : Icons.menu)),
                  10.wx,
                ],
              );
            },
          ),
          menusWidget(context),
          10.hx,
        ],
      ),
    );
  }

  Expanded menusWidget(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              allMenusWidget(),
            ],
          ),
        ),
      ),
    );
  }

  ListView allMenusWidget() {
    return ListView.builder(
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        itemCount: menuItems.length - 1,
        itemBuilder: (context, index) {
          return menuItemWidget(index, () {
            context
                .read<SidePanelBloc>()
                .add(SidePanelEvent.changeCurrenIndex(index));

            // Update Page Name
            context
                .read<SidePanelBloc>()
                .add(SidePanelEvent.changeScreenName(menuItems[index].name));
            context.goNamed(menuItems[index].pageRoute);
          }, context);
        });
  }

  Widget menuItemWidget(int index, Function() onTap, BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return InkWell(
      onTap: onTap,
      child: BlocBuilder<SidePanelBloc, SidePanelState>(
        builder: (context, state) {
          final activeIndex = currentIndex ?? state.currentIndex;

          return Container(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
              margin: const EdgeInsets.only(bottom: 5),
              decoration: BoxDecoration(
                  color: activeIndex == index
                      ? AppColor.primarySecondaryColor.withOpacity(0.2)
                      : AppColor.transparent,
                  border: activeIndex == index
                      ? Border(
                          left: BorderSide(
                              width: 4, color: AppColor.primarySecondaryColor))
                      : Border(
                          left:
                              BorderSide(width: 4, color: Colors.transparent))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  10.wx,
                  SvgPicture.asset(
                    menuItems[index].icon,
                    height: 20,
                    color: activeIndex == index
                        ? AppColor.primarySecondaryColor
                        : AppColor.black,
                  ),
                  10.wx,
                  if (state.isExpanded) ...[
                    Expanded(
                      child: Text(
                        menuItems[index].name,
                        style: activeIndex == index
                            ? textTheme.titleMedium?.copyWith(
                                color: AppColor.primarySecondaryColor,
                                fontSize: 17,
                                fontWeight: FontWeight.w500)
                            : textTheme.titleMedium?.copyWith(
                                fontSize: 17, fontWeight: FontWeight.w400),
                      ),
                    ),
                  ]
                ],
              ));
        },
      ),
    );
  }
}
