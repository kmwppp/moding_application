import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/presentation/dialog/common_dialog.dart';
import '../../../../../core/theme/app_text_styles.dart';
import '../../../../payment_complete/presentation/screens/widgets/payment_complete_common_box.dart';
import '../../providers/edit_my_info_viewmodel.dart';

class NotificationSettingSection extends ConsumerWidget {
  const NotificationSettingSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(editMyInfoViewModelProvider);
    return PaymentCompleteCommonBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "앱 알림 설정",
            style: context.bodyLarge.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 6),
          Row(
            children: [
              Text('전체 알림', style: context.body),
              const Spacer(),
              Transform.scale(
                scale: 0.7,
                child: Switch(
                  value:
                      state.maskingMyInfo?.data.isNotificationEnabled ?? false,
                  activeThumbColor: AppColors.primary,
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  padding: EdgeInsets.zero,
                  onChanged: (value) async {
                    final response = await ref
                        .read(editMyInfoViewModelProvider.notifier)
                        .patchNotificationSettings(value);
                    if (!context.mounted || response.success) {
                      return;
                    }
                    await CommonDialog.show(
                      context,
                      title: '오류',
                      isSuccess: false,
                      message: response.message.isEmpty
                          ? '알림 설정 변경에 실패했습니다.'
                          : response.message,
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
