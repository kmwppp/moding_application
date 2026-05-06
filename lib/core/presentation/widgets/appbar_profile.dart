import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:moding_application/core/theme/app_text_styles.dart';

import '../../constants/app_colors.dart';

class AppBarProfile extends ConsumerWidget implements PreferredSizeWidget {
  final String title;

  const AppBarProfile({super.key, this.title = ""});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppBar(
      backgroundColor: Colors.white,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back, color: AppColors.darkGrey),
        onPressed: () {
          // ref.invalidate(provider)
          context.pop();
        },
      ),
      title: Text(
        title,
        style: context.bodyLarge.copyWith(color: Colors.black),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56);
}
