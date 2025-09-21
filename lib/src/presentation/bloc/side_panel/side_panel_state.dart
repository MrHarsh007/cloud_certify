part of 'side_panel_bloc.dart';

@freezed
class SidePanelState with _$SidePanelState {
  factory SidePanelState({
    required int currentIndex,
    required String screenName,
    required bool isExpanded,
    required bool isLastAccessLogged,
  }) = _SidePanelState;
  factory SidePanelState.initial() => SidePanelState(
      currentIndex: 0,
      screenName: "Dashboard",
      isExpanded: true,
      isLastAccessLogged: false);
}
