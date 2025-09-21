import 'package:wiredash/wiredash.dart';

import '../../all_export.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    context
        .read<AuthenticatorWatcherBloc>()
        .add(AuthenticatorWatcherEvent.authCheckRequest());
    super.initState();
  }

  void navigateToOnboarding() async {
    await Future.delayed(Duration(seconds: 1));
    final user = FirebaseAuth.instance.currentUser;
    if (mounted) {
      if (user == null) {
        GoRouter.of(context).goNamed(AppRoutes.ONBOARDING_ROUTE_NAME);
      } else {
        GoRouter.of(context).goNamed(AppRoutes.DASHBOARD_ROUTE_NAME);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.blue.withOpacity(0.2),
      body: BlocListener<AuthenticatorWatcherBloc, AuthenticatorWatcherState>(
        listener: (context, state) => authCheckRequest(context, state),
        child: Stack(
          fit: StackFit.expand,
          alignment: Alignment.center,

          // crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Positioned(
                left: 0,
                bottom: 0,
                right: 0,
                child: Image.asset(Assets.png.splashMain.path,
                    height: MediaQuery.sizeOf(context).height - 200,
                    fit: BoxFit.contain)),
            Positioned(
                right: -250,
                bottom: -300,
                child: Image.asset(Assets.png.splashCircle.path,
                    height: MediaQuery.sizeOf(context).height - 200,
                    fit: BoxFit.contain)),
            // Positioned(
            //     left: -150,
            //     bottom: -300,
            //     child: Image.asset(Assets.png.splashCircle.path,
            //         height: MediaQuery.sizeOf(context).height - 200,
            //         fit: BoxFit.contain)),
            Positioned(
                left: -250,
                top: -300,
                child: Image.asset(Assets.png.splashCircle.path,
                    height: MediaQuery.sizeOf(context).height - 200,
                    fit: BoxFit.contain)),
            // Positioned(
            //     right: -150,
            //     top: -300,
            //     child: Image.asset(Assets.png.splashCircle.path,
            //         height: MediaQuery.sizeOf(context).height - 200,
            //         fit: BoxFit.contain)),
            Positioned(
                top: 0,
                bottom: 0,
                right: 0,
                left: 0,
                child: Column(
                  children: [
                    CommonAppNameLogo(),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}

void authCheckRequest(BuildContext context, AuthenticatorWatcherState state) {
  if (state.state == UserState.authenticated) {
    Wiredash.of(context).setUserProperties(
        userEmail: state.usermodel?.email, userId: state.usermodel?.uid);
    GoRouter.of(context).goNamed(AppRoutes.DASHBOARD_ROUTE_NAME);
  } else if (state.state == UserState.completeProfile) {
    GoRouter.of(context).goNamed(AppRoutes.ONBOARDING_ROUTE_NAME);
  } else if (state.state == UserState.unauthenticated) {
    GoRouter.of(context).goNamed(AppRoutes.ONBOARDING_ROUTE_NAME);
  } else if (state.state == UserState.error) {
    GoRouter.of(context).goNamed(AppRoutes.ONBOARDING_ROUTE_NAME);
  }
}
