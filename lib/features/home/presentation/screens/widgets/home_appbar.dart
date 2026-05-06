import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:moding_application/core/presentation/widgets/app_badge_icon.dart';
import 'package:moding_application/features/main/domain/enums/MainTab.dart';
import 'package:moding_application/features/main/presentation/providers/main_viewmodel.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/theme/app_text_styles.dart';

class HomeSliverAppbar extends ConsumerWidget {
  const HomeSliverAppbar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    const String logoPath = "assets/images/logo4.png";

    return SliverAppBar(
      titleSpacing: 0,
      backgroundColor: Colors.white,
      surfaceTintColor: Colors.transparent,
      // ⭐ Material3 tint 제거
      scrolledUnderElevation: 0,
      // ⭐ 스크롤 시 elevation 제거
      pinned: true,
      // 스크롤해도 상단 고정
      floating: false,
      elevation: 0,
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(1.0),
        child: Container(
          color: Colors.grey.withValues(alpha: 0.3),
          height: 1.0,
        ),
      ),

      /// ⭐ 상태바 스타일
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent, // 상태바 배경
        statusBarIconBrightness: Brightness.dark, // 안드로이드 아이콘
        statusBarBrightness: Brightness.dark, // iOS 아이콘
      ),

      leading: Padding(
        padding: const EdgeInsets.only(left: 16.0),
        child: Center(
          child: Image.asset(
            logoPath,
            width: 24,
            height: 24,
            errorBuilder: (context, error, stackTrace) =>
                const Icon(Icons.image),
          ),
        ),
      ),

      actions: [
        IconButton(
          icon: AppBadgeIcon.notification(
            assetPath: "assets/images/icons/bellIcon.png",
            width: 26,
            color: AppColors.darkGrey,
          ),
          onPressed: () {
            context.push('/alarm');
          },
        ),
        IconButton(
          icon: AppBadgeIcon.cart(
            assetPath: "assets/images/icons/cartIcon.png",
            width: 24,
            color: AppColors.darkGrey,
          ),
          onPressed: () =>
              ref.read(mainViewModelProvider.notifier).changeTab(MainTab.cart),
        ),
        const SizedBox(width: 8),
      ],

      /// ⭐ 검색바 영역
      title: PreferredSize(
        preferredSize: const Size.fromHeight(6),
        child: GestureDetector(
          onTap: () {
            ref.read(mainViewModelProvider.notifier).changeTab(MainTab.search);
          },
          child: Column(
            children: [
              _buildSearchBar(context),
              Container(height: 1, color: AppColors.mediumGrey),
            ],
          ),
        ),
      ),
    );
  }

  // 서치바 위젯 분리
  Widget _buildSearchBar(BuildContext context) {
    final searchIcon = "assets/images/icons/searchBarIcon.png";
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Container(
        height: 40,
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(10), // 조금 더 현대적인 둥근 수치
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  "상품 및 검색어를 입력하세요.",
                  style: context.body.copyWith(color: AppColors.darkGrey),
                ),
              ),

              Image.asset(searchIcon, width: 24),
            ],
          ),
        ),
      ),
    );
  }
}
