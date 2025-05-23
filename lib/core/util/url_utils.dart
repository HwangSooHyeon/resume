import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlUtils {
  static Future<void> launchUrlOrCatch(String url) async {
    final uri = Uri.parse(url);
    try {
      await launchUrl(
        uri,
        mode: LaunchMode.externalApplication,
      );
    } catch (e) {
      debugPrint('Could not launch $url: $e');
    }
  }

  static Future<void> launchEmailOrCatch({
    required String email,
    String? subject,
    String? body,
  }) async {
    final Uri emailUri = Uri(
      scheme: 'mailto',
      path: email,
      queryParameters: <String, String>{
        if (subject != null) 'subject': subject,
        if (body != null) 'body': body,
      },
    );

    try {
      await launchUrl(emailUri);
    } catch (e) {
      debugPrint('Could not launch email: $e');
    }
  }

  static String getRepositoryName(String url) {
    String urlWithoutProtocol = url;
    if (url.startsWith('http://')) {
      urlWithoutProtocol = url.substring(7);
    } else if (url.startsWith('https://')) {
      urlWithoutProtocol = url.substring(8);
    }

    final parts = urlWithoutProtocol.split('/');
    if (parts.length > 2) {
      return parts[2];
    } else {
      return "repository";
    }
  }
}
