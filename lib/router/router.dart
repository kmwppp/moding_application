import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:moding_application/features/main/main_page.dart';

final goRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    // refreshListenable:
    initialLocation: '/main',
    // redirect: (context, state) {}
    routes: [
      GoRoute(path: '/main', builder: (context, state) => const MainPage()),
    ],
  );
});
