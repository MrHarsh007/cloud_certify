part of 'side_panel_bloc.dart';

@freezed
class SidePanelState with _$SidePanelState {
  factory SidePanelState({
    required int currentIndex,
    required String screenName,
    required bool isExpanded,
    required bool isLastAccessLogged,
  }) = _SidePanelState;
  factory SidePanelState.initial() {
    final bool isExpanded =
        SharedPreferenceHelper().getBool(SIDE_PANEL_OPEN) ?? true;
    return SidePanelState(
        currentIndex: 0,
        screenName: "Dashboard",
        isExpanded: isExpanded,
        isLastAccessLogged: false);
  }
}
