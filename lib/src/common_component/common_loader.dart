import 'package:cloud_certify/src/presentation/all_export.dart';

class CommonLoader extends StatelessWidget {
  const CommonLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return LoadingAnimationWidget.beat(color: AppColor.primaryColor, size: 30);
  }
}
