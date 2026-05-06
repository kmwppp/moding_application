import 'package:flutter/material.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/theme/app_text_styles.dart';
import '../widgets/order_common_box.dart';

class OrderAddressSection extends StatelessWidget {
  const OrderAddressSection({
    super.key,
    required this.name,
    required this.address,
    required this.addressDetail,
    required this.phone,
  });

  final String name;
  final String address;
  final String addressDetail;
  final String phone;

  @override
  Widget build(BuildContext context) {
    return OrderCommonBox(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IntrinsicHeight(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("배송지", style: context.titleMedium),
                      VerticalDivider(
                        color: AppColors.mediumGrey,
                        thickness: 2,
                        width: 30,
                        indent: 4,
                        endIndent: 4,
                      ),
                      Text(name, style: context.titleMedium),
                    ],
                  ),
                ),
                const SizedBox(height: 6),
                Text("$address $addressDetail", style: context.body),
                const SizedBox(height: 6),
                Text(phone, style: context.body),
              ],
            ),
          ),

          Icon(
            Icons.arrow_forward_ios_rounded,
            size: 20,
            color: AppColors.pointColor,
          ),
        ],
      ),
    );
  }
}
