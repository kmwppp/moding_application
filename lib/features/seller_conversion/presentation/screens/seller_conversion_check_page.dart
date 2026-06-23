import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:moding_application/core/presentation/widgets/custom_button.dart';
import 'package:moding_application/core/theme/app_box_styles.dart';
import 'package:moding_application/core/theme/app_text_styles.dart';
import 'package:moding_application/features/seller_conversion/presentation/screens/widgets/seller_conversion_sliver_appbar.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../router/enums/notification_type.dart';
import '../../../profile/domain/enums/approval_status.dart';

class SellerConversionCheckPage extends StatelessWidget {
  const SellerConversionCheckPage({super.key, this.approvalStatus});

  final ApprovalStatus? approvalStatus;

  @override
  Widget build(BuildContext context) {
    final isRejected = approvalStatus == ApprovalStatus.REJECTED;

    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SellerConversionSliverAppbar(
              title: isRejected ? "판매자 전환 반려" : "판매자 전환 대기",
            ),
            SliverFillRemaining(
              hasScrollBody: false,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(20),
                        decoration: AppBoxStyles.borderBox,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              isRejected
                                  ? "판매자 전환 신청이 반려되었습니다."
                                  : "판매자 전환 신청을 완료했습니다.",
                              style: context.titleSmall.copyWith(
                                color: isRejected
                                    ? AppColors.pointColor
                                    : AppColors.primary,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SizedBox(height: 20),
                            Text(
                              isRejected
                                  ? "카카오톡 채널을 통해 문의해주세요."
                                  : "제출하신 신청서는 순차적으로 검토되며, 서류가 미비한 경우 보완 요청이 있을 수 있습니다.",
                              style: context.body.copyWith(),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(height: 10),
                            if (!isRejected)
                              Text(
                                "승인까지 영업일 기준 1~2일이 소요될 수 있습니다.",
                                style: context.caption.copyWith(),
                                textAlign: TextAlign.center,
                              )
                            else
                              GestureDetector(
                                onTap: () {
                                  context.push(
                                    '/seller_conversion?goMainOnSuccess=true',
                                  );
                                },
                                child: CustomButton(
                                  title: "재신청",
                                  boxColor: AppColors.pointColor,
                                  borderColor: AppColors.pointColor,
                                  textColor: Colors.white,
                                ),
                              ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      InkWell(
                        onTap: () async {
                          openKakao();
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            width: double.infinity,
                            alignment: Alignment.center,
                            height: 40,
                            color: AppColors.kakaoColor,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "assets/images/icons/kakaoTalkIcon.png",
                                  width: 40,
                                  height: 40,
                                  fit: BoxFit.cover,
                                ),
                                Text(
                                  "카카오톡 문의하기",
                                  style: context.body.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                context.push(
                                  '/notification/${NotificationType.NOTIFICATION.name}',
                                );
                              },
                              child: Container(
                                height: 40,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                    color: AppColors.lightGrey,
                                    width: 2,
                                  ),
                                ),
                                child: Text(
                                  "공지사항",
                                  style: context.body.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                context.push(
                                  '/notification/${NotificationType.FAQ.name}',
                                );
                              },
                              child: Container(
                                height: 40,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                    color: AppColors.lightGrey,
                                    width: 2,
                                  ),
                                ),
                                child: Text(
                                  "자주 묻는 질문",
                                  style: context.body.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> openKakao() async {
    final Uri url = Uri.parse('https://pf.kakao.com/_CixjCX');

    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      throw Exception('링크 열기 실패');
    }
  }
}
