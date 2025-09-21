// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_preferences.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserPreferences extends UserPreferences {
  @override
  final bool dailyReminder;
  @override
  final bool emailNotifications;
  @override
  final String theme;
  @override
  final int studyGoalMinutesPerDay;
  @override
  final int? targetExamDate;

  factory _$UserPreferences([void Function(UserPreferencesBuilder)? updates]) =>
      (new UserPreferencesBuilder()..update(updates))._build();

  _$UserPreferences._(
      {required this.dailyReminder,
      required this.emailNotifications,
      required this.theme,
      required this.studyGoalMinutesPerDay,
      this.targetExamDate})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dailyReminder, r'UserPreferences', 'dailyReminder');
    BuiltValueNullFieldError.checkNotNull(
        emailNotifications, r'UserPreferences', 'emailNotifications');
    BuiltValueNullFieldError.checkNotNull(theme, r'UserPreferences', 'theme');
    BuiltValueNullFieldError.checkNotNull(
        studyGoalMinutesPerDay, r'UserPreferences', 'studyGoalMinutesPerDay');
  }

  @override
  UserPreferences rebuild(void Function(UserPreferencesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserPreferencesBuilder toBuilder() =>
      new UserPreferencesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserPreferences &&
        dailyReminder == other.dailyReminder &&
        emailNotifications == other.emailNotifications &&
        theme == other.theme &&
        studyGoalMinutesPerDay == other.studyGoalMinutesPerDay &&
        targetExamDate == other.targetExamDate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dailyReminder.hashCode);
    _$hash = $jc(_$hash, emailNotifications.hashCode);
    _$hash = $jc(_$hash, theme.hashCode);
    _$hash = $jc(_$hash, studyGoalMinutesPerDay.hashCode);
    _$hash = $jc(_$hash, targetExamDate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserPreferences')
          ..add('dailyReminder', dailyReminder)
          ..add('emailNotifications', emailNotifications)
          ..add('theme', theme)
          ..add('studyGoalMinutesPerDay', studyGoalMinutesPerDay)
          ..add('targetExamDate', targetExamDate))
        .toString();
  }
}

class UserPreferencesBuilder
    implements Builder<UserPreferences, UserPreferencesBuilder> {
  _$UserPreferences? _$v;

  bool? _dailyReminder;
  bool? get dailyReminder => _$this._dailyReminder;
  set dailyReminder(bool? dailyReminder) =>
      _$this._dailyReminder = dailyReminder;

  bool? _emailNotifications;
  bool? get emailNotifications => _$this._emailNotifications;
  set emailNotifications(bool? emailNotifications) =>
      _$this._emailNotifications = emailNotifications;

  String? _theme;
  String? get theme => _$this._theme;
  set theme(String? theme) => _$this._theme = theme;

  int? _studyGoalMinutesPerDay;
  int? get studyGoalMinutesPerDay => _$this._studyGoalMinutesPerDay;
  set studyGoalMinutesPerDay(int? studyGoalMinutesPerDay) =>
      _$this._studyGoalMinutesPerDay = studyGoalMinutesPerDay;

  int? _targetExamDate;
  int? get targetExamDate => _$this._targetExamDate;
  set targetExamDate(int? targetExamDate) =>
      _$this._targetExamDate = targetExamDate;

  UserPreferencesBuilder() {
    UserPreferences._defaults(this);
  }

  UserPreferencesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dailyReminder = $v.dailyReminder;
      _emailNotifications = $v.emailNotifications;
      _theme = $v.theme;
      _studyGoalMinutesPerDay = $v.studyGoalMinutesPerDay;
      _targetExamDate = $v.targetExamDate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserPreferences other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserPreferences;
  }

  @override
  void update(void Function(UserPreferencesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserPreferences build() => _build();

  _$UserPreferences _build() {
    final _$result = _$v ??
        new _$UserPreferences._(
          dailyReminder: BuiltValueNullFieldError.checkNotNull(
              dailyReminder, r'UserPreferences', 'dailyReminder'),
          emailNotifications: BuiltValueNullFieldError.checkNotNull(
              emailNotifications, r'UserPreferences', 'emailNotifications'),
          theme: BuiltValueNullFieldError.checkNotNull(
              theme, r'UserPreferences', 'theme'),
          studyGoalMinutesPerDay: BuiltValueNullFieldError.checkNotNull(
              studyGoalMinutesPerDay,
              r'UserPreferences',
              'studyGoalMinutesPerDay'),
          targetExamDate: targetExamDate,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
