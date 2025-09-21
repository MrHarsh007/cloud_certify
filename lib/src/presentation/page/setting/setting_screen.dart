import 'package:cloud_certify/src/presentation/all_export.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  void initState() {
    context
        .read<SidePanelBloc>()
        .add(SidePanelEvent.changeScreenName("Setting"));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SideBarScreen(
        index: 5,
        secondScreen:
            BlocBuilder<AuthenticatorWatcherBloc, AuthenticatorWatcherState>(
          buildWhen: (previous, current) => previous.state != current.state,
          builder: (context, state) {
            if (state.state == UserState.loading) {
              return ListView(
                children: [
                  20.hx,
                  CommonLoader(),
                ],
              );
            }
            return Column(
              children: [
                Flexible(
                  child: ListView(
                    padding:
                        const EdgeInsets.only(top: 16, right: 16, left: 16),
                    shrinkWrap: true,
                    children: [
                      UserProfileWidget(),
                      20.hx,
                      AboutWidget(),
                      20.hx,
                    ],
                  ),
                ),
                _buildFooter(),
              ],
            );
          },
        ));
  }

  Widget _buildFooter() {
    return Container(
      decoration: CommonUtilities.commonBoxDecoration.copyWith(
        color: AppColor.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(0), topRight: Radius.circular(0)),
      ),
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Center(
        child: Column(
          children: [
            const Text(
              '© 2025 Cloud Certify. All rights reserved.',
              style: TextStyle(
                  color: AppColor.primarySecondaryColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
