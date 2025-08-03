import 'package:flutter/material.dart';
import '../widgets/qr_code_widget.dart';
import '../utils/app_theme.dart';

// Example usage of QR code widgets
class QRCodeExamples extends StatelessWidget {
  const QRCodeExamples({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.primaryColor,
      appBar: AppBar(
        title: const Text(
          'QR Code Examples',
          style: TextStyle(color: AppTheme.textPrimary),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'QR Code Widget Examples',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                color: AppTheme.textPrimary,
              ),
            ),
            const SizedBox(height: 32),
            
            // Simple QR Code
            const Text(
              'Simple QR Code',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: AppTheme.textPrimary,
              ),
            ),
            const SizedBox(height: 16),
            Center(
              child: SimpleQRCode(
                text: 'https://undesign.com',
                size: 150,
              ),
            ),
            const SizedBox(height: 32),
            
            // Styled QR Code
            const Text(
              'Styled QR Code',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: AppTheme.textPrimary,
              ),
            ),
            const SizedBox(height: 16),
            Center(
              child: StyledQRCode(
                data: 'hello@undesign.com',
                size: 150,
                title: 'Email QR Code',
              ),
            ),
            const SizedBox(height: 32),
            
            // Custom QR Code Widget
            const Text(
              'Custom QR Code Widget',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: AppTheme.textPrimary,
              ),
            ),
            const SizedBox(height: 16),
            Center(
              child: QRCodeWidget(
                data: '+1 (555) 123-4567',
                size: 150,
                backgroundColor: Colors.white,
                foregroundColor: AppTheme.accentColor,
              ),
            ),
            const SizedBox(height: 32),
            
            // WiFi QR Code
            const Text(
              'WiFi QR Code',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: AppTheme.textPrimary,
              ),
            ),
            const SizedBox(height: 16),
            Center(
              child: StyledQRCode(
                data: 'WIFI:T:WPA;S:UNDesign;P:password123;;',
                size: 150,
                title: 'WiFi Network',
                primaryColor: Colors.blue,
              ),
            ),
            const SizedBox(height: 32),
            
            // Contact Card QR Code
            const Text(
              'Contact Card QR Code',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: AppTheme.textPrimary,
              ),
            ),
            const SizedBox(height: 16),
            Center(
              child: QRCodeWidget(
                data: '''BEGIN:VCARD
VERSION:3.0
FN:UN Design
ORG:UN Design Agency
TEL:+1-555-123-4567
EMAIL:hello@undesign.com
ADR:;;Belgrade;Serbia
END:VCARD''',
                size: 150,
                foregroundColor: AppTheme.primaryColor,
              ),
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}

// Example of how to generate QR codes programmatically
class QRCodeGenerator {
  static String generateWebsiteQR(String url) {
    return url;
  }
  
  static String generateEmailQR(String email) {
    return 'mailto:$email';
  }
  
  static String generatePhoneQR(String phone) {
    return 'tel:$phone';
  }
  
  static String generateWiFiQR({
    required String ssid,
    required String password,
    String encryption = 'WPA',
  }) {
    return 'WIFI:T:$encryption;S:$ssid;P:$password;;';
  }
  
  static String generateContactCardQR({
    required String name,
    required String organization,
    required String phone,
    required String email,
    String? address,
  }) {
    final vcard = StringBuffer();
    vcard.writeln('BEGIN:VCARD');
    vcard.writeln('VERSION:3.0');
    vcard.writeln('FN:$name');
    vcard.writeln('ORG:$organization');
    vcard.writeln('TEL:$phone');
    vcard.writeln('EMAIL:$email');
    if (address != null) {
      vcard.writeln('ADR:;;$address');
    }
    vcard.writeln('END:VCARD');
    return vcard.toString();
  }
} 