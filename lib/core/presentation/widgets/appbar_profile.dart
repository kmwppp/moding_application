import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:moding_application/core/theme/app_text_styles.dart';

import '../../constants/app_colors.dart';

class AppBarProfile extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const AppBarProfile({super.key, this.title = ""});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.primary,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back, color: Colors.white),
        onPressed: () {
          context.pop();
        },
      ),
      title: Text(
        title,
        style: context.bodyLarge.copyWith(color: Colors.white),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56);
}
