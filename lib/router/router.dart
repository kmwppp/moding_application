import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:moding_application/features/login/presentation/screens/login_page_main.dart';
import 'package:moding_application/features/main/main_page.dart';
import 'package:moding_application/features/signup/presentation/screens/signup_page_step2.dart';

import '../features/signup/presentation/screens/signup_page_step1.dart';

final goRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    // refreshListenable:
    initialLocation: '/main', //"/main"
    // redirect: (context, state) {}
    routes: [
      GoRoute(path: '/main', builder: (context, state) => const MainPage()),
      GoRoute(
        path: '/login',
        builder: (context, state) => const LoginPageMain(),
      ),
      GoRoute(
        path: '/signup/step1',
        builder: (context, state) => const SignupPageStep1(),
      ),
      GoRoute(
        path: '/signup/step2',
        builder: (context, state) => const SignupPageStep2(),
      ),
    ],
  );
});
