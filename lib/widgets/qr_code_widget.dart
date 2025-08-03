import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import '../utils/app_theme.dart';

class QRCodeWidget extends StatelessWidget {
  final String data;
  final double size;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final Widget? logo;

  const QRCodeWidget({
    super.key,
    required this.data,
    this.size = 200.0,
    this.backgroundColor,
    this.foregroundColor,
    this.logo,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: backgroundColor ?? Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: QrImageView(
        data: data,
        version: QrVersions.auto,
        size: size,
        backgroundColor: backgroundColor ?? Colors.white,
        foregroundColor: foregroundColor ?? AppTheme.primaryColor,
        // embeddedImage: logo != null ? null : const AssetImage('assets/icons/logo.png'),
        // embeddedImageStyle: logo != null ? null : const QrEmbeddedImageStyle(
        //   size: Size(30, 30),
        // ),
        errorCorrectionLevel: QrErrorCorrectLevel.M,
      ),
    );
  }
}

// Simple QR code display widget
class SimpleQRCode extends StatelessWidget {
  final String text;
  final double size;

  const SimpleQRCode({
    super.key,
    required this.text,
    this.size = 150.0,
  });

  @override
  Widget build(BuildContext context) {
    return QrImageView(
      data: text,
      version: QrVersions.auto,
      size: size,
      backgroundColor: Colors.white,
      foregroundColor: AppTheme.primaryColor,
    );
  }
}

// QR code with custom styling
class StyledQRCode extends StatelessWidget {
  final String data;
  final double size;
  final Color primaryColor;
  final Color secondaryColor;
  final String? title;

  const StyledQRCode({
    super.key,
    required this.data,
    this.size = 200.0,
    this.primaryColor = AppTheme.accentColor,
    this.secondaryColor = AppTheme.primaryColor,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (title != null) ...[
          Text(
            title!,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: AppTheme.textPrimary,
            ),
          ),
          const SizedBox(height: 12),
        ],
        Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                primaryColor.withOpacity(0.1),
                secondaryColor.withOpacity(0.05),
              ],
            ),
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              color: primaryColor.withOpacity(0.3),
              width: 1,
            ),
          ),
          child: QrImageView(
            data: data,
            version: QrVersions.auto,
            size: size,
            backgroundColor: Colors.white,
            foregroundColor: primaryColor,
            errorCorrectionLevel: QrErrorCorrectLevel.H,
          ),
        ),
      ],
    );
  }
} 