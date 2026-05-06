import 'package:go_router/go_router.dart';
import 'package:moding_application/core/navigation/app_navigator.dart';
import 'package:moding_application/core/services/token_storage.dart';

class SessionExpiredHandler {
  SessionExpiredHandler._();

  static bool _isMoving = false;

  static Future<void> showLoginRequiredDialog({
    required TokenStorage tokenStorage,
  }) async {
    await tokenStorage.deleteAll();

    final context = rootNavigatorKey.currentContext;
    if (context == null || _isMoving) return;
    if (!context.mounted) return;

    final router = GoRouter.of(context);
    final currentPath = router.routerDelegate.currentConfiguration.uri.path;
    if (currentPath == '/login') return;

    _isMoving = true;
    try {
      await router.push('/login');
    } finally {
      _isMoving = false;
    }
  }
}
