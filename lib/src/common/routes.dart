// ignore_for_file: constant_identifier_names

class AppRoutes {
  // Splash routes
  static const String SPLASH_ROUTE_NAME = 'splash';
  static const String SPLASH_ROUTE_PATH = '/';

  // Authentications routes
  static const String ONBOARDING_ROUTE_NAME = 'onboarding';
  static const String ONBOARDING_ROUTE_PATH = '/onboarding';

  // Dashboard routes
  static const String DASHBOARD_ROUTE_NAME = 'dashboard';
  static const String DASHBOARD_ROUTE_PATH = '/dashboard';

  // Test Library routes
  static const String TEST_LIBRARY_ROUTE_NAME = 'test_library';
  static const String TEST_LIBRARY_ROUTE_PATH = '/test_library';

  // Test History routes
  static const String TEST_HISTORY_ROUTE_NAME = 'test_history';
  static const String TEST_HISTORY_ROUTE_PATH = '/test_history';

  // Leaderboard routes
  static const String LEADERBOARD_ROUTE_NAME = 'leaderboard';
  static const String LEADERBOARD_ROUTE_PATH = '/leaderboard';

  // Resource routes
  static const String RESOURCES_ROUTE_NAME = 'resources';
  static const String RESOURCES_ROUTE_PATH = '/resources';

  // Settings routes
  static const String SETTINGS_ROUTE_NAME = 'setting';
  static const String SETTINGS_ROUTE_PATH = '/setting';

  // Practice routes
  static const String PRACTICE_ROUTE_NAME =
      'practice/:attempt_id/:test_id/:from';
  static const String PRACTICE_ROUTE_PATH =
      '/practice/:attempt_id/:test_id/:from';

  // Test History Details routes
  static const String TEST_HISTORY_DETAILS_ROUTE_NAME =
      'test_history_details/:attempt_id';
  static const String TEST_HISTORY_DETAILS_ROUTE_PATH =
      '/test_history_details/:attempt_id';
}


// import 'dart:js' as js;

// // ... in your _onQuizComplete function ...

// js.context.callMethod('history.pushState', ['/', '', null]); //Replaces current history entry
// js.context.callMethod('history.replaceState', ['/', '', null]); //Removes the current history entry
// context.go('/home'); //Navigate to the home screen