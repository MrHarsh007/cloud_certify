part of 'side_panel_bloc.dart';

@freezed
class SidePanelEvent with _$SidePanelEvent {
  const factory SidePanelEvent.initialize() = _Initialize;

  const factory SidePanelEvent.changeCurrenIndex(int index) =
      _ChangeCurrentIndex;

  const factory SidePanelEvent.changeScreenName(String screenName) =
      _ChangeScreenName;

  const factory SidePanelEvent.toggleExpanded() = _ToggleExpanded;

  const factory SidePanelEvent.logLastAccess(bool isLastAccessLogged) =
      _LogLastAccess;
}
