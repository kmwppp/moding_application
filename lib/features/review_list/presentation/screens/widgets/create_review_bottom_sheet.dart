import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/presentation/dialog/common_dialog.dart';
import '../../../../../core/presentation/widgets/custom_button.dart';
import '../../../../../core/theme/app_text_styles.dart';
import '../../providers/review_list_viewmodel.dart';

class CreateReviewBottomSheet extends ConsumerStatefulWidget {
  const CreateReviewBottomSheet({
    super.key,
    required this.parentContext,
    required this.orderId,
    required this.productName,
    required this.optionName,
    this.onCreated,
  });

  final BuildContext parentContext;
  final int orderId;
  final String productName;
  final String optionName;
  final VoidCallback? onCreated;

  @override
  ConsumerState<CreateReviewBottomSheet> createState() =>
      _CreateReviewBottomSheetState();
}

class _CreateReviewBottomSheetState
    extends ConsumerState<CreateReviewBottomSheet> {
  late final TextEditingController _contentController;
  final List<String> _localPhotoPaths = [];
  int _contentLength = 0;

  @override
  void initState() {
    super.initState();
    _contentController = TextEditingController();
    _contentController.addListener(_handleContentChanged);
  }

  @override
  void dispose() {
    _contentController.removeListener(_handleContentChanged);
    _contentController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(widget.productName, style: context.titleSmall),
          if (widget.optionName.isNotEmpty) ...[
            const SizedBox(height: 4),
            Text(
              widget.optionName,
              style: context.bodySmall.copyWith(color: AppColors.darkGrey),
            ),
          ],
          const SizedBox(height: 16),
          TextField(
            controller: _contentController,
            maxLines: 5,
            inputFormatters: [LengthLimitingTextInputFormatter(20)],
            decoration: InputDecoration(
              hintText: '리뷰 내용을 입력해주세요.',
              filled: true,
              fillColor: AppColors.lightGrey,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none,
              ),
            ),
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Expanded(
                child: Text(
                  '리뷰 내용은 10자 이상 20자 이하로 입력해주세요.',
                  style: context.caption.copyWith(color: AppColors.darkGrey),
                ),
              ),
              Text(
                '$_contentLength/20',
                style: context.caption.copyWith(color: AppColors.darkGrey),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: _pickPhotosFromGallery,
                  child: CustomButton(
                    title: '사진 선택',
                    boxColor: AppColors.primary,
                    textColor: Colors.white,
                    paddingVertical: 6,
                  ),
                ),
              ),
              const SizedBox(width: 6),
              Expanded(
                child: GestureDetector(
                  onTap: _pickPhotoFromCamera,
                  child: CustomButton(
                    title: '사진 촬영',
                    boxColor: AppColors.pointColor,
                    textColor: Colors.white,
                    paddingVertical: 6,
                    borderColor: AppColors.pointColor,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            '사진은 최대 3장까지 첨부할 수 있으며 없어도 됩니다.',
            style: context.caption.copyWith(color: AppColors.darkGrey),
          ),
          if (_localPhotoPaths.isNotEmpty) ...[
            const SizedBox(height: 12),
            SizedBox(
              height: 88,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: _localPhotoPaths.length,
                separatorBuilder: (context, index) => const SizedBox(width: 10),
                itemBuilder: (context, index) {
                  final imagePath = _localPhotoPaths[index];
                  return _CreateReviewPhotoThumbnail(
                    imagePath: imagePath,
                    onDelete: () {
                      setState(() {
                        _localPhotoPaths.removeAt(index);
                      });
                    },
                    onTap: () =>
                        _showImagePreview(context, imagePath: imagePath),
                  );
                },
              ),
            ),
          ],
          const SizedBox(height: 20),
          GestureDetector(
            onTap: _submitReviewCreate,
            child: CustomButton(
              title: '리뷰 작성',
              boxColor: AppColors.primary,
              textColor: Colors.white,
              paddingVertical: 12,
            ),
          ),
        ],
      ),
    );
  }

  void _handleContentChanged() {
    final nextLength = _contentController.text.length;
    if (_contentLength == nextLength) return;
    setState(() {
      _contentLength = nextLength;
    });
  }

  Future<void> _pickPhotosFromGallery() async {
    final remaining = 3 - _localPhotoPaths.length;
    if (remaining <= 0) {
      await CommonDialog.show(
        context,
        title: '안내',
        isSuccess: false,
        message: '사진은 최대 3장까지 첨부할 수 있습니다.',
      );
      return;
    }

    try {
      final picker = ImagePicker();
      final images = await picker.pickMultiImage(imageQuality: 85);
      if (images.isEmpty) return;

      setState(() {
        _localPhotoPaths.addAll(
          images.take(remaining).map((image) => image.path),
        );
      });

      if (images.length > remaining && mounted) {
        await CommonDialog.show(
          context,
          title: '안내',
          isSuccess: false,
          message: '사진은 최대 3장까지 첨부할 수 있습니다.',
        );
      }
    } catch (_) {
      if (!mounted) return;
      await CommonDialog.show(
        context,
        title: '오류',
        isSuccess: false,
        message: '사진을 불러오지 못했습니다.',
      );
    }
  }

  Future<void> _pickPhotoFromCamera() async {
    if (_localPhotoPaths.length >= 3) {
      await CommonDialog.show(
        context,
        title: '안내',
        isSuccess: false,
        message: '사진은 최대 3장까지 첨부할 수 있습니다.',
      );
      return;
    }

    try {
      final picker = ImagePicker();
      final image = await picker.pickImage(
        source: ImageSource.camera,
        imageQuality: 85,
      );
      if (image == null) return;

      setState(() {
        _localPhotoPaths.add(image.path);
      });
    } catch (_) {
      if (!mounted) return;
      await CommonDialog.show(
        context,
        title: '오류',
        isSuccess: false,
        message: '사진을 불러오지 못했습니다.',
      );
    }
  }

  Future<void> _submitReviewCreate() async {
    final content = _contentController.text.trim();
    if (content.length < 10 || content.length > 20) {
      await CommonDialog.show(
        context,
        title: '안내',
        isSuccess: false,
        message: '리뷰 내용은 10자 이상 20자 이하로 입력해주세요.',
      );
      return;
    }

    await CommonDialog.show(
      context,
      title: '리뷰 작성',
      isSuccess: false,
      message: '리뷰를 작성하시겠습니까?',
      onPressed: () async {
        final result = await ref
            .read(reviewListViewModelProvider.notifier)
            .postCreateReview(
              orderId: widget.orderId,
              content: content,
              localPhotoPaths: _localPhotoPaths,
            );

        if (!mounted) return;

        if (result.success) {
          widget.onCreated?.call();
          Navigator.of(context).pop();
          if (!widget.parentContext.mounted) return;
          await CommonDialog.show(
            widget.parentContext,
            title: '리뷰 작성',
            message: '리뷰를 등록했습니다.',
          );
        } else {
          if (!widget.parentContext.mounted) return;
          await CommonDialog.show(
            widget.parentContext,
            title: '오류',
            isSuccess: false,
            message: result.message.isEmpty ? '리뷰 작성에 실패했습니다.' : result.message,
          );
        }
      },
    );
  }

  Future<void> _showImagePreview(
    BuildContext context, {
    required String imagePath,
  }) {
    return showGeneralDialog(
      context: context,
      barrierLabel: 'create_review_image_preview',
      barrierDismissible: true,
      barrierColor: Colors.black.withValues(alpha: 0.72),
      pageBuilder: (dialogContext, animation, secondaryAnimation) {
        return SafeArea(
          child: Material(
            type: MaterialType.transparency,
            child: Stack(
              children: [
                Positioned.fill(
                  child: InteractiveViewer(
                    minScale: 1,
                    maxScale: 4,
                    child: Center(
                      child: Image.file(File(imagePath), fit: BoxFit.contain),
                    ),
                  ),
                ),
                Positioned(
                  top: 12,
                  right: 12,
                  child: GestureDetector(
                    onTap: () => Navigator.of(dialogContext).pop(),
                    child: Container(
                      width: 36,
                      height: 36,
                      decoration: const BoxDecoration(
                        color: Colors.white24,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.close,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class _CreateReviewPhotoThumbnail extends StatelessWidget {
  const _CreateReviewPhotoThumbnail({
    required this.imagePath,
    required this.onDelete,
    required this.onTap,
  });

  final String imagePath;
  final VoidCallback onDelete;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        GestureDetector(
          onTap: onTap,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.file(
              File(imagePath),
              width: 80,
              height: 80,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          top: -6,
          right: -6,
          child: GestureDetector(
            onTap: onDelete,
            child: Container(
              width: 20,
              height: 20,
              decoration: const BoxDecoration(
                color: AppColors.pointColor,
                shape: BoxShape.circle,
              ),
              child: const Icon(Icons.close, size: 14, color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
