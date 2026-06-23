import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:moding_application/features/nice_identity_verification/domain/entities/nice_identity_verification_result.dart';
import 'package:moding_application/features/nice_identity_verification/presentation/providers/nice_callback_result_provider.dart';

/// Fallback page for the rare case where GoRouter processes the nice deeplink
/// before the app-links listener forwards the result.
class NiceIdentityVerificationCallbackPage extends ConsumerStatefulWidget {
  const NiceIdentityVerificationCallbackPage({super.key, required this.uri});

  final Uri uri;

  @override
  ConsumerState<NiceIdentityVerificationCallbackPage> createState() =>
      _NiceIdentityVerificationCallbackPageState();
}

class _NiceIdentityVerificationCallbackPageState
    extends ConsumerState<NiceIdentityVerificationCallbackPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;

      final uri = widget.uri;
      final error = uri.queryParameters['error'];
      final resultCode = uri.queryParameters['result'];
      final NiceIdentityVerificationResult result;

      if (error != null && error.isNotEmpty) {
        result = NiceIdentityVerificationResult(success: false, error: error);
      } else if (resultCode != null && resultCode.isNotEmpty) {
        result = NiceIdentityVerificationResult(
          success: true,
          result: resultCode,
        );
      } else {
        result = NiceIdentityVerificationResult(
          success: true,
          key: uri.queryParameters['key'],
          name: uri.queryParameters['name'],
          phone: uri.queryParameters['phone'],
        );
      }

      ref.read(niceCallbackResultProvider.notifier).set(result);
      Navigator.of(context).maybePop();
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: CircularProgressIndicator()));
  }
}
