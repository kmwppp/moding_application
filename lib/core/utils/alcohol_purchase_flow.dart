import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:moding_application/core/constants/app_http_url.dart';
import 'package:moding_application/core/network/dio_client.dart';
import 'package:moding_application/core/network/entities/response_model.dart';
import 'package:moding_application/core/network/exceptions/api_code_exception.dart';
import 'package:moding_application/core/presentation/dialog/common_dialog.dart';
import 'package:moding_application/features/nice_identity_verification/domain/entities/nice_identity_verification_page_params.dart';
import 'package:moding_application/features/nice_identity_verification/domain/entities/nice_identity_verification_result.dart';
import 'package:moding_application/features/nice_identity_verification/domain/enums/nice_identity_verification_type.dart';
import 'package:moding_application/features/nice_identity_verification/domain/enums/nice_verification_source.dart';

const alcoholPurchaseErrorCodes = <String>{
  'ALCOHOL_BUYER_NOT_APPROVED',
  'ALCOHOL_BUYER_PENDING',
  'ALCOHOL_VERIFICATION_REQUIRED',
  'ALCOHOL_BUSINESS_ADDRESS_REQUIRED',
};

enum AlcoholFailureBehavior { stay, pop }

Future<void> handleAlcoholPurchaseException(
  BuildContext context,
  WidgetRef ref,
  ApiCodeException exception, {
  required AlcoholFailureBehavior failureBehavior,
  required Future<void> Function() onVerified,
}) async {
  switch (exception.code) {
    case 'ALCOHOL_BUYER_NOT_APPROVED':
      final shouldApply = await _showApplyDialog(context);
      if (!context.mounted) return;

      if (shouldApply == true) {
        final applied = await _applyAlcoholBuyer(context, ref);
        if (!context.mounted) return;
        if (!applied) return;
      }

      await _performFailureBehavior(context, failureBehavior);
      return;

    case 'ALCOHOL_BUYER_PENDING':
      await CommonDialog.show(
        context,
        title: '안내',
        isSuccess: false,
        message: '주류 구매자격 신청이 완료되었습니다.\n\n서류 확인 후 영업일 기준 최대 2일 이내 처리됩니다.',
      );
      if (!context.mounted) return;
      await _performFailureBehavior(context, failureBehavior);
      return;

    case 'ALCOHOL_VERIFICATION_REQUIRED':
      final result = await context.push<NiceIdentityVerificationResult>(
        '/nice_identity_verification',
        extra: const NiceIdentityVerificationPageParams(
          type: NiceIdentityVerificationType.alcohol,
          source: NiceVerificationSource.alcohol,
        ),
      );
      if (!context.mounted) return;

      if (result?.success == true && result?.result == 'ALCOHOL_VERIFIED') {
        await onVerified();
        return;
      }

      final message = switch (result?.error) {
        'IDENTITY_MISMATCH' => '명의가 불일치합니다.',
        'SERVER_ERROR' => '알 수 없는 오류가 발생했습니다.',
        _ => '본인인증이 취소되었습니다.',
      };

      await CommonDialog.show(
        context,
        title: '안내',
        isSuccess: false,
        message: message,
      );
      if (!context.mounted) return;
      await _performFailureBehavior(context, failureBehavior);
      return;

    case 'ALCOHOL_BUSINESS_ADDRESS_REQUIRED':
      await CommonDialog.show(
        context,
        title: '안내',
        isSuccess: false,
        message: '주류 상품은 사업장 배송지로만 주문할 수 있습니다.',
      );
      if (!context.mounted) return;
      await _performFailureBehavior(context, failureBehavior);
      return;
  }
}

Future<bool?> _showApplyDialog(BuildContext context) {
  return CommonDialog.showChoice(
    context,
    title: '안내',
    isSuccess: false,
    message: '주류 상품은 성인인증 및 주류 판매 자격 확인 후 승인이 된 회원만 구매할 수 있습니다.',
    primaryButtonText: '신청',
    secondaryButtonText: '취소',
  );
}

Future<bool> _applyAlcoholBuyer(BuildContext context, WidgetRef ref) async {
  try {
    final dio = ref.read(dioProvider);
    final response = await dio.post(AppHttpUrl.postAlcoholBuyerApply);
    final responseModel = ResponseModel.fromJson(
      response.data as Map<String, dynamic>,
    );

    if (!responseModel.success) {
      await CommonDialog.show(
        context,
        title: '오류',
        isSuccess: false,
        message: responseModel.message.isNotEmpty
            ? responseModel.message
            : '주류 구매자격 신청에 실패했습니다.',
      );
      return false;
    }
    return true;
  } on DioException catch (error) {
    final data = error.response?.data;
    final message = data is Map<String, dynamic>
        ? data['message']?.toString() ?? '주류 구매자격 신청에 실패했습니다.'
        : '주류 구매자격 신청에 실패했습니다.';

    await CommonDialog.show(
      context,
      title: '오류',
      isSuccess: false,
      message: message,
    );
    return false;
  } catch (_) {
    await CommonDialog.show(
      context,
      title: '오류',
      isSuccess: false,
      message: '주류 구매자격 신청에 실패했습니다.',
    );
    return false;
  }
}

Future<void> _performFailureBehavior(
  BuildContext context,
  AlcoholFailureBehavior behavior,
) async {
  if (behavior == AlcoholFailureBehavior.pop && context.mounted) {
    await Navigator.of(context).maybePop();
  }
}
