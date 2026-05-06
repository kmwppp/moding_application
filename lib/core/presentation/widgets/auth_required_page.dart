import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:moding_application/core/services/token_storage.dart';

class AuthRequiredPage extends ConsumerStatefulWidget {
  const AuthRequiredPage({super.key, required this.child});

  final Widget child;

  @override
  ConsumerState<AuthRequiredPage> createState() => _AuthRequiredPageState();
}

class _AuthRequiredPageState extends ConsumerState<AuthRequiredPage> {
  bool _isChecking = true;
  bool _isAuthorized = false;

  @override
  void initState() {
    super.initState();
    Future.microtask(_checkAuth);
  }

  Future<void> _checkAuth() async {
    final accessToken = await ref.read(tokenStorageProvider).getAccessToken();
    if (!mounted) return;

    if (accessToken != null && accessToken.trim().isNotEmpty) {
      setState(() {
        _isAuthorized = true;
        _isChecking = false;
      });
      return;
    }

    setState(() => _isChecking = false);

    final loginResult = await context.push<bool>('/login');
    if (!mounted) return;

    if (loginResult == true) {
      setState(() => _isAuthorized = true);
      return;
    }

    if (context.canPop()) {
      context.pop();
    } else {
      context.go('/main');
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_isAuthorized) return widget.child;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: _isChecking ? const CircularProgressIndicator() : null,
      ),
    );
  }
}
