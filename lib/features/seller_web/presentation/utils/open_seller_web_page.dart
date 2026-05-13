import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:moding_application/core/network/entities/response_model.dart';
import 'package:moding_application/core/presentation/dialog/common_dialog.dart';
import 'package:moding_application/features/profile/data/repositories/profile_repository_impl.dart';

Future<void> openSellerWebPage({
  required BuildContext context,
  required WidgetRef ref,
}) async {
  try {
    final response = await ref
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

    context.go('/seller_page', extra: token);
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
