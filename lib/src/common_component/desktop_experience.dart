import 'package:cloud_certify/src/presentation/all_export.dart';

class DesktopExperienceWidget extends StatelessWidget {
  const DesktopExperienceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            width: double.infinity,
            child: RichText(
                text: TextSpan(children: [
              TextSpan(
                text: 'Cloud',
                style: context.textTheme.headlineSmall?.copyWith(
                    color: AppColor.primarySecondaryColor,
                    fontWeight: FontWeight.w600),
              ),
              TextSpan(
                text: 'Certify',
                style: context.textTheme.headlineSmall?.copyWith(
                    color: AppColor.black, fontWeight: FontWeight.w600),
              ),
            ])),
          ),
          SizedBox(height: 20),
          Center(
            child: Card(
              margin: const EdgeInsets.all(32),
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.desktop_mac, size: 50, color: Colors.blueAccent),
                    const SizedBox(height: 20),
                    Text(
                      "Desktop Experience Recommended",
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    const SizedBox(height: 15),
                    Text(
                      "CloudCertify is best experienced on desktop or tablet devices (screen width > 768px). A larger screen ensures smoother navigation, better performance insights, and a complete certification prep experience.",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.grey[700]),
                    ),

                    const SizedBox(height: 25),

                    // // Feature List
                    // _featureItem(
                    //     Icons.analytics,
                    //     "Enhanced Analytics",
                    //     "Our detailed performance dashboards work best on larger screens",
                    //     Colors.greenAccent),
                    // const SizedBox(height: 12),
                    // _featureItem(
                    //     Icons.menu_book,
                    //     "Study Materials",
                    //     "Complex certification materials are easier to navigate on desktop",
                    //     Colors.blueAccent),
                    // const SizedBox(height: 12),
                    // _featureItem(
                    //     Icons.desktop_windows,
                    //     "Exam Simulation",
                    //     "Realistic GCP exam environment requires desktop view",
                    //     Colors.purpleAccent),

                    Text(
                      "We're working on improving our mobile experience. For now, the desktop version offers the complete feature set",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Widget _featureItem(
  //     IconData icon, String title, String description, Color color) {
  //   return Row(
  //     crossAxisAlignment: CrossAxisAlignment.start,
  //     children: [
  //       CircleAvatar(
  //         radius: 16,
  //         backgroundColor: color.withOpacity(0.2),
  //         child: Icon(icon, color: color, size: 18),
  //       ),
  //       const SizedBox(width: 12),
  //       Expanded(
  //         child: Column(
  //           crossAxisAlignment: CrossAxisAlignment.start,
  //           children: [
  //             Text(title, style: const TextStyle(fontWeight: FontWeight.w600)),
  //             const SizedBox(height: 4),
  //             Text(
  //               description,
  //               style: TextStyle(fontSize: 13, color: Colors.grey[600]),
  //             ),
  //           ],
  //         ),
  //       )
  //     ],
  //   );
  // }
}
