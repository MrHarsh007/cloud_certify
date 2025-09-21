import 'package:cloud_certify/src/presentation/all_export.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutWidget extends StatefulWidget {
  const AboutWidget({super.key});

  @override
  State<AboutWidget> createState() => _AboutWidgetState();
}

class _AboutWidgetState extends State<AboutWidget> {
  Future<PackageInfo> _getPackageInfo() => PackageInfo.fromPlatform();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: CommonUtilities.commonBoxDecoration,
      padding: const EdgeInsets.only(
          top: BOX_PADDING, right: BOX_PADDING, left: BOX_PADDING),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColor.primarySecondaryColor,
                ),
                child: Icon(Icons.info_outline, color: Colors.white, size: 22),
              ),
              10.wx,
              Text(
                "About Cloud Certify",
                style: context.textTheme.titleLarge
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const Divider(height: 20),
          Text("Release Notes",
              style: context.textTheme.titleMedium
                  ?.copyWith(fontWeight: FontWeight.w600)),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 12),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.blue.shade50,
              borderRadius: BorderRadius.circular(SMALL_RADIUS),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(children: [
                  Container(
                      height: 50,
                      width: 50,
                      alignment: Alignment.center,
                      decoration: CommonUtilities.commonBoxDecoration
                          .copyWith(color: AppColor.primarySecondaryColor),
                      child: Icon(Icons.code, color: Colors.white, size: 20)),
                  SizedBox(width: 8),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FutureBuilder(
                          future: _getPackageInfo(),
                          builder: (context, snapshot) {
                            final version = snapshot.hasData
                                ? snapshot.data!.version
                                : "Loading...";
                            final buildNumber = snapshot.hasData
                                ? snapshot.data!.buildNumber
                                : "";

                            return Text("CloudCertify v$version ($buildNumber)",
                                style: context.textTheme.titleMedium);
                          }),
                      Text("Last Updated: May 1, 2025",
                          style: context.textTheme.bodyMedium),
                    ],
                  ),
                ]),
                const SizedBox(height: 15),
                const Text("Release Notes:",
                    style: TextStyle(fontWeight: FontWeight.w600)),
                const SizedBox(height: 5),
                BulletListWidget(
                  items: releaseNotes,
                ),
              ],
            ),
          ),
          const Divider(height: 20),
          const SizedBox(height: 10),
          Text("About Us",
              style: context.textTheme.titleMedium
                  ?.copyWith(fontWeight: FontWeight.w600)),
          Markdown(
            shrinkWrap: true,
            data: aboutUs,
            onTapLink: (text, href, title) => launchUrl(
              Uri.parse(href ?? ""),
              mode: LaunchMode.externalApplication,
            ),

            styleSheet: markdownStyleSheet.copyWith(
              p: context.textTheme.bodyMedium?.copyWith(
                fontSize: 14,
              ),
              a: context.textTheme.bodyMedium?.copyWith(
                  color: AppColor.primarySecondaryColor,
                  fontWeight: FontWeight.w500),
            ),
            // style: context.textTheme.bodyMedium,
          ),
          const Divider(height: 20),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("Made with",
                  style: context.textTheme.titleMedium
                      ?.copyWith(fontWeight: FontWeight.w600)),
              5.wx,
              Icon(Icons.favorite, color: Colors.red, size: 16)
            ],
          ),
          const SizedBox(height: 10),
          IntrinsicHeight(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(BOX_PADDING / 1.5),
                    decoration: CommonUtilities.commonBoxDecoration.copyWith(
                        border: Border.all(color: Colors.grey.shade400)),
                    child: Center(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const FlutterLogo(),
                          10.wx,
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text("Front-End"),
                                Text(
                                  "Flutter (Built using Flutter for seamless cross-platform performance)",
                                  style: context.textTheme.bodyMedium
                                      ?.copyWith(fontWeight: FontWeight.w600),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 30),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(BOX_PADDING / 1.5),
                    decoration: CommonUtilities.commonBoxDecoration.copyWith(
                        border: Border.all(color: Colors.grey.shade400)),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SvgPicture.asset(
                              Assets.svg.fastAPI,
                              height: 25,
                              width: 25,
                            ),
                            5.hx,
                            SvgPicture.asset(
                              Assets.svg.firebase,
                              height: 25,
                              width: 25,
                            ),
                          ],
                        ),
                        10.wx,
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text("Back-End"),
                              Text(
                                "FastAPI, Firebase (FastAPI for blazing-fast APIs and Firebase for secure authentication & real-time data)",
                                style: context.textTheme.bodyMedium
                                    ?.copyWith(fontWeight: FontWeight.w600),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          10.hx,
          const Divider(height: 20),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("We’d love to hear from you:",
                  style: context.textTheme.titleMedium
                      ?.copyWith(fontWeight: FontWeight.w600)),
              5.wx,
              InkWell(
                onTap: () => launchUrl(
                  Uri.parse(
                    "https://mail.google.com/mail/?view=cm&fs=1&to=Porwalharsh007@gmail.com",
                  ),
                  mode: LaunchMode.externalApplication,
                ),
                child: Text("Porwalharsh007@gmail.com",
                    style: context.textTheme.bodyMedium?.copyWith(
                      color: AppColor.primarySecondaryColor,
                      decoration: TextDecoration.underline,
                      decorationColor: AppColor.primarySecondaryColor,
                    )),
              ),
              VerticalDivider(),
              InkWell(
                onTap: () => launchUrl(
                  Uri.parse(
                    "https://mail.google.com/mail/?view=cm&fs=1&to=yashrai1224@gmail.com",
                  ),
                  mode: LaunchMode.externalApplication,
                ),
                child: Text("yashrai1224@gmail.com",
                    style: context.textTheme.bodyMedium?.copyWith(
                      color: AppColor.primarySecondaryColor,
                      decoration: TextDecoration.underline,
                      decorationColor: AppColor.primarySecondaryColor,
                    )),
              ),
            ],
          ),
          const SizedBox(height: 20),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}

class BulletListWidget extends StatelessWidget {
  final List<String> items;
  final double spacing;
  final double bulletSize;
  final Color? bulletColor;
  final TextStyle? textStyle;

  const BulletListWidget({
    super.key,
    required this.items,
    this.spacing = 4.0,
    this.bulletSize = 6.0,
    this.bulletColor,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    final defaultStyle = Theme.of(context).textTheme.bodyMedium;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: items
          .map(
            (item) => Padding(
              padding: EdgeInsets.only(bottom: spacing),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 6),
                    width: bulletSize,
                    height: bulletSize,
                    decoration: BoxDecoration(
                      color: bulletColor ?? Colors.black,
                      shape: BoxShape.circle,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      item,
                      style: textStyle ?? defaultStyle,
                    ),
                  ),
                ],
              ),
            ),
          )
          .toList(),
    );
  }
}
