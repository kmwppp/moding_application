import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/constants/app_colors.dart';
import '../../../../../../core/theme/app_text_styles.dart';

class DescriptionImageSection extends StatelessWidget {
  const DescriptionImageSection({
    super.key,
    required this.imageUrls,
    required this.isExpanded,
    required this.onToggle,
  });

  final List<String> imageUrls;
  final bool isExpanded;
  final VoidCallback onToggle;

  @override
  Widget build(BuildContext context) {
    if (imageUrls.isEmpty) {
      return const SizedBox.shrink();
    }

    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          if (isExpanded) ...[
            ...imageUrls.map(_buildFullImage),
          ] else ...[
            SizedBox(
              height: 400,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  _buildCollapsedImage(imageUrls.first),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 120,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Colors.transparent, Colors.white],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 12, 16, 0),
            child: OutlinedButton(
              onPressed: onToggle,
              style: OutlinedButton.styleFrom(
                minimumSize: const Size.fromHeight(48),
                side: const BorderSide(color: AppColors.mediumGrey),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: Text(
                isExpanded ? '상세 접기' : '상세보기',
                style: context.body.copyWith(
                  fontWeight: FontWeight.w700,
                  color: AppColors.textColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCollapsedImage(String imageUrl) {
    final encodedUrl = Uri.encodeFull(imageUrl);
    return CachedNetworkImage(
      imageUrl: encodedUrl,
      cacheKey: encodedUrl,
      fit: BoxFit.cover,
      alignment: Alignment.topCenter,
      placeholder: (context, url) =>
          const Center(child: CircularProgressIndicator()),
      errorWidget: (context, url, error) {
        return Container(
          color: Colors.grey[100],
          child: const Center(child: Icon(Icons.broken_image)),
        );
      },
    );
  }

  Widget _buildFullImage(String imageUrl) {
    final encodedUrl = Uri.encodeFull(imageUrl);
    return CachedNetworkImage(
      imageUrl: encodedUrl,
      cacheKey: encodedUrl,
      width: double.infinity,
      fit: BoxFit.fitWidth,
      placeholder: (context, url) => const SizedBox(
          height: 400,
          child: Center(child: CircularProgressIndicator()),
        ),
      errorWidget: (context, url, error) {
        return Container(
          height: 240,
          color: Colors.grey[100],
          alignment: Alignment.center,
          child: const Icon(Icons.broken_image),
        );
      },
    );
  }
}
