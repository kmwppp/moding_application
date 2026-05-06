import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:moding_application/core/presentation/dialog/common_dialog.dart';
import 'package:moding_application/core/presentation/widgets/app_divider.dart';
import 'package:moding_application/core/presentation/widgets/custom_button.dart';
import 'package:moding_application/core/utils/toast.dart';
import 'package:moding_application/features/send_claim/presentation/providers/send_claim_viewmodel.dart';
import 'package:moding_application/features/send_claim/presentation/screens/sections/claim_photo_section.dart';
import 'package:moding_application/features/send_claim/presentation/screens/sections/claim_reason_section.dart';
import 'package:moding_application/features/send_claim/presentation/screens/sections/select_product_info.dart';
import 'package:moding_application/features/send_claim/presentation/screens/widgets/send_claim_sliver_appbar.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/theme/app_text_styles.dart';

class SendClaimPage extends ConsumerStatefulWidget {
  const SendClaimPage({super.key, required this.orderId});

  final int orderId;

  @override
  ConsumerState<SendClaimPage> createState() => _SendClaimPageState();
}

class _SendClaimPageState extends ConsumerState<SendClaimPage> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      ref
          .read(sendClaimViewModelProvider.notifier)
          .getOrderInfo(widget.orderId);
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(sendClaimViewModelProvider);

    return Scaffold(
      bottomNavigationBar: SafeArea(
        top: false,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 12),
              child: GestureDetector(
                onTap: state.isSubmitting ? null : () => _submitClaim(context),
                child: CustomButton(
                  title: state.isSubmitting ? "신청 중..." : "클레임 신청",
                  boxColor: AppColors.pointColor,
                  textColor: Colors.white,
                  borderColor: AppColors.pointColor,
                  paddingVertical: 10,
                  textStyle: context.body.copyWith(fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            const SendClaimSliverAppbar(),
            const SliverToBoxAdapter(child: SelectProductInfo()),
            const SliverToBoxAdapter(child: AppDivider()),
            const SliverToBoxAdapter(child: ClaimReasonSection()),
            const SliverToBoxAdapter(child: AppDivider()),
            const SliverToBoxAdapter(child: ClaimPhotoSection()),
            const SliverToBoxAdapter(child: SizedBox(height: 96)),
          ],
        ),
      ),
    );
  }

  Future<void> _submitClaim(BuildContext context) async {
    final state = ref.read(sendClaimViewModelProvider);
    final selectedCount = state.claimedQuantities.values.fold<int>(
      0,
      (sum, quantity) => sum + quantity,
    );

    if (selectedCount == 0) {
      await CommonDialog.show(
        context,
        title: "확인",
        isSuccess: false,
        message: "상품은 한개 이상 선택해야합니다.",
      );
      return;
    }

    if (state.claimType == null) {
      await CommonDialog.show(
        context,
        title: "확인",
        isSuccess: false,
        message: "클레임 사유를 선택해주세요.",
      );
      return;
    }

    if (state.claimReason.trim().isEmpty) {
      await CommonDialog.show(
        context,
        title: "확인",
        isSuccess: false,
        message: "클레임 사유를 입력해주세요.",
      );
      return;
    }

    if (state.photos.isEmpty) {
      await CommonDialog.show(
        context,
        title: "확인",
        isSuccess: false,
        message: "상품 사진은 필수입니다.",
      );
      return;
    }

    final response = await ref
        .read(sendClaimViewModelProvider.notifier)
        .submitClaim();
    if (!context.mounted) return;

    if (!response.success) {
      ToastUtil.show(response.message);
      return;
    }

    ToastUtil.show('클레임을 접수하였습니다.');
    context.pop(true);
  }
}
