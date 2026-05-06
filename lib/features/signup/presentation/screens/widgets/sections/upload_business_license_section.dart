import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:moding_application/features/signup/presentation/providers/step2_providers/signup_step2_viewmodel.dart';

import '../../../../../../core/constants/app_colors.dart';
import '../../../../../../core/constants/app_strings.dart';
import '../../../../../../core/presentation/widgets/confirm_button.dart';
import '../../../../../../core/theme/app_text_styles.dart';
import '../signup_step2_box.dart';

class UploadBusinessLicenseSection extends ConsumerWidget {
  const UploadBusinessLicenseSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // watch는 상태 변화를 감시하고 UI를 빌드할 때 사용
    final imagePath = ref.watch(
      signupStep2ViewModelProvider.select((s) => s.imagePath),
    );
    final notifier = ref.read(signupStep2ViewModelProvider.notifier);

    return SignupStep2Box(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppStrings.uploadBusinessLicenseTitle,
            style: context.bodyLarge.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10), // spacing 대신 명시적인 간격 (Flutter 버전 호환성)

          GestureDetector(
            onTap: () => notifier.pickBusinessLicenseImage(),
            // 로직을 ViewModel로 위임
            child: ConfirmButton(buttonTitle: AppStrings.uploadBusinessLicense),
          ),

          const SizedBox(height: 10),

          _ImagePreviewArea(imagePath: imagePath),
        ],
      ),
    );
  }
}

/// 이미지 미리보기 영역을 별도 위젯으로 분리
class _ImagePreviewArea extends StatelessWidget {
  final String imagePath;

  const _ImagePreviewArea({required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.mediumGrey,
          borderRadius: BorderRadius.circular(6),
        ),
        child: imagePath.isNotEmpty
            ? ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: Image.file(
                  File(imagePath),
                  fit: BoxFit.cover,
                  // 이미지 로딩 실패 시 처리
                  errorBuilder: (context, error, stackTrace) => const Center(
                    child: Icon(Icons.error_outline, color: Colors.white),
                  ),
                ),
              )
            : const Icon(Icons.photo, size: 60, color: Colors.white),
      ),
    );
  }
}
