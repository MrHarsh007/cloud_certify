import 'package:cloud_certify/src/presentation/all_export.dart';
import 'package:cloud_certify/src/presentation/page/dashboard/dashboard_screen.dart';
import 'package:cloud_certify/src/presentation/page/leaderboard/leaderboard_screen.dart';
import 'package:cloud_certify/src/presentation/page/practice/practice_screen.dart';
import 'package:cloud_certify/src/presentation/page/resources/resource_screen.dart';
import 'package:cloud_certify/src/presentation/page/setting/setting_screen.dart';
import 'package:cloud_certify/src/presentation/page/signin/sign_in_screen.dart';
import 'package:cloud_certify/src/presentation/page/test_history/test_history_screen.dart';
import 'package:cloud_certify/src/presentation/page/test_history_details/test_history_details_screen.dart';
import 'package:cloud_certify/src/presentation/page/test_library/test_library.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import '../presentation/page/error/error_screen.dart';

GoRouter routerinit = GoRouter(
    initialLocation: AppRoutes.SPLASH_ROUTE_PATH,
    // navigatorKey: navigatorKey,
    routes: <RouteBase>[
      ///  =================================================================
      ///  ********************** Splash Route *****************************
      /// ==================================================================
      GoRoute(
        name: AppRoutes.SPLASH_ROUTE_NAME,
        path: AppRoutes.SPLASH_ROUTE_PATH,
        pageBuilder: (BuildContext context, GoRouterState state) {
          return buildPageWithDefaultTransition<void>(
            context: context,
            state: state,
            child: const SplashScreen(),
          );
        },
      ),

      ///  =================================================================
      ///  ********************** Onboarding Route *****************************
      /// ==================================================================
      GoRoute(
        name: AppRoutes.ONBOARDING_ROUTE_NAME,
        path: AppRoutes.ONBOARDING_ROUTE_PATH,
        pageBuilder: (BuildContext context, GoRouterState state) {
          return buildPageWithDefaultTransition<void>(
            context: context,
            state: state,
            child: const SignInScreen(),
          );
        },
      ),

      ///  =================================================================
      ///  ********************** Dashboard Route *****************************
      /// ==================================================================
      GoRoute(
        name: AppRoutes.DASHBOARD_ROUTE_NAME,
        path: AppRoutes.DASHBOARD_ROUTE_PATH,
        pageBuilder: (BuildContext context, GoRouterState state) {
          return buildPageWithDefaultTransition<void>(
            context: context,
            state: state,
            child: const DashboardScreen(),
          );
        },
      ),

      ///  =================================================================
      ///  ********************** Test Library Route *****************************
      /// ==================================================================
      GoRoute(
          name: AppRoutes.TEST_LIBRARY_ROUTE_NAME,
          path: AppRoutes.TEST_LIBRARY_ROUTE_PATH,
          pageBuilder: (BuildContext context, GoRouterState state) {
            return buildPageWithDefaultTransition<void>(
              context: context,
              state: state,
              child: const TestLibraryScreen(),
            );
          },
          routes: [
            ///  =================================================================
            ///  ********************** Practice Route *****************************
            /// ==================================================================
            GoRoute(
              name: AppRoutes.PRACTICE_ROUTE_NAME,
              path: AppRoutes.PRACTICE_ROUTE_PATH,
              pageBuilder: (BuildContext context, GoRouterState state) {
                final attemptId = state.pathParameters['attempt_id'] ?? "";
                final testId = state.pathParameters['test_id'] ?? "";
                final routeName = state.pathParameters['from'] ?? "";
                return buildPageWithDefaultTransition<void>(
                  context: context,
                  state: state,
                  child: PracticeScreen(
                    attemptId: attemptId,
                    testId: testId,
                    routeName: routeName,
                  ),
                );
              },
            ),
          ]),

      ///  =================================================================
      ///  ********************** Test History Route *****************************
      /// ==================================================================
      GoRoute(
          name: AppRoutes.TEST_HISTORY_ROUTE_NAME,
          path: AppRoutes.TEST_HISTORY_ROUTE_PATH,
          pageBuilder: (BuildContext context, GoRouterState state) {
            return buildPageWithDefaultTransition<void>(
              context: context,
              state: state,
              child: TestHistoryScreen(),
            );
          },
          routes: [
            ///  =================================================================
            ///  ****************** Test History Details Route *******************
            /// ==================================================================
            GoRoute(
                name: AppRoutes.TEST_HISTORY_DETAILS_ROUTE_NAME,
                path: AppRoutes.TEST_HISTORY_DETAILS_ROUTE_PATH,
                pageBuilder: (BuildContext context, GoRouterState state) {
                  final attemptId = state.pathParameters['attempt_id'] ?? "";

                  return buildPageWithDefaultTransition<void>(
                    context: context,
                    state: state,
                    child: TestHistoryDetailsScreen(
                      attemptId: attemptId,
                    ),
                  );
                }),
          ]),

      ///  =================================================================
      ///  ********************** Leaderboard Route *****************************
      /// ==================================================================
      GoRoute(
          name: AppRoutes.LEADERBOARD_ROUTE_NAME,
          path: AppRoutes.LEADERBOARD_ROUTE_PATH,
          pageBuilder: (BuildContext context, GoRouterState state) {
            return buildPageWithDefaultTransition<void>(
              context: context,
              state: state,
              child: LeaderboardScreen(),
            );
          }),

      ///  =================================================================
      ///  ********************** Resources Route *****************************
      /// ==================================================================
      GoRoute(
          name: AppRoutes.RESOURCES_ROUTE_NAME,
          path: AppRoutes.RESOURCES_ROUTE_PATH,
          pageBuilder: (BuildContext context, GoRouterState state) {
            return buildPageWithDefaultTransition<void>(
              context: context,
              state: state,
              child: ResourceScreen(),
            );
          }),

      ///  =================================================================
      ///  ********************** Settings Route *****************************
      /// ==================================================================

      GoRoute(
          name: AppRoutes.SETTINGS_ROUTE_NAME,
          path: AppRoutes.SETTINGS_ROUTE_PATH,
          pageBuilder: (BuildContext context, GoRouterState state) {
            return buildPageWithDefaultTransition<void>(
              context: context,
              state: state,
              child: SettingScreen(),
            );
          }),
    ],

    ///  =================================================================
    ///  ******************* Error Page Builder **************************
    /// ==================================================================
    errorPageBuilder: (context, state) {
      return const MaterialPage(child: ErrorScreen());
    },

    ///  =================================================================
    ///  ******************* Redirect If Needed **************************
    /// ==================================================================
    redirect: (context, state) {
      final auth = FirebaseAuth.instance.currentUser;
      if (auth == null) {
        return AppRoutes.ONBOARDING_ROUTE_PATH;
      }
      debugPrint('redirect: ${state.uri}');
      // Redirect because for captcha verify to browser then navigate to app

      return null;
    },
    observers: [RouteObserver()]);

CustomTransitionPage buildPageWithDefaultTransition<T>({
  required BuildContext context,
  required GoRouterState state,
  required Widget child,
}) {
  return CustomTransitionPage<T>(
    key: state.pageKey,
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return FadeTransition(
        opacity: animation,
        child: child,
      );
    },
    arguments: {
      'state': state,
    },
  );
}

class RouteObserver extends NavigatorObserver {
  @override
  void didPush(Route route, Route? previousRoute) {
    super.didPush(route, previousRoute);
    _logRoute(route);
  }

  @override
  void didPop(Route route, Route? previousRoute) {
    super.didPop(route, previousRoute);
    debugPrint("Route1: ${route.toString()}");
    if (previousRoute != null) {
      _logRoute(previousRoute);
    }
  }

  void _logRoute(Route route) {
    final args = route.settings.arguments as Map<String, dynamic>?;
    final state = args?['state'] as GoRouterState?;

    if (state != null) {
      final name = state.name ?? 'Unnamed';
      final path = state.uri.path;
      final queryParams = state.uri.queryParameters;

      debugPrint('✅ Navigated to: $name');
      debugPrint('📍 Path: $path');
      debugPrint('🔎 Query Params: $queryParams');

      firebaseAnalytics.logEvent(
        name: 'user_journey_navigation',
        parameters: {
          'name': name,
          'path': path,
          ...queryParams.map((k, v) => MapEntry('query_$k', v)),
        },
      );
    } else {
      debugPrint('⚠️ Navigated to: Unknown');
    }
  }
}

FirebaseAnalytics firebaseAnalytics = FirebaseAnalytics.instance;
