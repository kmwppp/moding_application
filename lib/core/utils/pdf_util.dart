import 'package:flutter/material.dart';

import '../presentation/widgets/app_pdf_viewer_page.dart';

class PdfUtil {
  static Future<void> openPdf(
    BuildContext context,
    String url,
    String title,
  ) async {
    try {
      if (context.mounted) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => AppPdfViewerPage(url: url, title: title),
          ),
        );
      }
    } catch (e) {
      debugPrint("PDF 열기 에러: $e");
    }
  }
}
