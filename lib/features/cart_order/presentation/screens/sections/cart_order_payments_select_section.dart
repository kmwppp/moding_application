import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:moding_application/features/cart_order/presentation/providers/cart_order_viewmodel.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/presentation/widgets/custom_button.dart';
import '../../../../../core/theme/app_input_decoration.dart';
import '../../../../../core/theme/app_text_styles.dart';
import '../../../../order/domain/enums/easy_payments_method.dart';
import '../../../../order/domain/enums/payments_method.dart';
import '../widgets/cart_order_common_box.dart';

class CartOrderPaymentsSelectSection extends ConsumerWidget {
  const CartOrderPaymentsSelectSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(cartOrderViewModelProvider);
    final notifier = ref.read(cartOrderViewModelProvider.notifier);
    return CartOrderCommonBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("결제 수단", style: context.titleMedium),
          const SizedBox(height: 6),
          Row(
            children: PaymentsMethod.values.map((method) {
              final isSelected = state.paymentMethod == method;

              return Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: GestureDetector(
                    onTap: () {
                      notifier.updatePaymentMethod(method);
                    },
                    child: CustomButton(
                      title: method.label,
                      boxColor: isSelected ? AppColors.primary : Colors.white,
                      paddingVertical: 6,
                      textColor: isSelected ? Colors.white : Colors.black,
                      textStyle: context.body,
                    ),
                  ),
                ),
              );
            }).toList(),
          ),

          if (state.paymentMethod == PaymentsMethod.easy) ...[
            const SizedBox(height: 6),
            DropdownButtonFormField<EasyPaymentsMethod>(
              icon: Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Icon(Icons.arrow_drop_down, size: 20),
              ),
              value: state.easyPaymentMethod,
              dropdownColor: Colors.white,
              borderRadius: BorderRadius.circular(10),
              decoration: AppInputDecoration.inputDecoration.copyWith(
                contentPadding: EdgeInsetsDirectional.symmetric(
                  horizontal: 10,
                  vertical: 12,
                ),
              ),

              items: EasyPaymentsMethod.values.map((method) {
                return DropdownMenuItem(
                  value: method,
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(6),
                        child: Image.asset(
                          _getEasyPayIcon(method), // 👈 아이콘 분리
                          width: 20,
                          height: 20,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(width: 6),
                      Text(method.label, style: context.body),
                    ],
                  ),
                );
              }).toList(),

              onChanged: (value) {
                if (value != null) {
                  notifier.updateEasyPaymentMethod(value);
                }
              },
            ),
          ],
        ],
      ),
    );
  }

  String _getEasyPayIcon(EasyPaymentsMethod method) {
    switch (method) {
      case EasyPaymentsMethod.naverpayCard:
        return "assets/images/icons/naverIcon.png";
      case EasyPaymentsMethod.kakaopayCard:
        return "assets/images/icons/kakaoIcon.png";
    }
  }
}
