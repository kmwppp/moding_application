import 'package:flutter/services.dart';
import 'package:moding_application/core/navigation/app_navigator.dart';
import 'package:moding_application/core/presentation/dialog/common_dialog.dart';

class MaintenanceHandler {
  MaintenanceHandler._();

  static bool _isShowing = false;

  static Future<void> showDialog({
    required String message,
  }) async {
    final context = rootNavigatorKey.currentContext;
    if (context == null || _isShowing) return;
    if (!context.mounted) return;

    _isShowing = true;
    try {
      await CommonDialog.show(
        context,
        title: '안내',
        isSuccess: false,
        message: message,
        buttonText: '종료',
        onPressed: SystemNavigator.pop,
      );
    } finally {
      _isShowing = false;
    }
  }
}
