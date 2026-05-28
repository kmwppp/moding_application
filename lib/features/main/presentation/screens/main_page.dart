import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:moding_application/core/constants/app_colors.dart';
import 'package:moding_application/core/services/token_storage.dart';
import 'package:moding_application/core/theme/app_text_styles.dart';
import 'package:moding_application/features/cart/presentation/screens/cart_main_page.dart';
import 'package:moding_application/features/category/presentation/screens/category_page_main.dart';
import 'package:moding_application/features/home/presentation/screens/home_page_main.dart';
import 'package:moding_application/features/identity_verification/domain/entities/identity_verification_page_params.dart';
import 'package:moding_application/features/main/presentation/providers/main_viewmodel.dart';
import 'package:moding_application/features/search/presentation/screens/search_page_main.dart';

import '../../../profile/presentation/screens/profile_page_main.dart';
import '../../domain/enums/MainTab.dart';

// 하단 네비게이션 아이템
final List<String> _navItems = const [
  "homeIcon.png",
  "searchIcon.png",
  "orderIcon.png",
  "cartBottomIcon.png",
  "profileIcon.png",
];

class MainPage extends ConsumerStatefulWidget {
  const MainPage({super.key, this.showRefundAccountPrompt = false});

  final bool showRefundAccountPrompt;

  @override
  ConsumerState<MainPage> createState() => _MainPageState();
}

class _MainPageState extends ConsumerState<MainPage> {
  DateTime? _lastBackPressed;
  final Set<int> _loadedPageIndexes = {0};
  bool _hasShownRefundAccountPrompt = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _showRefundAccountPromptIfNeeded();
    });
  }

  @override
  Widget build(BuildContext context) {
    if (widget.showRefundAccountPrompt && !_hasShownRefundAccountPrompt) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        _showRefundAccountPromptIfNeeded();
      });
    }

    final state = ref.watch(mainViewModelProvider);
    final currentIndex = state.currentTab.index;
    final visiblePageIndexes = {..._loadedPageIndexes, currentIndex};

    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) {
        if (didPop) return;

        /// 🔹 홈 탭 아니면 홈으로
        if (state.currentTab != MainTab.home) {
          ref.read(mainViewModelProvider.notifier).changeTab(MainTab.home);
          return;
        }

        final now = DateTime.now();

        if (_lastBackPressed == null ||
            now.difference(_lastBackPressed!) > const Duration(seconds: 2)) {
          _lastBackPressed = now;

          showIosToast(context, '한 번 더 누르면 종료됩니다.');
          return;
        }

        /// 🔹 앱 종료
        SystemNavigator.pop();
      },

      child: AnnotatedRegion<SystemUiOverlayStyle>(
        value: const SystemUiOverlayStyle(
          statusBarColor: AppColors.primary,
          statusBarIconBrightness: Brightness.dark,
          statusBarBrightness: Brightness.light,
        ),
        child: Scaffold(
          body: IndexedStack(
            index: currentIndex,
            children: List.generate(
              _navItems.length,
              (index) => visiblePageIndexes.contains(index)
                  ? _buildPage(index)
                  : const SizedBox.shrink(),
            ),
          ),

          bottomNavigationBar: Container(
            decoration: const BoxDecoration(
              color: AppColors.primary2,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              child: Theme(
                data: Theme.of(context).copyWith(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                ),
                child: BottomNavigationBar(
                  backgroundColor: Colors.white,
                  currentIndex: state.currentTab.index,
                  onTap: _handleTabTap,
                  type: BottomNavigationBarType.fixed,
                  showSelectedLabels: false,
                  showUnselectedLabels: false,
                  selectedFontSize: 0,
                  unselectedFontSize: 0,
                  items: _navItems
                      .map((item) => _buildBottomItem(item))
                      .toList(),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _handleTabTap(int index) async {
    final next = MainTabX.fromIndex(index);

    if (_requiresLogin(next)) {
      final accessToken = await ref.read(tokenStorageProvider).getAccessToken();
      if (!mounted) return;

      if (accessToken == null || accessToken.trim().isEmpty) {
        final loginResult = await context.push<bool>('/login');
        if (!mounted || loginResult != true) return;
      }
    }

    _loadedPageIndexes.add(index);

    final current = ref.read(mainViewModelProvider).currentTab;

    /// 🔹 같은 탭 다시 누르면
    if (current == next) {
      setState(() {});
      return;
    }

    ref.read(mainViewModelProvider.notifier).changeTab(next);
  }

  bool _requiresLogin(MainTab tab) {
    return tab == MainTab.cart || tab == MainTab.profile;
  }

  Widget _buildPage(int index) {
    switch (MainTabX.fromIndex(index)) {
      case MainTab.home:
        return const HomePageMain();
      case MainTab.search:
        return const SearchPageMain(isMain: true);
      case MainTab.category:
        return const CategoryPageMain();
      case MainTab.cart:
        return const CartMainPage(isMain: true);
      case MainTab.profile:
        return const ProfilePageMain();
    }
  }

  BottomNavigationBarItem _buildBottomItem(String item) {
    const basePath = "assets/images/icons/";

    return BottomNavigationBarItem(
      icon: Image.asset(
        "$basePath$item",
        width: 30,
        height: 30,
        color: AppColors.darkGrey,
      ),
      activeIcon: Image.asset(
        "$basePath$item",
        width: 30,
        height: 30,
        color: AppColors.primary,
      ),
      label: '',
    );
  }

  void showIosToast(BuildContext context, String message) {
    final overlay = Overlay.of(context);

    final entry = OverlayEntry(
      builder: (context) => Positioned(
        bottom: 150,
        left: 40,
        right: 40,
        child: Material(
          color: Colors.transparent,
          child: Center(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
              decoration: BoxDecoration(
                color: Colors.black.withValues(alpha: 0.7),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Text(
                message,
                style: context.bodySmall.copyWith(color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );

    overlay.insert(entry);

    Future.delayed(const Duration(seconds: 2), () {
      entry.remove();
    });
  }

  Future<void> _showRefundAccountPromptIfNeeded() async {
    if (!mounted ||
        !widget.showRefundAccountPrompt ||
        _hasShownRefundAccountPrompt) {
      return;
    }
    _hasShownRefundAccountPrompt = true;

    await showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (dialogContext) {
        return Dialog(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  '환불 계좌를 등록하시겠습니까?',
                  style: context.titleMedium.copyWith(
                    color: AppColors.primary,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 24),
                Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () => Navigator.of(dialogContext).pop(),
                        child: Container(
                          height: 36,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: AppColors.lightGrey,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(
                            '취소',
                            style: context.body.copyWith(
                              color: AppColors.darkGrey,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(dialogContext).pop();
                          context.push(
                            '/identity_verification',
                            extra: const IdentityVerificationPageParams(
                              successRoute: '/account_management',
                            ),
                          );
                        },
                        child: Container(
                          height: 36,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: AppColors.primary,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(
                            '등록',
                            style: context.body.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
