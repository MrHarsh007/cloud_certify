import 'package:cloud_certify/src/common_component/desktop_experience.dart';
import 'package:cloud_certify/src/presentation/all_export.dart';
import 'package:cloud_certify/src/presentation/bloc/imageuploader/image_uploader_bloc.dart';
import 'package:cloud_certify/src/presentation/bloc/leaderboard/leaderboard_bloc.dart';
import 'package:cloud_certify/src/presentation/bloc/resources/resources_bloc.dart';
import 'package:cloud_certify/src/presentation/bloc/test_history_details/test_history_details_bloc.dart';
import 'package:cloud_certify/src/presentation/bloc/update_pass_delete_account/update_pass_delete_account_bloc.dart';
import 'package:cloud_certify/src/presentation/bloc/update_profile/update_profile_bloc.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get_storage/get_storage.dart';
import 'package:wiredash/wiredash.dart';
import 'firebase_options.dart';
import 'src/helper/shared_pref_helper.dart';
import 'src/utilities/app_bloc_observer.dart';
import 'src/utilities/extensions/translation/app_localization.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;
import 'src/utilities/go_router_init.dart';
import 'src/utilities/logger.dart';
import 'src/utilities/theme/app_themes.dart';
import 'injection/injection.dart' as di;

void main() async {
  // Make sure bindings are initialized before any async calls
  WidgetsFlutterBinding.ensureInitialized();

  logger.runLogging(
    () async {
      await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform,
      );
      SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.light,
      ));
      Bloc.transformer = bloc_concurrency.sequential();
      Bloc.observer = const AppBlocObserver();
      FirebaseAnalytics.instance.setAnalyticsCollectionEnabled(true);

      // Initialize other dependencies
      di.configureDependencies();
      await SharedPreferenceHelper().init();
      await GetStorage.init();

      // Now run the app in the same zone
      runApp(const MyApp());
    },
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final FocusNode _focusNode = FocusNode();
  final MaterialTextSelectionControls _materialTextSelectionControls =
      MaterialTextSelectionControls();

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => di.locator<AuthenticationBloc>()),
        BlocProvider(create: (_) => di.locator<AuthenticatorWatcherBloc>()),
        BlocProvider(create: (_) => di.locator<SidePanelBloc>()),

        // Dashbaord Bloc
        BlocProvider(create: (_) => di.locator<StreakBloc>()),
        BlocProvider(create: (_) => di.locator<RecentActivityBloc>()),
        BlocProvider(create: (_) => di.locator<PersonalizedCoursesBloc>()),

        // Test Blocs
        BlocProvider(create: (_) => di.locator<GetTestBloc>()),
        BlocProvider(create: (_) => di.locator<StarStopSumbitTestBloc>()),
        BlocProvider(create: (_) => di.locator<TestDetailsBloc>()),

        // Test History
        BlocProvider(create: (_) => di.locator<TestHistoryBloc>()),
        BlocProvider(create: (_) => di.locator<TestHistoryDetailsBloc>()),

        // Leaderboard
        BlocProvider(create: (_) => di.locator<LeaderboardBloc>()),

        // Resources
        BlocProvider(create: (_) => di.locator<ResourcesBloc>()),

        // Image Uploader
        BlocProvider(create: (_) => di.locator<ImageUploaderBloc>()),

        // Upadet Profile
        BlocProvider(create: (_) => di.locator<UpdateProfileBloc>()),
        BlocProvider(create: (_) => di.locator<UpdatePassDeleteAccountBloc>()),
      ],
      child: Wiredash(
        projectId: 'cloud-certify-aixkb0l',
        secret: 'y0IyYlp4Kf-6O-zEPFUfpJd6GY6NFIQl',
        child: MaterialApp.router(
          debugShowCheckedModeBanner: false,
          title: APP_NAME,
          builder: (context, child) {
            final isMobile = MediaQuery.of(context).size.width <= 766;
            return isMobile
                ? Center(child: DesktopExperienceWidget())
                : ResponsiveBreakpoints.builder(
                    breakpoints: [
                        const Breakpoint(start: 0, end: 450, name: MOBILE),
                        const Breakpoint(start: 451, end: 1024, name: TABLET),
                        const Breakpoint(start: 1024, end: 1920, name: DESKTOP),
                        const Breakpoint(
                            start: 1921, end: double.infinity, name: '4K'),
                      ],
                    child: Overlay(
                      initialEntries: [
                        OverlayEntry(
                          builder: (context) => SelectableRegion(
                            focusNode: _focusNode,
                            selectionControls: _materialTextSelectionControls,
                            child: child ?? const SizedBox(),
                          ),
                        ),
                      ],
                    ));
          },
          theme: AppThemes.lightTheme,
          darkTheme: AppThemes.darkTheme,
          themeMode: ThemeMode.light,
          routerConfig: routerinit,
          locale: const Locale('en', 'US'),
          localeResolutionCallback: (locale, supportedLocales) {
            // Update the global locale whenever the locale changes
            if (locale != null) {
              GlobalAppLocale.setLocale(locale);
            }
            return locale;
          },
          supportedLocales: const [
            Locale('en', 'US'),
            Locale('fr', 'FR'),
          ],
          localizationsDelegates: const [
            AppLocalizations.delegate,
          ],
        ),
      ),
    );
  }
}
