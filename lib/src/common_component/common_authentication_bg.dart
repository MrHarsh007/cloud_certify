import '../../src/presentation/all_export.dart';

class CommonAuthenticationBackground extends StatelessWidget {
  final Widget child;
  const CommonAuthenticationBackground({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    final isMobile = ResponsiveBreakpoints.of(context).isMobile ||
        ResponsiveBreakpoints.of(context).isTablet;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Row(
          children: [
            Expanded(
              flex: 1,
              child: Stack(
                children: [
                  Positioned(
                      left: -50,
                      bottom: -250,
                      child: Image.asset(Assets.png.splashCircle.path,
                          height: 500, fit: BoxFit.fill)),
                  Positioned(
                      right: 20,
                      bottom: 0,
                      child: Image.asset(Assets.png.splashMain.path,
                          height: MediaQuery.sizeOf(context).height - 200,
                          fit: BoxFit.fill)),
                  Positioned(top: 40, left: 40, child: CommonAppNameLogo()

                      // Image.asset(
                      //   Assets.png.logo.path,
                      //   scale: 1.5,
                      // )

                      ),
                  if (isMobile) _child(context, isMobile)
                ],
              ),
            ),
            if (!isMobile)
              Expanded(
                  flex: 1,
                  child: Stack(
                    children: [
                      Positioned(
                          right: -50,
                          top: -250,
                          child: Image.asset(Assets.png.splashCircle.path,
                              height: 500, fit: BoxFit.fill)),
                      Positioned(
                          right: -50,
                          bottom: -20,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(RADIUS),
                            child: Image.asset(
                              Assets.png.splashBottom.path,
                              height: 150,
                              width: MediaQuery.sizeOf(context).width * 0.5,
                              fit: BoxFit.fill,
                            ),
                          )),
                      _child(context, isMobile)
                    ],
                  ))
          ],
        ));
  }

  Widget _child(BuildContext context, bool isMobile) {
    return Center(
      child: Container(
        constraints: BoxConstraints(
          maxWidth: isMobile
              ? MediaQuery.sizeOf(context).width * 0.6
              : MediaQuery.sizeOf(context).width * 0.4,
          maxHeight: isMobile
              ? MediaQuery.sizeOf(context).width * 0.7
              : MediaQuery.sizeOf(context).height * 0.8,
        ),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black12),
            color: Colors.white,
            borderRadius: BorderRadius.circular(RADIUS)),
        child: child,
      ),
    );
  }
}
