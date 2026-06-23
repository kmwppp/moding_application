import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:moding_application/core/presentation/dialog/common_dialog.dart';
import 'package:moding_application/features/profile/presentation/providers/profile_viewmodel.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/presentation/providers/app_viewmodel_reset.dart';
import '../../../../../core/presentation/widgets/text_with_cehvron.dart';
import '../../../../../core/services/token_storage.dart';
import '../../../../../core/theme/app_text_styles.dart';
import '../../../../../router/enums/notification_type.dart';

class SupportSection extends ConsumerWidget {
  const SupportSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(profileViewModelProvider);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "모딩 고객센터",
            style: context.body.copyWith(
              fontWeight: FontWeight.w600,
              color: AppColors.darkGrey,
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
                      style: context.body.copyWith(fontWeight: FontWeight.bold),
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
                      border: Border.all(color: AppColors.lightGrey, width: 2),
                    ),
                    child: Text(
                      "공지사항",
                      style: context.body.copyWith(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: InkWell(
                  onTap: () {
                    context.push('/notification/${NotificationType.FAQ.name}');
                  },
                  child: Container(
                    height: 40,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: AppColors.lightGrey, width: 2),
                    ),
                    child: Text(
                      "자주 묻는 질문",
                      style: context.body.copyWith(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          GestureDetector(
            onTap: () async {
              final shouldLogout = await CommonDialog.showChoice(
                context,
                title: '로그아웃',
                isSuccess: false,
                message: '로그아웃 하시겠습니까?',
                primaryButtonText: '확인',
                secondaryButtonText: '취소',
              );
              if (shouldLogout != true) return;

              await ref.read(tokenStorageProvider).deleteAll();
              resetAppViewModels(ref);
              if (!context.mounted) return;
              context.go('/main');
            },
            child: Container(
              width: double.infinity,
              alignment: Alignment.center,
              child: TextWithChevron(
                text: '로그아웃',
                style: context.caption.copyWith(color: AppColors.darkGrey),
                iconSize: 10,
                spacing: 2,
              ),
            ),
          ),
          const SizedBox(height: 50),
        ],
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
