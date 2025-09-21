import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../localization/localization.g.dart';

// Global locale manager
class GlobalAppLocale {
  static Locale? _currentLocale;

  static void setLocale(Locale locale) {
    _currentLocale = locale;
  }

  static Locale get currentLocale {
    return _currentLocale ?? Locale('en', 'US'); // Default to 'en_US'
  }
}

class AppLocalizations {
  final Locale locale;

  AppLocalizations(this.locale);

  // Extended localization map with more than one language
  static final Map<String, Map<String, String>> _localizedValues =
      Localization().keys;

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  // This method retrieves the text for a particular key
  String translate(String key) {
    return _localizedValues[locale.toString().toLowerCase()]?[key] ?? key;
  }

  // Static method to easily access localization within widgets
  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    // Define supported locales
    return ['en_US', 'fr_FR'].contains(locale.toString());
  }

  @override
  Future<AppLocalizations> load(Locale locale) {
    // Return a new instance of AppLocalizations with the current locale
    return SynchronousFuture<AppLocalizations>(AppLocalizations(locale));
  }

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}
