import 'package:flutter/material.dart';
import 'package:moding_application/core/presentation/widgets/modal/app_bottom_sheet.dart';
import 'package:moding_application/core/theme/app_text_styles.dart';
import 'package:moding_application/features/product/domain/entities/seller_info_dto.dart';

void showSellerInfoBottomSheet(
  BuildContext context,
  SellerInfoDto sellerInfo,
) {
  AppBottomSheet.show(
    context: context,
    title: "판매자 정보",
    child: SafeArea(
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("상호: ${sellerInfo.businessName}", style: context.bodySmall),
            Text("대표자: ${sellerInfo.ownerName}", style: context.bodySmall),
            Text(
              "사업자번호: ${sellerInfo.businessNumber}",
              style: context.bodySmall,
            ),
            Text("주소: ${sellerInfo.address}", style: context.bodySmall),
            Text("연락처: ${sellerInfo.phone}", style: context.bodySmall),
          ],
        ),
      ),
    ),
  );
}
