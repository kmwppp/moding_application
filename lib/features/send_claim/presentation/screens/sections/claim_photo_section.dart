import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:moding_application/core/presentation/widgets/app_divider.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/presentation/widgets/app_tooltip.dart';
import '../../../../../core/theme/app_text_styles.dart';
import '../../providers/send_claim_viewmodel.dart';

class ClaimPhotoSection extends ConsumerWidget {
  const ClaimPhotoSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(sendClaimViewModelProvider);
    final notifier = ref.read(sendClaimViewModelProvider.notifier);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20),
          Row(
            children: [
              Text("상품 사진 첨부", style: context.titleMedium),
              SizedBox(width: 6),
              AppTooltip(
                content: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "정확한 확인을 위해 외박스, 운송장, 상품 전체, 문제 부위 사진을 함께 첨부해 주세요.",
                      style: context.bodySmall,
                    ),
                  ],
                ),
                child: Icon(
                  Icons.help_outline,
                  size: 16,
                  color: AppColors.pointColor,
                ),
              ),
            ],
          ),

          SizedBox(height: 10),
          SizedBox(
            height: 120,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                GestureDetector(
                  onTap: () => _showPhotoSourceSheet(context, ref),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      width: 120,
                      height: 120,
                      alignment: Alignment.center,
                      color: AppColors.mediumGrey,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.add, color: Colors.white),
                          Text(
                            "사진 업로드",
                            style: context.caption.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                for (final photo in state.photos) ...[
                  const SizedBox(width: 10),
                  _ClaimPhotoPreview(
                    photoPath: photo,
                    onRemove: () => notifier.removePhoto(photo),
                  ),
                ],
              ],
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }

  void _showPhotoSourceSheet(BuildContext context, WidgetRef ref) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white,
      builder: (context) {
        final notifier = ref.read(sendClaimViewModelProvider.notifier);

        return SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  leading: const Icon(Icons.photo_library_outlined),
                  title: const Text('갤러리에서 선택'),
                  onTap: () {
                    Navigator.of(context).pop();
                    notifier.pickPhoto(ImageSource.gallery);
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.photo_camera_outlined),
                  title: const Text('사진 촬영'),
                  onTap: () {
                    Navigator.of(context).pop();
                    notifier.pickPhoto(ImageSource.camera);
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class _ClaimPhotoPreview extends StatelessWidget {
  const _ClaimPhotoPreview({required this.photoPath, required this.onRemove});

  final String photoPath;
  final VoidCallback onRemove;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.file(
            File(photoPath),
            width: 120,
            height: 120,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          top: 6,
          right: 6,
          child: GestureDetector(
            onTap: onRemove,
            child: Container(
              width: 22,
              height: 22,
              decoration: const BoxDecoration(
                color: AppColors.darkGrey,
                shape: BoxShape.circle,
              ),
              child: const Icon(Icons.close, color: Colors.white, size: 14),
            ),
          ),
        ),
      ],
    );
  }
}
