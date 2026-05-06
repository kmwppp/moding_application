import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:moding_application/core/network/entities/response_model.dart';
import 'package:moding_application/features/send_claim/data/repositories/send_claim_repository_impl.dart';
import 'package:moding_application/features/send_claim/presentation/providers/send_claim_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'send_claim_viewmodel.g.dart';

@Riverpod()
class SendClaimViewModel extends _$SendClaimViewModel {
  @override
  SendClaimState build() {
    return SendClaimState.initial();
  }

  Future<void> getOrderInfo(int orderId) async {
    state = state.copyWith(orderId: orderId, isLoading: true);
    try {
      final repository = ref.read(claimRepositoryProvider);
      final orderInfo = await repository.getMyOrderInfo(orderId);
      state = state.copyWith(
        orderInfo: orderInfo,
        isLoading: false,
        claimedQuantities: {
          for (final item in orderInfo.data.items) item.id: 0,
        },
      );
    } catch (e) {
      debugPrint(e.toString());
      state = state.copyWith(isLoading: false);
    }
  }

  void increaseQuantity(int orderItemId, int maxQuantity) {
    final current = state.claimedQuantities[orderItemId] ?? 0;
    if (current >= maxQuantity) return;

    state = state.copyWith(
      claimedQuantities: {...state.claimedQuantities, orderItemId: current + 1},
    );
  }

  void decreaseQuantity(int orderItemId) {
    final current = state.claimedQuantities[orderItemId] ?? 0;
    if (current <= 0) return;

    state = state.copyWith(
      claimedQuantities: {...state.claimedQuantities, orderItemId: current - 1},
    );
  }

  void selectClaimType(String claimType) {
    state = state.copyWith(claimType: claimType);
  }

  void changeClaimReason(String reason) {
    state = state.copyWith(claimReason: reason);
  }

  Future<void> pickPhoto(ImageSource source) async {
    try {
      final picker = ImagePicker();
      final photo = await picker.pickImage(source: source, imageQuality: 85);
      if (photo == null) return;

      state = state.copyWith(photos: [...state.photos, photo.path]);
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  void removePhoto(String photoPath) {
    state = state.copyWith(
      photos: state.photos.where((photo) => photo != photoPath).toList(),
    );
  }

  Future<ResponseModel> submitClaim() async {
    if (state.claimType == null) {
      return const ResponseModel(message: '클레임 사유를 선택해주세요.');
    }

    if (state.claimReason.trim().isEmpty) {
      return const ResponseModel(message: '상세 사유를 입력해주세요.');
    }

    final selectedItems = state.claimedQuantities.entries
        .where((entry) => entry.value > 0)
        .map(
          (entry) => {'orderItemId': entry.key, 'claimedQuantity': entry.value},
        )
        .toList();

    if (selectedItems.isEmpty) {
      return const ResponseModel(message: '클레임을 신청할 상품 수량을 선택해주세요.');
    }

    state = state.copyWith(isSubmitting: true);
    try {
      final photos = await Future.wait(
        state.photos.map(_photoPathToMultipartFile),
      );
      final repository = ref.read(claimRepositoryProvider);
      final response = await repository.postClaim(state.orderId, {
        'claimType': state.claimType,
        'claimReason': state.claimReason.trim(),
        'items': jsonEncode(selectedItems),
        'photos': photos,
      });
      state = state.copyWith(isSubmitting: false);
      return response;
    } catch (e) {
      debugPrint(e.toString());
      state = state.copyWith(isSubmitting: false);
      return const ResponseModel(message: '클레임 신청 중 오류가 발생했습니다.');
    }
  }

  Future<MultipartFile> _photoPathToMultipartFile(String photoPath) {
    return MultipartFile.fromFile(
      photoPath,
      filename: photoPath.split('/').last,
    );
  }
}
