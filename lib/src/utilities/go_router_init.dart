import 'package:cloud_certify/src/common/routes.dart';
import 'package:cloud_certify/src/presentation/deffered.dart';

// Keep Splash/SignIn/Error eager so the app boots instantly:
import 'package:cloud_certify/src/presentation/page/signin/sign_in_screen.dart';
import 'package:cloud_certify/src/presentation/page/error/error_screen.dart';

// Defer the rest:
import 'package:cloud_certify/src/presentation/page/dashboard/dashboard_screen.dart'
    deferred as dashboard;
import 'package:cloud_certify/src/presentation/page/leaderboard/leaderboard_screen.dart'
    deferred as leaderboard;
import 'package:cloud_certify/src/presentation/page/practice/practice_screen.dart'
    deferred as practice;
import 'package:cloud_certify/src/presentation/page/resources/resource_screen.dart'
    deferred as resources;
import 'package:cloud_certify/src/presentation/page/setting/setting_screen.dart'
    deferred as setting;
import 'package:cloud_certify/src/presentation/page/splash/splash_screen.dart';
import 'package:cloud_certify/src/presentation/page/test_history/test_history_screen.dart'
    deferred as history;
import 'package:cloud_certify/src/presentation/page/test_history_details/test_history_details_screen.dart'
    deferred as history_detail;
import 'package:cloud_certify/src/presentation/page/test_library/test_library.dart'
    deferred as testlib;

import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

GoRouter routerinit = GoRouter(
  initialLocation: AppRoutes.SPLASH_ROUTE_PATH,
  routes: <RouteBase>[
    /// ======================= Splash =======================
    GoRoute(
      name: AppRoutes.SPLASH_ROUTE_NAME,
      path: AppRoutes.SPLASH_ROUTE_PATH,
      pageBuilder: (BuildContext context, GoRouterState state) {
        return buildPageWithDefaultTransition<void>(
          context: context,
          state: state,
          // Splash is eager (no deferred import)
          child: const SplashScreen(),
        );
      },
    ),

    /// ===================== Onboarding =====================
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

    /// ===================== Dashboard ======================
    GoRoute(
      name: AppRoutes.DASHBOARD_ROUTE_NAME,
      path: AppRoutes.DASHBOARD_ROUTE_PATH,
      pageBuilder: (BuildContext context, GoRouterState state) {
        return buildPageWithDefaultTransition<void>(
          context: context,
          state: state,
          child: DeferredScreen(
            loadLibrary: dashboard.loadLibrary,
            builder: () => dashboard.DashboardScreen(),
          ),
        );
      },
    ),

    /// ==================== Test Library ====================
    GoRoute(
      name: AppRoutes.TEST_LIBRARY_ROUTE_NAME,
      path: AppRoutes.TEST_LIBRARY_ROUTE_PATH,
      pageBuilder: (BuildContext context, GoRouterState state) {
        return buildPageWithDefaultTransition<void>(
          context: context,
          state: state,
          child: DeferredScreen(
            loadLibrary: testlib.loadLibrary,
            builder: () => testlib.TestLibraryScreen(),
          ),
        );
      },
      routes: [
        /// ===================== Practice =====================
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
              child: DeferredScreen(
                loadLibrary: practice.loadLibrary,
                builder: () => practice.PracticeScreen(
                  attemptId: attemptId,
                  testId: testId,
                  routeName: routeName,
                ),
              ),
            );
          },
        ),
      ],
    ),

    /// ==================== Test History ====================
    GoRoute(
      name: AppRoutes.TEST_HISTORY_ROUTE_NAME,
      path: AppRoutes.TEST_HISTORY_ROUTE_PATH,
      pageBuilder: (BuildContext context, GoRouterState state) {
        return buildPageWithDefaultTransition<void>(
          context: context,
          state: state,
          child: DeferredScreen(
            loadLibrary: history.loadLibrary,
            builder: () => history.TestHistoryScreen(),
          ),
        );
      },
      routes: [
        /// ============= Test History Details =================
        GoRoute(
          name: AppRoutes.TEST_HISTORY_DETAILS_ROUTE_NAME,
          path: AppRoutes.TEST_HISTORY_DETAILS_ROUTE_PATH,
          pageBuilder: (BuildContext context, GoRouterState state) {
            final attemptId = state.pathParameters['attempt_id'] ?? "";
            return buildPageWithDefaultTransition<void>(
              context: context,
              state: state,
              child: DeferredScreen(
                loadLibrary: history_detail.loadLibrary,
                builder: () => history_detail.TestHistoryDetailsScreen(
                  attemptId: attemptId,
                ),
              ),
            );
          },
        ),
      ],
    ),

    /// ===================== Leaderboard ====================
    GoRoute(
      name: AppRoutes.LEADERBOARD_ROUTE_NAME,
      path: AppRoutes.LEADERBOARD_ROUTE_PATH,
      pageBuilder: (BuildContext context, GoRouterState state) {
        return buildPageWithDefaultTransition<void>(
          context: context,
          state: state,
          child: DeferredScreen(
            loadLibrary: leaderboard.loadLibrary,
            builder: () => leaderboard.LeaderboardScreen(),
          ),
        );
      },
    ),

    /// ====================== Resources =====================
    GoRoute(
      name: AppRoutes.RESOURCES_ROUTE_NAME,
      path: AppRoutes.RESOURCES_ROUTE_PATH,
      pageBuilder: (BuildContext context, GoRouterState state) {
        return buildPageWithDefaultTransition<void>(
          context: context,
          state: state,
          child: DeferredScreen(
            loadLibrary: resources.loadLibrary,
            builder: () => resources.ResourceScreen(),
          ),
        );
      },
    ),

    /// ======================= Settings =====================
    GoRoute(
      name: AppRoutes.SETTINGS_ROUTE_NAME,
      path: AppRoutes.SETTINGS_ROUTE_PATH,
      pageBuilder: (BuildContext context, GoRouterState state) {
        return buildPageWithDefaultTransition<void>(
          context: context,
          state: state,
          child: DeferredScreen(
            loadLibrary: setting.loadLibrary,
            builder: () => setting.SettingScreen(),
          ),
        );
      },
    ),
  ],

  /// =================== Error Page Builder =================
  errorPageBuilder: (context, state) {
    return const MaterialPage(child: ErrorScreen());
  },

  /// =================== Redirect If Needed =================
  redirect: (context, state) {
    final auth = FirebaseAuth.instance.currentUser;
    if (auth == null) {
      return AppRoutes.ONBOARDING_ROUTE_PATH;
    }
    debugPrint('redirect: ${state.uri}');
    return null;
  },

  observers: [RouteObserver()],
);

CustomTransitionPage buildPageWithDefaultTransition<T>({
  required BuildContext context,
  required GoRouterState state,
  required Widget child,
}) {
  return CustomTransitionPage<T>(
    key: state.pageKey,
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return FadeTransition(opacity: animation, child: child);
    },
    arguments: {'state': state},
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
