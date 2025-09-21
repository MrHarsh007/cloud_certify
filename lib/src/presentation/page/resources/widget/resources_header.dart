import 'package:cloud_certify/src/common/debouncer.dart';
import 'package:cloud_certify/src/presentation/bloc/resources/resources_bloc.dart';
import '../../../all_export.dart';

class ResourcesHeader extends StatelessWidget {
  final double width;
  final bool isMobile;
  final CommonDebouncer debouncer;
  const ResourcesHeader(
      {super.key,
      required this.width,
      required this.isMobile,
      required this.debouncer});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BlocBuilder<ResourcesBloc, ResourcesState>(
          buildWhen: (previous, current) =>
              previous.state != current.state ||
              previous.totalViews != current.totalViews ||
              previous.totalCount != current.totalCount ||
              previous.totalLikes != current.totalLikes,
          builder: (context, state) {
            return Wrap(
              spacing: 20,
              runSpacing: 20,
              children: [
                _buildStaticWidget(
                    width: isMobile ? width / 2.5 : width * 0.3,
                    svgIcon: Assets.svg.view,
                    title: state.totalViews.toString(),
                    subtitle:
                        state.state.isLoading ? "Loading..." : "Total Views"),
                _buildStaticWidget(
                    width: isMobile ? width / 2.5 : width * 0.3,
                    svgIcon: Assets.svg.heart,
                    title: state.totalLikes.toString(),
                    subtitle:
                        state.state.isLoading ? "Loading..." : "Total Likes"),
                _buildStaticWidget(
                    width: isMobile ? width / 2.5 : width * 0.3,
                    svgIcon: Assets.svg.book,
                    title: state.totalResources.toString(),
                    subtitle: state.state.isLoading
                        ? "Loading..."
                        : "Total Resources"),
              ],
            );
          },
        ),
        20.hx,
        BlocBuilder<ResourcesBloc, ResourcesState>(
          buildWhen: (previous, current) =>
              previous.filterBy != current.filterBy ||
              previous.state != current.state,
          builder: (context, state) {
            return Container(
              padding: EdgeInsets.all(BOX_PADDING * 1.5),
              decoration: CommonUtilities.commonBoxDecoration,
              child: Row(
                children: [
                  Flexible(
                    child: CustomTextFormField(
                      hintText: "Search Resources...",
                      prefixIcon: Icon(Icons.search),
                      onChanged: (value) {
                        debouncer.run(() {
                          context.read<ResourcesBloc>().add(
                                ResourcesEvent.fetchResources(
                                  searchQuery: value.isEmpty ? null : value,
                                  fetchMore: false,
                                ),
                              );
                        });
                      },
                    ),
                  ),
                  20.wx,
                  CommonDropDownWidget(
                      width: 200,
                      hint: "Filter By",
                      value: state.filterBy,
                      listOfItem: resourcesFilter,
                      onChanged: (s) {
                        context.read<ResourcesBloc>().add(
                              ResourcesEvent.filterResources(
                                filterBy: s ?? "",
                              ),
                            );
                      })
                ],
              ),
            );
          },
        ),
      ],
    );
  }

  Widget _buildStaticWidget({
    required double width,
    required String svgIcon,
    required String title,
    required String subtitle,
  }) {
    int endNumber = int.tryParse(title) ?? 0; // Convert title to number safely

    return AnimatedContainer(
      duration: const Duration(milliseconds: 400),
      curve: Curves.easeIn,
      constraints: BoxConstraints(maxWidth: width, minWidth: width),
      padding: EdgeInsets.all(BOX_PADDING),
      decoration: CommonUtilities.commonBoxDecoration,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset(
              svgIcon,
              height: 40,
              width: 40,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 10),
          Flexible(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TweenAnimationBuilder<int>(
                  tween: IntTween(begin: 0, end: endNumber),
                  duration: Duration(milliseconds: 1000),
                  builder: (context, value, child) {
                    return Text(
                      "$value",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    );
                  },
                ),
                Text(
                  subtitle,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
