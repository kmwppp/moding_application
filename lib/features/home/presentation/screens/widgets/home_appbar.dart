import 'package:flutter/material.dart';

class HomeAppbar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    const String logoPath = "assets/images/logo.png";

    return AppBar(
      // 1. 왼쪽: 로고 (이미지 비율 유지를 위해 Center/Padding 조합)
      leading: Padding(
        padding: const EdgeInsets.only(left: 16.0), // 왼쪽 여백 확보
        child: Center(
          child: Image.asset(
            logoPath,
            width: 32,
            height: 32,
            errorBuilder: (context, error, stackTrace) =>
                const Icon(Icons.image),
          ),
        ),
      ),
      leadingWidth: 56,
      // 로고 공간 확보

      // 2. 중간: 서치바 (추출된 메서드 사용)

      // 3. 오른쪽: 액션 아이콘들
      actions: [
        IconButton(
          icon: const Icon(Icons.notifications_outlined),
          onPressed: () => print("Notification pressed"),
        ),
        IconButton(
          icon: const Icon(Icons.shopping_cart_outlined),
          onPressed: () => print("Cart pressed"),
        ),
        const SizedBox(width: 8), // 오른쪽 끝 여백
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56);
}
