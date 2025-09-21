import 'package:cloud_certify/src/common/debouncer.dart';
import 'package:cloud_certify/src/presentation/all_export.dart';
import 'package:cloud_certify/src/presentation/bloc/resources/resources_bloc.dart';
import 'package:cloud_certify/src/presentation/page/resources/widget/resource_container.dart';
import 'package:cloud_certify/src/presentation/page/resources/widget/resources_header.dart';
import 'package:url_launcher/url_launcher.dart';

class ResourceScreen extends StatefulWidget {
  const ResourceScreen({super.key});

  @override
  State<ResourceScreen> createState() => _ResourceScreenState();
}

class _ResourceScreenState extends State<ResourceScreen> {
  late ScrollController _scrollController;
  late CommonDebouncer debouncer;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    debouncer = CommonDebouncer(milliseconds: 500);
    final resourcesBloc = context.read<ResourcesBloc>();
    // if (resourcesBloc.state.resourceList.isEmpty) {
    resourcesBloc.add(const ResourcesEvent.fetchResources());
    // }

    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    debouncer.dispose();
    super.dispose();
  }

  void _onScroll() {
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.position.pixels;
    final isBottom = currentScroll >= (maxScroll * 0.9);

    if (isBottom) {
      final resourcesBloc = context.read<ResourcesBloc>();
      if (!resourcesBloc.state.state.isUpdating &&
          resourcesBloc.state.hasMoreData) {
        resourcesBloc.add(const ResourcesEvent.fetchResources(fetchMore: true));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final isMobile = ResponsiveBreakpoints.of(context).isMobile ||
        ResponsiveBreakpoints.of(context).isTablet;
    return SideBarScreen(
      index: 4,
      secondScreen: BlocBuilder<SidePanelBloc, SidePanelState>(
        buildWhen: (previous, current) =>
            previous.isExpanded != current.isExpanded,
        builder: (context, sidePanelState) {
          final width = sidePanelState.isExpanded
              ? MediaQuery.sizeOf(context).width - 200
              : MediaQuery.sizeOf(context).width;
          return ListView(
            controller: _scrollController, // <-- attach controller here
            padding: const EdgeInsets.all(16),
            children: [
              ResourcesHeader(
                  isMobile: isMobile, width: width, debouncer: debouncer),
              20.hx,
              BlocConsumer<ResourcesBloc, ResourcesState>(
                listenWhen: (previous, current) =>
                    previous.state != current.state,
                listener: (context, state) {
                  if (state.state.isError) {
                    showCommonToast(
                      context: context,
                      message: state.message,
                      notificationType: ToastificationType.error,
                    );
                  }
                },
                builder: (context, state) {
                  if (state.state.isLoading) {
                    return const Center(
                      child: CommonLoader(),
                    );
                  }
                  if (state.resourceList.isEmpty) {
                    return const Center(
                      child: NoSearchResultFound(
                          title: "Resources Not Found",
                          description:
                              "We couldn't find any resources matching your search. Please try different keywords.",
                          icon: Icons.search_off_sharp),
                    );
                  }
                  return Column(
                    children: [
                      SizedBox(
                        width: width,
                        child: Wrap(
                          spacing: 20,
                          runSpacing: 20,
                          children:
                              List.generate(state.resourceList.length, (index) {
                            final f = state.resourceList[index];
                            return Builder(
                              key: ValueKey(f
                                  .id), // assuming f.id is unique (resource id)
                              builder: (context) {
                                return ResourceContainer(
                                  width: isMobile ? width / 2.5 : width * 0.3,
                                  isLiking: state.isLiking,
                                  imageUrl: f.thumbnail,
                                  title: f.title,
                                  description: f.description,
                                  resourceType: f.resourceType,
                                  tags: f.tags,
                                  views: f.views,
                                  likes: f.likes,
                                  isLiked: f.isLiked,
                                  likeToggle: (isLiked) {
                                    context.read<ResourcesBloc>().add(
                                          ResourcesEvent.likeResource(
                                            resourceId: f.id,
                                            isLike: isLiked,
                                            resourceName: f.title,
                                          ),
                                        );
                                  },
                                  onViewResource: () {
                                    context.read<ResourcesBloc>().add(
                                          ResourcesEvent.viewResource(
                                              resourceId: f.id,
                                              resourceName: f.title),
                                        );
                                    if (f.link.isNotEmpty) {
                                      launchUrl(Uri.parse(f.link),
                                          mode: LaunchMode.externalApplication);
                                    } else if (f.fileUrl.isNotEmpty) {
                                      launchUrl(Uri.parse(f.fileUrl),
                                          mode: LaunchMode.externalApplication);
                                    } else {
                                      showCommonToast(
                                        context: context,
                                        message:
                                            "Something went wrong...: ${f.link};;",
                                        notificationType:
                                            ToastificationType.warning,
                                      );
                                    }
                                  },
                                );
                              },
                            );
                          }),
                        ),
                      ),
                      if (state.state.isUpdating) ...[
                        20.hx,
                        const Center(child: CommonLoader()),
                      ],
                    ],
                  );
                },
              )
            ],
          );
        },
      ),
    );
  }
}
