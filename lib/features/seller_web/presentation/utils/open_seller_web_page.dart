import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:moding_application/core/network/entities/response_model.dart';
import 'package:moding_application/core/presentation/dialog/common_dialog.dart';
import 'package:moding_application/features/fcm/domain/enums/fcm_target_page.dart';
import 'package:moding_application/features/profile/data/repositories/profile_repository_impl.dart';
import 'package:moding_application/features/seller_web/presentation/seller_web_bridge_service.dart';
import 'package:moding_application/features/seller_web/presentation/seller_web_page_params.dart';

Future<void> openSellerWebPage({
  required BuildContext context,
  required ProviderContainer container,
  FcmTargetPage? targetPage,
  int? referenceId,
}) async {
  try {
    final response = await container
        .read(profileRepositoryProvider)
        .postWebViewTokens();
    final token = response.data.token.trim();

    if (!context.mounted) return;

    if (token.isEmpty) {
      await CommonDialog.show(
        context,
        title: '오류',
        isSuccess: false,
        message: '웹뷰 로그인 토큰을 발급하지 못했습니다.',
      );
      return;
    }

    final params = _buildSellerWebPageParams(
      token: token,
      targetPage: targetPage,
      referenceId: referenceId,
    );

    final dispatched = await SellerWebBridgeService.instance.dispatchIfAttached(
      params,
    );
    if (!context.mounted) return;

    if (dispatched) {
      return;
    }

    context.go('/seller_page', extra: params);
  } on DioException catch (e) {
    if (!context.mounted) return;

    final data = e.response?.data;
    if (data is Map<String, dynamic>) {
      final response = ResponseModel.fromJson(data);
      await CommonDialog.show(
        context,
        title: '오류',
        isSuccess: false,
        message: response.message,
      );
      return;
    }

    await CommonDialog.show(
      context,
      title: '오류',
      isSuccess: false,
      message: '판매자 페이지로 이동하지 못했습니다.',
    );
  } catch (_) {
    if (!context.mounted) return;

    await CommonDialog.show(
      context,
      title: '오류',
      isSuccess: false,
      message: '판매자 페이지로 이동하지 못했습니다.',
    );
  }
}

SellerWebPageParams _buildSellerWebPageParams({
  required String token,
  FcmTargetPage? targetPage,
  int? referenceId,
}) {
  switch (targetPage) {
    case FcmTargetPage.sellerOrderDetail:
      return SellerWebPageParams(
        webViewToken: token,
        targetPath: referenceId == null
            ? null
            : '/dash/preparingForDelivery/read/$referenceId',
      );
    case FcmTargetPage.orderDetail:
      return SellerWebPageParams(webViewToken: token);
    case FcmTargetPage.sellerClaimDetail:
      return SellerWebPageParams(
        webViewToken: token,
        targetPath: referenceId == null ? null : '/claim/detail/$referenceId',
      );
    case FcmTargetPage.claimDetail:
      return SellerWebPageParams(webViewToken: token);
    case FcmTargetPage.productDetail:
    case FcmTargetPage.sellerProductDetail:
    case FcmTargetPage.sellerProductList:
      return SellerWebPageParams(webViewToken: token, mainMenu: 'product');
    case FcmTargetPage.sellerOrderList:
      return SellerWebPageParams(webViewToken: token, mainMenu: 'order');
    case FcmTargetPage.sellerTaxInvoice:
      return SellerWebPageParams(webViewToken: token, mainMenu: 'evidence');
    case FcmTargetPage.sellerSettlement:
      return SellerWebPageParams(webViewToken: token, mainMenu: 'settlement');
    case FcmTargetPage.sellerHome:
    case FcmTargetPage.noticeList:
    case FcmTargetPage.conversionStatus:
    case FcmTargetPage.unknown:
    case null:
      return SellerWebPageParams(webViewToken: token);
  }
}
