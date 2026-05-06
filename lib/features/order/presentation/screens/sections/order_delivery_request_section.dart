import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:moding_application/features/order/presentation/providers/order_viewmodel.dart';

import '../../../../../core/theme/app_input_decoration.dart';
import '../../../../../core/theme/app_text_styles.dart';
import '../../../domain/enums/delivery_request_type.dart';
import '../widgets/order_common_box.dart';

class OrderDeliveryRequestSection extends ConsumerWidget {
  const OrderDeliveryRequestSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(orderViewModelProvider);
    final notifier = ref.read(orderViewModelProvider.notifier);

    return OrderCommonBox(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("배송 요청사항", style: context.titleMedium),
                const SizedBox(height: 6),

                DropdownButtonFormField<DeliveryRequestType>(
                  icon: Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Icon(Icons.arrow_drop_down, size: 20),
                  ),
                  value: state.selectedRequest,
                  dropdownColor: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  decoration: AppInputDecoration.inputDecoration.copyWith(
                    contentPadding: EdgeInsetsDirectional.symmetric(
                      horizontal: 10,
                      vertical: 12,
                    ),
                  ),

                  items: state.deliveryRequestList.map((type) {
                    return DropdownMenuItem(
                      value: type,
                      child: Text(
                        type.label,
                        style: context.body,
                      ), // 👈 extension 사용
                    );
                  }).toList(),

                  onChanged: (value) {
                    if (value != null) {
                      notifier.updateDeliveryRequest(value);
                    }
                  },
                ),

                if (state.selectedRequest == DeliveryRequestType.etc) ...[
                  SizedBox(height: 10),
                  TextField(
                    style: context.body,
                    maxLines: 3,
                    maxLength: 20,
                    // 👈 글자수 표시까지 하고 싶으면 사용
                    onChanged: notifier.updateDeliveryRequestText,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(20), // 👈 핵심
                    ],
                    decoration: AppInputDecoration.focusDecoration(
                      "배송 요청사항을 입력해주세요.",
                    ).copyWith(counterStyle: TextStyle()),
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}
