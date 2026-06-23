import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:moding_application/core/navigation/app_navigator.dart';
import 'package:moding_application/core/services/token_storage.dart';
import 'package:moding_application/features/main/domain/enums/MainTab.dart';
import 'package:moding_application/features/main/presentation/providers/main_viewmodel.dart';

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
      final container = ProviderScope.containerOf(context, listen: false);
      final mainState = container.read(mainViewModelProvider);

      if (mainState.currentTab == MainTab.cart &&
          mainState.previousTab == MainTab.search) {
        container
            .read(mainViewModelProvider.notifier)
            .changeTab(MainTab.search);
      }

      await router.push('/login');
    } finally {
      _isMoving = false;
    }
  }
}
