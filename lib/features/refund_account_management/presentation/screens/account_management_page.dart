import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:moding_application/core/constants/app_colors.dart';
import 'package:moding_application/core/presentation/dialog/common_dialog.dart';
import 'package:moding_application/core/presentation/widgets/app_sliver_appbar.dart';
import 'package:moding_application/core/presentation/widgets/custom_button.dart';
import 'package:moding_application/core/presentation/widgets/modal/app_bottom_sheet.dart';
import 'package:moding_application/core/theme/app_box_styles.dart';
import 'package:moding_application/features/edit_my_info/presentation/providers/edit_my_info_viewmodel.dart';
import 'package:moding_application/features/meta/domain/entities/meta_option_dto.dart';
import 'package:moding_application/features/meta/presentation/providers/meta_provider.dart';
import 'package:moding_application/features/payment_complete/presentation/screens/widgets/payment_complete_common_box.dart';
import 'package:moding_application/features/refund_account_management/data/repositories/account_management_repository_impl.dart';
import 'package:moding_application/features/refund_account_management/domain/entities/refund_account_request_dto.dart';
import 'package:moding_application/features/refund_account_management/domain/entities/refund_account_response_dto.dart';

import '../../../../core/theme/app_input_decoration.dart';
import '../../../../core/theme/app_text_styles.dart';

class AccountManagementPage extends ConsumerStatefulWidget {
  const AccountManagementPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _AccountManagementPage();
}

class _AccountManagementPage extends ConsumerState<AccountManagementPage> {
  final _accountNumberController = TextEditingController();
  final _accountHolderController = TextEditingController();
  MetaOptionDto? _selectedBank;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    Future.microtask(() async {
      try {
        final repository = ref.read(accountManagementRepositoryProvider);
        final response = await repository.getRefundAccount();
        if (!mounted) return;
        _applyRefundAccount(response.data);
      } catch (_) {
        if (!mounted) return;
        setState(() {
          _isLoading = false;
        });
      }
    });
  }

  @override
  void dispose() {
    _accountNumberController.dispose();
    _accountHolderController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final bankCodes =
        ref.watch(bankCodesProvider).value ?? const <MetaOptionDto>[];
    return Scaffold(
      bottomNavigationBar: !_isLoading
          ? Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SafeArea(
                  top: false,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 6, 20, 12),
                    child: GestureDetector(
                      onTap: () => _submitRefundAccount(context),
                      child: CustomButton(
                        title: '환불 계좌 변경',
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
            )
          : null,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            const AppSliverAppbar(title: "환불 계좌 관리"),
            if (_isLoading)
              const SliverFillRemaining(
                hasScrollBody: false,
                child: Center(child: CircularProgressIndicator()),
              )
            else ...[
              const SliverToBoxAdapter(child: SizedBox(height: 10)),
              SliverToBoxAdapter(
                child: PaymentCompleteCommonBox(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "환불 계좌 관리",
                        style: context.bodyLarge.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 16),
                      Text(
                        '은행명',
                        style: context.body.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 8),
                      GestureDetector(
                        onTap: () => _showBankBottomSheet(context, bankCodes),
                        child: Container(
                          width: double.infinity,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 14,
                            vertical: 14,
                          ),
                          decoration: AppBoxStyles.focusContainerDecoration(),
                          child: Row(
                            children: [
                              Expanded(
                                child: Text(
                                  _selectedBank?.label ?? '은행을 선택해주세요.',
                                  style:
                                      (_selectedBank == null
                                              ? context.bodySmall
                                              : context.body)
                                          .copyWith(
                                            color: _selectedBank == null
                                                ? AppColors.darkGrey
                                                : Colors.black,
                                          ),
                                ),
                              ),
                              const Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color: AppColors.darkGrey,
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      Text(
                        '계좌번호',
                        style: context.body.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 8),
                      TextField(
                        controller: _accountNumberController,
                        keyboardType: TextInputType.number,
                        decoration: AppInputDecoration.focusDecoration(
                          "계좌번호를 입력해주세요.",
                        ),
                      ),
                      const SizedBox(height: 16),
                      Text(
                        '예금주',
                        style: context.body.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 8),
                      TextField(
                        controller: _accountHolderController,
                        decoration: AppInputDecoration.focusDecoration(
                          "예금주를 입력해주세요.",
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }

  void _applyRefundAccount(RefundAccountResponseDto refundAccount) {
    final bankCodes =
        ref.read(bankCodesProvider).value ?? const <MetaOptionDto>[];
    final matchedBank = bankCodes.cast<MetaOptionDto?>().firstWhere(
      (bank) => bank?.value == refundAccount.bankCode,
      orElse: () => MetaOptionDto(
        value: refundAccount.bankCode,
        label: refundAccount.bankName,
      ),
    );

    setState(() {
      _selectedBank = matchedBank;
      _accountNumberController.text = refundAccount.accountNumber;
      _accountHolderController.text = refundAccount.accountHolder;
      _isLoading = false;
    });
  }

  Future<void> _submitRefundAccount(BuildContext context) async {
    final selectedBank = _selectedBank;
    final accountNumber = _accountNumberController.text.trim();
    final accountHolder = _accountHolderController.text.trim();

    if (selectedBank == null) {
      await CommonDialog.show(
        context,
        title: '확인',
        isSuccess: false,
        message: '은행을 선택해주세요.',
      );
      return;
    }

    if (accountNumber.isEmpty) {
      await CommonDialog.show(
        context,
        title: '확인',
        isSuccess: false,
        message: '계좌번호를 입력해주세요.',
      );
      return;
    }

    if (accountHolder.isEmpty) {
      await CommonDialog.show(
        context,
        title: '확인',
        isSuccess: false,
        message: '예금주를 입력해주세요.',
      );
      return;
    }

    final repository = ref.read(accountManagementRepositoryProvider);
    final response = await repository.putRefundAccountInfo(
      RefundAccountRequestDto(
        bankCode: selectedBank.value,
        accountNumber: accountNumber,
        accountHolder: accountHolder,
      ),
    );

    if (!context.mounted) return;

    await CommonDialog.show(
      context,
      title: response.success ? '완료' : '오류',
      isSuccess: response.success,
      message: response.success
          ? '환불 계좌가 변경되었습니다.'
          : (response.message.isEmpty ? '환불 계좌 변경에 실패했습니다.' : response.message),
      onPressed: () {
        ref.read(editMyInfoViewModelProvider.notifier).getMaskingMyInfo();
        context.pop(true);
      },
    );
  }

  void _showBankBottomSheet(BuildContext context, List<MetaOptionDto> banks) {
    AppBottomSheet.show(
      context: context,
      title: '은행 선택',
      child: Builder(
        builder: (sheetContext) => Padding(
          padding: const EdgeInsets.all(20),
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.height * 0.45,
            ),
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: banks.length,
              itemBuilder: (context, index) {
                final bank = banks[index];
                final isSelected = _selectedBank?.value == bank.value;

                return InkWell(
                  onTap: () {
                    setState(() {
                      _selectedBank = bank;
                    });
                    Navigator.of(sheetContext).pop();
                  },
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.grey.withValues(alpha: 0.15),
                        ),
                      ),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            bank.label,
                            style: context.body.copyWith(
                              fontWeight: isSelected
                                  ? FontWeight.w600
                                  : FontWeight.w400,
                              color: isSelected
                                  ? AppColors.primary
                                  : Colors.black,
                            ),
                          ),
                        ),
                        if (isSelected)
                          const Icon(
                            Icons.check_rounded,
                            color: AppColors.primary,
                          ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
