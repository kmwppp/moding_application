import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:moding_application/core/theme/app_box_styles.dart';
import 'package:moding_application/core/theme/app_text_styles.dart';
import 'package:moding_application/features/seller_conversion/presentation/screens/widgets/seller_conversion_sliver_appbar.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../router/enums/notification_type.dart';

class SellerConversionCheckPage extends StatelessWidget {
  const SellerConversionCheckPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            const SellerConversionSliverAppbar(title: "판매자 전환 대기"),
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
                              "판매자 전환 신청을 완료했습니다.",
                              style: context.titleSmall.copyWith(
                                color: AppColors.primary,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SizedBox(height: 20),
                            Text(
                              "순차적으로 확인 후 승인이 완료되며, 미비한 서류가 있으면 추가 요청이 있을 수 있습니다.",
                              style: context.body.copyWith(),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(height: 10),
                            Text(
                              "영업일 기준 1~2일 소요될 수 있습니다.",
                              style: context.caption.copyWith(),
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
