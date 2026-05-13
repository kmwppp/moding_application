import 'package:go_router/go_router.dart';
import 'package:moding_application/core/navigation/app_navigator.dart';
import 'package:moding_application/features/identity_verification/domain/entities/identity_verification_page_params.dart';

class ReauthRequiredHandler {
  ReauthRequiredHandler._();

  static bool _isMoving = false;

  static Future<void> showIdentityVerificationPage() async {
    final context = rootNavigatorKey.currentContext;
    if (context == null || _isMoving) return;
    if (!context.mounted) return;

    final router = GoRouter.of(context);
    final currentPath = router.routerDelegate.currentConfiguration.uri.path;
    if (currentPath == '/identity_verification') return;

    _isMoving = true;
    try {
      await router.push(
        '/identity_verification',
        extra: const IdentityVerificationPageParams(),
      );
    } finally {
      _isMoving = false;
    }
  }
}
