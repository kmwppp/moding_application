import 'package:moding_application/features/nice_identity_verification/domain/entities/nice_identity_verification_result.dart';
import 'package:moding_application/features/nice_identity_verification/data/repositories/nice_identity_verification_repository_impl.dart';
import 'package:moding_application/features/nice_identity_verification/domain/enums/nice_identity_verification_type.dart';
import 'package:moding_application/features/nice_identity_verification/presentation/providers/nice_identity_verification_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'nice_identity_verification_viewmodel.g.dart';

@Riverpod()
class NiceIdentityVerificationViewModel
    extends _$NiceIdentityVerificationViewModel {
  @override
  NiceIdentityVerificationState build() {
    return NiceIdentityVerificationState.initial();
  }

  Future<void> initialize(NiceIdentityVerificationType type) async {
    state = state.copyWith(
      type: type,
      isInitializing: true,
      isWebViewLoading: true,
      errorMessage: null,
      resultText: null,
      authUrl: null,
    );

    try {
      final response = await ref
          .read(niceIdentityVerificationRepositoryProvider)
          .postIdentityVerification(purpose: type.code);

      if (!response.success ||
          (response.data?.authUrl.trim().isEmpty ?? true)) {
        state = state.copyWith(
          isInitializing: false,
          isWebViewLoading: false,
          errorMessage: '알 수 없는 오류가 발생했습니다.',
        );
        return;
      }

      state = state.copyWith(
        isInitializing: false,
        authUrl: response.data!.authUrl.trim(),
      );
    } catch (_) {
      state = state.copyWith(
        isInitializing: false,
        isWebViewLoading: false,
        errorMessage: '알 수 없는 오류가 발생했습니다.',
      );
    }
  }

  void setWebViewLoading(bool value) {
    state = state.copyWith(isWebViewLoading: value);
  }

  void clearErrorMessage() {
    state = state.copyWith(errorMessage: null);
  }

  NiceIdentityVerificationResult? handleDeepLink(String url) {
    final uri = Uri.tryParse(url);
    if (uri == null ||
        uri.scheme != 'moding' ||
        uri.host != 'auth' ||
        uri.path != '/nice') {
      return null;
    }

    final error = uri.queryParameters['error'];
    if (error != null && error.isNotEmpty) {
      state = state.copyWith(
        isWebViewLoading: false,
        resultText: 'error: $error',
      );
      return NiceIdentityVerificationResult(success: false, error: error);
    }

    final key = uri.queryParameters['key'] ?? '';
    final name = uri.queryParameters['name'] ?? '';
    final phone = uri.queryParameters['phone'] ?? '';

    state = state.copyWith(
      isWebViewLoading: false,
      resultText: 'key: $key\nname: $name\nphone: $phone',
    );
    return NiceIdentityVerificationResult(
      success: true,
      key: key,
      name: name,
      phone: phone,
    );
  }
}
