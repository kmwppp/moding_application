import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:moding_application/core/constants/app_colors.dart';
import 'package:moding_application/core/presentation/dialog/common_dialog.dart';
import 'package:moding_application/core/presentation/widgets/app_sliver_appbar.dart';
import 'package:moding_application/core/presentation/widgets/custom_button.dart';
import 'package:moding_application/core/presentation/widgets/modal/app_bottom_sheet.dart';
import 'package:moding_application/features/account_management/data/repositories/account_management_repository_impl.dart';
import 'package:moding_application/features/account_management/domain/entities/refund_account_request_dto.dart';
import 'package:moding_application/features/account_management/domain/entities/refund_account_response_dto.dart';
import 'package:moding_application/features/payment_complete/presentation/screens/widgets/payment_complete_common_box.dart';

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
  _BankOption? _selectedBank;
  bool _isLoading = true;

  static const List<_BankOption> _banks = [
    _BankOption(bankCode: '004', bankName: '국민은행'),
    _BankOption(bankCode: '088', bankName: '신한은행'),
    _BankOption(bankCode: '020', bankName: '우리은행'),
    _BankOption(bankCode: '081', bankName: '하나은행'),
    _BankOption(bankCode: '011', bankName: '농협은행'),
    _BankOption(bankCode: '003', bankName: '기업은행'),
    _BankOption(bankCode: '023', bankName: 'SC제일은행'),
    _BankOption(bankCode: '027', bankName: '한국씨티은행'),
    _BankOption(bankCode: '089', bankName: '케이뱅크'),
    _BankOption(bankCode: '090', bankName: '카카오뱅크'),
    _BankOption(bankCode: '092', bankName: '토스뱅크'),
  ];

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
    return Scaffold(
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
                        onTap: () => _showBankBottomSheet(context),
                        child: Container(
                          width: double.infinity,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 14,
                            vertical: 14,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: AppColors.lightGrey),
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: Text(
                                  _selectedBank?.bankName ?? '은행을 선택해주세요.',
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
                        decoration: InputDecoration(
                          hintText: '계좌번호를 입력해주세요.',
                          hintStyle: context.bodySmall.copyWith(
                            color: AppColors.darkGrey,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                              color: AppColors.lightGrey,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                              color: AppColors.lightGrey,
                            ),
                          ),
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
                        decoration: InputDecoration(
                          hintText: '예금주를 입력해주세요.',
                          hintStyle: context.bodySmall.copyWith(
                            color: AppColors.darkGrey,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                              color: AppColors.lightGrey,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                              color: AppColors.lightGrey,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      GestureDetector(
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
    final matchedBank = _banks
        .where((bank) => bank.bankCode == refundAccount.bankCode)
        .cast<_BankOption?>()
        .firstWhere(
          (bank) => bank != null,
          orElse: () => _BankOption(
            bankCode: refundAccount.bankCode,
            bankName: refundAccount.bankName,
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
        bankCode: selectedBank.bankCode,
        bankName: selectedBank.bankName,
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
    );
  }

  void _showBankBottomSheet(BuildContext context) {
    AppBottomSheet.show(
      context: context,
      title: '은행 선택',
      child: Builder(
        builder: (sheetContext) => Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: _banks.map((bank) {
              final isSelected = _selectedBank?.bankCode == bank.bankCode;
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
                          bank.bankName,
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
            }).toList(),
          ),
        ),
      ),
    );
  }
}

class _BankOption {
  const _BankOption({required this.bankCode, required this.bankName});

  final String bankCode;
  final String bankName;
}
