import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:moding_application/core/presentation/dialog/common_dialog.dart';
import 'package:moding_application/core/presentation/widgets/app_sliver_appbar.dart';
import 'package:moding_application/core/presentation/widgets/custom_button.dart';
import 'package:moding_application/core/presentation/widgets/modal/app_bottom_sheet.dart';
import 'package:moding_application/features/claim_check/domain/enums/claim_status.dart';
import 'package:moding_application/features/claim_check/presentation/providers/claim_check_viewmodel.dart';
import 'package:moding_application/features/claim_check/presentation/screens/sections/claim_product_info.dart';
import 'package:moding_application/features/claim_check/presentation/screens/sections/claim_status_section.dart';
import 'package:moding_application/features/claim_check/presentation/screens/sections/claim_submit_info.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/theme/app_text_styles.dart';

class ClaimCheckPage extends ConsumerStatefulWidget {
  const ClaimCheckPage({super.key, required this.claimId});

  final int claimId;

  @override
  ConsumerState<ClaimCheckPage> createState() => _ClaimCheckPageState();
}

class _ClaimCheckPageState extends ConsumerState<ClaimCheckPage> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      ref
          .read(claimCheckViewModelProvider.notifier)
          .getClaimDetail(widget.claimId);
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(claimCheckViewModelProvider);
    final claim = state.claimDetail?.data;
    final hasCurrentClaim =
        claim != null && state.claimDetail?.data.id == widget.claimId;

    if (!hasCurrentClaim) {
      return Scaffold(
        body: SafeArea(
          child: CustomScrollView(
            slivers: [
              const AppSliverAppbar(title: "클레임 진행 내역"),
              const SliverFillRemaining(
                hasScrollBody: false,
                child: Center(
                  child: CircularProgressIndicator(color: AppColors.primary),
                ),
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            const AppSliverAppbar(title: "클레임 진행 내역"),
            const SliverToBoxAdapter(child: SizedBox(height: 10)),
            const SliverToBoxAdapter(child: ClaimSubmitInfo()),
            const SliverToBoxAdapter(child: SizedBox(height: 10)),
            const SliverToBoxAdapter(child: ClaimStatusSection()),
            const SliverToBoxAdapter(child: SizedBox(height: 10)),
            const SliverToBoxAdapter(child: ClaimProductInfo()),
            const SliverToBoxAdapter(child: SizedBox(height: 10)),
            if (claim.status == ClaimStatus.rejected) ...[
              const SliverToBoxAdapter(child: SizedBox(height: 10)),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: GestureDetector(
                    onTap: () => _showAppealBottomSheet(context, claim.id),
                    child: CustomButton(
                      title: '이의신청',
                      boxColor: AppColors.primary,
                      borderColor: AppColors.primary,
                      textColor: Colors.white,
                      paddingVertical: 10,
                      textStyle: context.body.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }

  void _showAppealBottomSheet(BuildContext context, int claimId) {
    final controller = TextEditingController();

    AppBottomSheet.show(
      context: context,
      title: '이의신청',
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '이의신청 사유',
                style: context.titleSmall.copyWith(fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 10),
              TextField(
                controller: controller,
                maxLines: 5,
                style: context.body,
                decoration: InputDecoration(
                  hintText: '이의신청 사유를 입력해주세요.',
                  hintStyle: context.body.copyWith(color: AppColors.darkGrey),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: AppColors.darkGrey),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: AppColors.primary,
                      width: 1.5,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () async {
                  final appealReason = controller.text.trim();
                  if (appealReason.isEmpty) {
                    await CommonDialog.show(
                      context,
                      title: '확인',
                      isSuccess: false,
                      message: '이의신청 사유를 입력해주세요.',
                    );
                    return;
                  }

                  final response = await ref
                      .read(claimCheckViewModelProvider.notifier)
                      .submitAppeal(
                        claimId: claimId,
                        appealReason: appealReason,
                      );
                  if (!context.mounted) return;

                  if (!response.success) {
                    await CommonDialog.show(
                      context,
                      title: '확인',
                      isSuccess: false,
                      message: response.message,
                    );
                    return;
                  }

                  if (!context.mounted) return;
                  Navigator.of(context).pop();
                  await CommonDialog.show(
                    context,
                    title: '확인',
                    message: '이의신청이 접수되었습니다.',
                  );
                  if (!mounted) return;
                  await ref
                      .read(claimCheckViewModelProvider.notifier)
                      .getClaimDetail(widget.claimId);
                },
                child: CustomButton(
                  title: '이의신청',
                  boxColor: AppColors.pointColor,
                  borderColor: AppColors.pointColor,
                  textColor: Colors.white,
                  paddingVertical: 10,
                  textStyle: context.body.copyWith(fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
