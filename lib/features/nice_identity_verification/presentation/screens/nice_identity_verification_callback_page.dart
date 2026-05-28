import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// Fallback page for the rare case where GoRouter processes the nice deeplink
/// before NiceDeeplinkInterceptor can block it. Simply redirects to login.
class NiceIdentityVerificationCallbackPage extends StatefulWidget {
  const NiceIdentityVerificationCallbackPage({super.key});

  @override
  State<NiceIdentityVerificationCallbackPage> createState() =>
      _NiceIdentityVerificationCallbackPageState();
}

class _NiceIdentityVerificationCallbackPageState
    extends State<NiceIdentityVerificationCallbackPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) context.go('/login');
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: CircularProgressIndicator()),
    );
  }
}
