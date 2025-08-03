import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LanguageProvider extends ChangeNotifier {
  static const String _languageKey = 'selected_language';
  
  Locale _locale = const Locale('en', 'US');
  
  Locale get locale => _locale;
  
  LanguageProvider() {
    _loadLanguage();
  }
  
  Future<void> _loadLanguage() async {
    final prefs = await SharedPreferences.getInstance();
    final languageCode = prefs.getString(_languageKey) ?? 'en';
    _locale = Locale(languageCode, languageCode == 'en' ? 'US' : 'RS');
    notifyListeners();
  }
  
  Future<void> setLanguage(String languageCode) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_languageKey, languageCode);
    _locale = Locale(languageCode, languageCode == 'en' ? 'US' : 'RS');
    notifyListeners();
  }
  
  bool get isEnglish => _locale.languageCode == 'en';
  bool get isSerbian => _locale.languageCode == 'sr';
} 