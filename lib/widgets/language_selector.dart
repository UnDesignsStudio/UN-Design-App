import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/language_provider.dart';
import '../utils/app_localizations.dart';
import '../utils/app_theme.dart';

class LanguageSelector extends StatelessWidget {
  const LanguageSelector({super.key});

  @override
  Widget build(BuildContext context) {
    final languageProvider = Provider.of<LanguageProvider>(context);
    final currentLanguage = languageProvider.locale.languageCode;

    return PopupMenuButton<String>(
      icon: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: AppTheme.cardColor,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: AppTheme.dividerColor),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              currentLanguage.toUpperCase(),
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: AppTheme.accentColor,
              ),
            ),
            const SizedBox(width: 4),
            const Icon(
              Icons.keyboard_arrow_down,
              color: AppTheme.accentColor,
              size: 16,
            ),
          ],
        ),
      ),
      offset: const Offset(0, 40),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      color: AppTheme.cardColor,
      elevation: 8,
      itemBuilder: (context) => [
        PopupMenuItem<String>(
          value: 'en',
          child: Row(
            children: [
              Container(
                width: 20,
                height: 15,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2),
                  gradient: const LinearGradient(
                    colors: [Color(0xFF012169), Color(0xFFC8102E)],
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Text(
                AppLocalizations.getString('english', currentLanguage),
                style: TextStyle(
                  color: currentLanguage == 'en' 
                      ? AppTheme.accentColor 
                      : AppTheme.textPrimary,
                  fontWeight: currentLanguage == 'en' 
                      ? FontWeight.w600 
                      : FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
        PopupMenuItem<String>(
          value: 'sr',
          child: Row(
            children: [
              Container(
                width: 20,
                height: 15,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2),
                  gradient: const LinearGradient(
                    colors: [Color(0xFFC6363C), Color(0xFF0C4076)],
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Text(
                AppLocalizations.getString('serbian', currentLanguage),
                style: TextStyle(
                  color: currentLanguage == 'sr' 
                      ? AppTheme.accentColor 
                      : AppTheme.textPrimary,
                  fontWeight: currentLanguage == 'sr' 
                      ? FontWeight.w600 
                      : FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ],
      onSelected: (value) {
        languageProvider.setLanguage(value);
      },
    );
  }
} 