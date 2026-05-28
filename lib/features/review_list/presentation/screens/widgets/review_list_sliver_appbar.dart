import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/theme/app_text_styles.dart';

class ReviewListSliverAppbar extends ConsumerWidget {
  const ReviewListSliverAppbar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SliverAppBar(
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
      leading: IconButton(
        icon: const Icon(Icons.arrow_back, color: AppColors.darkGrey),
        onPressed: context.pop,
      ),

      /// ⭐ 상태바 스타일
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent, // 상태바 배경
        statusBarIconBrightness: Brightness.dark, // 안드로이드 아이콘
        statusBarBrightness: Brightness.light, // iOS 아이콘
      ),

      /// ⭐ 검색바 영역
      title: Text(
        "리뷰 작성 내역",
        style: context.title.copyWith(fontWeight: FontWeight.w600),
      ),
    );
  }
}
