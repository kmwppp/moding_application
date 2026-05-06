import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:moding_application/core/presentation/widgets/app_badge_icon.dart';

import '../../../../../core/constants/app_colors.dart';

class ProductAppbar extends ConsumerWidget implements PreferredSizeWidget {
  const ProductAppbar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppBar(
      backgroundColor: AppColors.primary,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back, color: Colors.white),
        onPressed: () {
          // ref.invalidate(provider)
          context.pop();
        },
      ),
      actions: [
        Image.asset(
          "assets/images/icons/searchBarIcon.png",
          width: 24,
          color: Colors.white,
        ),
        const SizedBox(width: 14),
        AppBadgeIcon.cart(
          assetPath: "assets/images/icons/cartIcon.png",
          width: 24,
          color: Colors.white,
        ),
        const SizedBox(width: 20),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56);
}
