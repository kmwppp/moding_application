import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:moding_application/core/services/token_storage.dart';
import 'package:moding_application/features/main/domain/enums/MainTab.dart';
import 'package:moding_application/features/main/presentation/providers/main_viewmodel.dart';
import 'package:moding_application/features/product/domain/enums/product_recommand_type.dart';
import 'package:moding_application/features/profile/domain/enums/approval_status.dart';
import 'package:moding_application/features/profile/domain/enums/role.dart';
import 'package:moding_application/features/profile/presentation/providers/profile_viewmodel.dart';
import 'package:moding_application/features/seller_web/presentation/utils/open_seller_web_page.dart';
import 'package:moding_application/router/entities/product_list_page_params.dart';

class AutoBanner extends ConsumerStatefulWidget {
  const AutoBanner({super.key});

  @override
  ConsumerState<AutoBanner> createState() => _AutoBannerState();
}

class _AutoBannerState extends ConsumerState<AutoBanner> {
  final PageController _controller = PageController();
  int currentIndex = 0;
  Timer? timer;

  final List<String> banners = [
    "assets/images/banners/main_banner1.png",
    "assets/images/banners/main_banner2.png",
    "assets/images/banners/main_banner3.png",
  ];

  @override
  void initState() {
    super.initState();

    timer = Timer.periodic(const Duration(seconds: 5), (timer) {
      if (_controller.hasClients) {
        currentIndex++;

        if (currentIndex >= banners.length) {
          currentIndex = 0;
        }

        _controller.animateToPage(
          currentIndex,
          duration: const Duration(milliseconds: 400),
          curve: Curves.easeInOut,
        );
      }
    });
  }

  @override
  void dispose() {
    timer?.cancel();
    _controller.dispose();
    super.dispose();
  }

  Future<void> _handleBannerTap(int index) async {
    switch (index) {
      case 0:
        await _handleFirstBannerTap();
        return;
      case 1:
        await _handleSecondBannerTap();
        return;
      case 2:
        _handleThirdBannerTap();
        return;
    }
  }

  Future<bool> _isLoggedIn() async {
    final accessToken = await ref.read(tokenStorageProvider).getAccessToken();
    return accessToken != null && accessToken.trim().isNotEmpty;
  }

  Future<void> _handleFirstBannerTap() async {
    final loggedIn = await _isLoggedIn();
    if (!mounted) return;

    if (!loggedIn) {
      context.push('/signup_new');
      return;
    }

    ref.read(mainViewModelProvider.notifier).changeTab(MainTab.profile);
  }

  Future<void> _handleSecondBannerTap() async {
    final loggedIn = await _isLoggedIn();
    if (!mounted) return;

    if (!loggedIn) {
      context.push('/signup_new');
      return;
    }

    ref.read(mainViewModelProvider.notifier).changeTab(MainTab.profile);

    var profile = ref.read(profileViewModelProvider).profileSummary?.data;
    if (profile == null) {
      await ref.read(profileViewModelProvider.notifier).getProfileSummary();
      if (!mounted) return;
      profile = ref.read(profileViewModelProvider).profileSummary?.data;
    }

    final role = profile?.role;
    final approvalStatus = profile?.approvalStatus;

    if (role == Role.SELLER) {
      await openSellerWebPage(context: context, ref: ref);
      return;
    }

    switch (approvalStatus) {
      case null:
        final result = await context.push<bool>('/seller_conversion');
        if (result == true) {
          await ref.read(profileViewModelProvider.notifier).getProfileSummary();
        }
        break;
      case ApprovalStatus.PENDING:
      case ApprovalStatus.REJECTED:
        context.push('/seller_conversion_check');
        break;
      case ApprovalStatus.APPROVED:
        await openSellerWebPage(context: context, ref: ref);
        break;
    }
  }

  void _handleThirdBannerTap() {
    context.push(
      '/product_list_page',
      extra: ProductListPageParams(type: ProductRecommendType.newProduct),
    );
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = width / 2.5;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: SizedBox(
        width: width,
        height: height,
        child: Stack(
          children: [
            PageView.builder(
              controller: _controller,
              itemCount: banners.length,
              onPageChanged: (index) {
                setState(() {
                  currentIndex = index;
                });
              },
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () => _handleBannerTap(index),
                  child: Image.asset(banners[index], fit: BoxFit.cover),
                );
              },
            ),
            Positioned(
              bottom: 8,
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  banners.length,
                  (index) => AnimatedContainer(
                    duration: const Duration(milliseconds: 200),
                    margin: const EdgeInsets.symmetric(horizontal: 3),
                    width: currentIndex == index ? 14 : 6,
                    height: 6,
                    decoration: BoxDecoration(
                      color: currentIndex == index
                          ? Colors.white
                          : Colors.white54,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
