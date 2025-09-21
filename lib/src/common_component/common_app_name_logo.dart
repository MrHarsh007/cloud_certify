import '../presentation/all_export.dart';

class CommonAppNameLogo extends StatelessWidget {
  const CommonAppNameLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(Assets.png.logo.path, height: 50, fit: BoxFit.fill),
        10.wx,
        RichText(
            text: TextSpan(children: [
          TextSpan(
            text: 'Cloud',
            style: context.textTheme.headlineSmall?.copyWith(
                color: AppColor.primarySecondaryColor,
                fontWeight: FontWeight.w600),
          ),
          TextSpan(
            text: 'Certify',
            style: context.textTheme.headlineSmall
                ?.copyWith(color: AppColor.black, fontWeight: FontWeight.w600),
          ),
        ])),
      ],
    );
  }
}
