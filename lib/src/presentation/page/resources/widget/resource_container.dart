import 'package:cloud_certify/src/presentation/all_export.dart';
import 'package:flutter/gestures.dart';

class ResourceContainer extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String description;
  final String resourceType;
  final List<String> tags;
  final int views;
  final int likes;
  final double height;
  final double width;
  final bool isLiked;
  final bool isLiking;

  final VoidCallback onViewResource;
  final Function(bool isLiked)? likeToggle;

  const ResourceContainer({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.description,
    required this.resourceType,
    required this.tags,
    required this.views,
    required this.likes,
    this.height = 460,
    this.width = 400,
    required this.isLiked,
    required this.onViewResource,
    required this.isLiking,
    this.likeToggle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: CommonUtilities.commonBoxDecoration,
      height: height,
      width: width,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Column(
            children: [
              Expanded(
                flex: 2,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(RADIUS),
                    topRight: Radius.circular(RADIUS),
                  ),
                  child: imageUrl.isEmpty
                      ? CommonAppNameLogo()
                      : CommonAssets.getGCSNetworkImage(
                          imageUrl,
                          defaultImage: Assets.png.logo.path,
                          width: width,
                          alignment: Alignment.topCenter,
                          fit: BoxFit.fitWidth,
                        ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Padding(
                  padding: EdgeInsets.all(BOX_PADDING),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: context.textTheme.titleLarge?.copyWith(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      5.hx,
                      Text(
                        description,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: context.textTheme.bodyMedium,
                      ),
                      10.hx,
                      SingleChildScrollView(
                        primary: false,
                        dragStartBehavior: DragStartBehavior.down,
                        scrollDirection: Axis.horizontal,
                        physics:
                            const ClampingScrollPhysics(), // <--- Important
                        child: Row(
                          spacing: 10,
                          children: tags
                              .map((tag) =>
                                  _buildChip(text: tag, context: context))
                              .toList(),
                        ),
                      ),
                      10.hx,
                      Row(
                        children: [
                          Icon(
                            Icons.remove_red_eye_outlined,
                            color: AppColor.primaryColor,
                            size: 20,
                          ),
                          Text(
                            " $views Views",
                            style: context.textTheme.titleSmall?.copyWith(
                              color: AppColor.primaryColor,
                            ),
                          ),
                          20.wx,
                          InkWell(
                            onTap: isLiking
                                ? null
                                : () {
                                    if (likeToggle != null) {
                                      likeToggle!(!isLiked);
                                    }
                                  },
                            child: Tooltip(
                              message:
                                  isLiked ? "Click to Unlike" : "Click to Like",
                              preferBelow: false,
                              child: AnimatedSwitcher(
                                duration: Duration(milliseconds: 300),
                                transitionBuilder: (Widget child,
                                    Animation<double> animation) {
                                  return ScaleTransition(
                                      scale: animation, child: child);
                                },
                                child: Icon(
                                  isLiked
                                      ? Icons.favorite
                                      : Icons.favorite_border_outlined,
                                  key: ValueKey<bool>(
                                      isLiked), // important for AnimatedSwitcher
                                  size: 20,
                                  color: AppColor.red,
                                ),
                              ),
                            ),
                          ),
                          Text(
                            " $likes Likes",
                            style: context.textTheme.titleSmall?.copyWith(
                              color: AppColor.red,
                            ),
                          ),
                        ],
                      ),
                      14.hx,
                      CustomElevatedButton(
                        radius: SMALL_RADIUS,
                        height: 45,
                        onTap: onViewResource,
                        label: "View Resource",
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
              top: 20,
              right: 20,
              child: Tooltip(
                message: resourceType.capitalize ?? "",
                child: Container(
                  padding: EdgeInsets.all(BOX_PADDING / 2),
                  decoration:
                      CommonUtilities.commonBoxDecoration.copyWith(boxShadow: [
                    BoxShadow(
                      color: AppColor.primaryColor.withOpacity(0.2),
                      blurRadius: 5,
                      spreadRadius: 1,
                      offset: const Offset(0, 2),
                    ),
                  ]),
                  child: SvgPicture.asset(getIconFromType(resourceType),
                      height: 24, width: 24),
                ),
              ))
        ],
      ),
    );
  }

  Widget _buildChip({required String text, required BuildContext context}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: AppColor.primaryColor.withOpacity(0.1)),
      child: Text(
        text.capitalize ?? "",
        style: context.textTheme.titleSmall?.copyWith(
            fontWeight: FontWeight.w500, color: AppColor.primaryColor),
      ),
    );
  }

  String getIconFromType(String type) {
    switch (type) {
      case "video":
        return Assets.svg.playButton;
      case "link":
        return Assets.svg.link;
      case "pdf":
        return Assets.svg.pdf;
      case "repository":
        return Assets.svg.github;
      default:
        return Assets.svg.link;
    }
  }
}
