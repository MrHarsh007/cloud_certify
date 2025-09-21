import 'package:cloud_certify/src/utilities/go_router_init.dart';
import 'package:wiredash/wiredash.dart';

import './././extensions/string_extension.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'logger.dart';

/// [BlocObserver] which logs all bloc state changes, errors and events.
class AppBlocObserver extends BlocObserver {
  /// [BlocObserver] which logs all bloc state changes, errors and events.
  const AppBlocObserver();
  @override
  void onTransition(
    Bloc<Object?, Object?> bloc,
    Transition<Object?, Object?> transition,
  ) {
    final buffer = StringBuffer()
      ..write('Bloc: ${bloc.runtimeType} | ')
      ..writeln('${transition.event.runtimeType}')
      ..write('Transition: ${transition.currentState.runtimeType}')
      ..writeln(' => ${transition.nextState.runtimeType}')
      ..write('New State: ${transition.nextState.toString().limit(100)}');

    logger.info(buffer.toString());

    firebaseAnalytics.logEvent(
      name: 'bloc_transition',
      parameters: {
        'bloc': bloc.runtimeType.toString(),
        'event': transition.event.toString(),
        'from_state': transition.currentState.toString(),
        'to_state': transition.nextState.toString(),
      },
    );

    super.onTransition(bloc, transition);
  }

  @override
  void onEvent(Bloc<Object?, Object?> bloc, Object? event) {
    final buffer = StringBuffer()
      ..writeln('On Event :')
      ..writeln('Bloc: ${bloc.runtimeType}')
      ..write('Event: ${event.toString().limit(200)}');

    logger.info(buffer.toString());

    // Log Firebase Analytics event for the specific event
    firebaseAnalytics.logEvent(
      name: 'bloc_event',
      parameters: {
        'bloc': bloc.runtimeType.toString(),
        'event': event.toString(),
      },
    );
    super.onEvent(bloc, event);
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    logger.info(
      'Bloc: ${bloc.runtimeType} | ${change.currentState} | ${change.nextState}',
    );

    super.onChange(bloc, change);
  }

  @override
  void onCreate(BlocBase bloc) {
    logger.info('Bloc Created | ${bloc.runtimeType} ');
    super.onCreate(bloc);
  }

  @override
  void onError(BlocBase<Object?> bloc, Object error, StackTrace stackTrace) {
    logger.error(
      'Bloc: ${bloc.runtimeType} | $error',
      error: error,
      stackTrace: stackTrace,
    );

    // Log error in Firebase Analytics
    firebaseAnalytics.logEvent(
      name: 'bloc_error',
      parameters: {
        'bloc': bloc.runtimeType.toString(),
        'error': error.toString(),
        'stack_trace': stackTrace.toString(),
      },
    );

    // Record error details in Wiredash
    analytics.trackEvent(
      "Error: ${bloc.runtimeType.toString()}",
      data: {
        'stack_trace': stackTrace.toString(),
        'error_details': error.toString()
      },
    );

    super.onError(bloc, error, stackTrace);
  }
}

final analytics = WiredashAnalytics(projectId: "cloud-certify-aixkb0l");
