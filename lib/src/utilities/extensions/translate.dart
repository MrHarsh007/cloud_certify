// Extension for String to add a .tr method without context
import 'dart:ui';

import 'translation/app_localization.dart';

extension LocalizationExtension on String {
  String get tr {
    Locale currentLocale = GlobalAppLocale.currentLocale;

    return AppLocalizations(currentLocale).translate(this);
  }
}
