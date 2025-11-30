import 'package:cloud_certify/src/helper/shared_pref_helper.dart';
import 'package:cloud_certify/src/presentation/all_export.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
part 'side_panel_event.dart';
part 'side_panel_state.dart';
part 'side_panel_bloc.freezed.dart';

@singleton
class SidePanelBloc extends Bloc<SidePanelEvent, SidePanelState> {
  SidePanelBloc() : super(SidePanelState.initial()) {
    on<SidePanelEvent>((event, emit) {
      event.map(initialize: (_Initialize value) {
        emit(SidePanelState.initial());
      }, changeCurrenIndex: (_ChangeCurrentIndex value) {
        emit(state.copyWith(currentIndex: value.index));
      }, changeScreenName: (_ChangeScreenName value) {
        emit(state.copyWith(screenName: value.screenName));
      }, toggleExpanded: (_ToggleExpanded value) {
        emit(state.copyWith(isExpanded: !state.isExpanded));
        SharedPreferenceHelper().storeBool(SIDE_PANEL_OPEN, state.isExpanded);
      }, logLastAccess: (_LogLastAccess value) {
        emit(state.copyWith(isLastAccessLogged: value.isLastAccessLogged));
      });
    });
  }
}
