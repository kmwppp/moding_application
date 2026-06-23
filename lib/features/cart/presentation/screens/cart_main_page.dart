import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:moding_application/core/presentation/dialog/common_dialog.dart';
import 'package:moding_application/core/presentation/widgets/modal/app_bottom_sheet.dart';
import 'package:moding_application/features/cart/domain/cart_pricing.dart';
import 'package:moding_application/features/cart/presentation/providers/cart/cart_tab_jump_provider.dart';
import 'package:moding_application/features/cart/presentation/providers/cart/cart_viewmodel.dart';
import 'package:moding_application/features/cart/presentation/providers/wish_list/wish_list_viewmodel.dart';
import 'package:moding_application/features/cart/presentation/screens/wish_list/wish_list_page.dart';
import 'package:moding_application/features/order/data/repositories/order_repository_impl.dart';
import 'package:moding_application/router/entities/cart_order_page_params.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/presentation/widgets/custom_button.dart';
import '../../../../core/theme/app_text_styles.dart';
import 'cart/cart_page.dart';

final _currency = NumberFormat('#,###', 'ko_KR');

class CartMainPage extends ConsumerStatefulWidget {
  const CartMainPage({super.key, this.isMain = false});

  final bool isMain;

  @override
  ConsumerState<CartMainPage> createState() => _CartMainPageState();
}

class _CartMainPageState extends ConsumerState<CartMainPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late ScrollController _scrollController;
  bool _isBottomVisible = true;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(length: 2, vsync: this);
    _scrollController = ScrollController();
    _tabController.addListener(() => setState(() {}));

    _scrollController.addListener(() {
      final position = _scrollController.position;

      if (position.pixels >= position.maxScrollExtent - 10) {
        if (!_isBottomVisible) {
          setState(() => _isBottomVisible = true);
        }
        return;
      }

      if (position.userScrollDirection == ScrollDirection.reverse) {
        if (_isBottomVisible) {
          setState(() => _isBottomVisible = false);
        }
      } else if (position.userScrollDirection == ScrollDirection.forward) {
        if (!_isBottomVisible) {
          setState(() => _isBottomVisible = true);
        }
      }
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final cartState = ref.watch(cartViewModelProvider);
    final wishListState = ref.watch(wishListModelProvider);
    final jumpToTab = ref.watch(cartTabJumpRequestProvider);
    final cartCount = cartState.cartData?.data.length ?? 0;
    final wishListCount = wishListState.wishListDto?.totalElements ?? 0;

    if (jumpToTab != null &&
        jumpToTab >= 0 &&
        jumpToTab < _tabController.length &&
        _tabController.index != jumpToTab) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (!mounted) return;
        if (_tabController.index != jumpToTab) {
          _tabController.animateTo(jumpToTab);
        }
        ref.read(cartTabJumpRequestProvider.notifier).clear();
      });
    }

    final items = cartState.cartData?.data ?? [];
    final selectedIds = cartState.selectedCartItemIds;
    final hasSelectedUnavailableItems = items.any(
      (item) =>
          item.cartItemId != null &&
          selectedIds.contains(item.cartItemId) &&
          (item.isAvailable != true ||
              (item.options ?? const []).any((option) => option.isUnavailable)),
    );
    final selectedProduct = CartPricing.sumProductAmountSelected(
      items,
      selectedIds,
    );
    final selectedShip = CartPricing.sumShippingSelected(items, selectedIds);
    final selectedPay = selectedProduct + selectedShip;

    return Scaffold(
      body: Stack(
        children: [
          NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) => [
              _buildCartAppbar(context, '장바구니', widget.isMain),
              SliverToBoxAdapter(
                child: TabBar(
                  controller: _tabController,
                  indicatorColor: AppColors.primary,
                  indicatorWeight: 2,
                  labelColor: AppColors.darkGrey,
                  unselectedLabelColor: AppColors.darkGrey,
                  labelStyle: context.body.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                  unselectedLabelStyle: context.body.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
                  tabs: [
                    Tab(
                      text: '일반구매 ($cartCount)',
                      // child: SizedBox(
                      //   width: double.infinity,
                      //   child: Text(
                      //     '일반구매 ($cartCount)',
                      //     style: context.body.copyWith(
                      //       color: AppColors.darkGrey,
                      //     ),
                      //     textAlign: TextAlign.center,
                      //   ),
                      // ),
                    ),
                    Tab(
                      text: '찜한상품 ($wishListCount)',
                      // child: SizedBox(
                      //   width: double.infinity,
                      //   child: Text(
                      //     '찜한상품 ($wishListCount)',
                      //     style: context.body.copyWith(
                      //       color: AppColors.darkGrey,
                      //     ),
                      //     textAlign: TextAlign.center,
                      //   ),
                      // ),
                    ),
                  ],
                ),
              ),
            ],
            body: TabBarView(
              controller: _tabController,
              children: [
                CartPage(controller: _scrollController),
                WishListPage(isMain: widget.isMain),
              ],
            ),
          ),
          AnimatedBuilder(
            animation: _tabController.animation!,
            builder: (context, child) {
              final value = _tabController.animation!.value;
              final screenWidth = MediaQuery.of(context).size.width;

              return Transform.translate(
                offset: Offset(-value * screenWidth, 0),
                child: child,
              );
            },
            child: AnimatedSlide(
              duration: const Duration(milliseconds: 250),
              curve: Curves.easeOut,
              offset: _isBottomVisible ? Offset.zero : const Offset(0, 1),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: _tabController.index == 0
                    ? Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            topLeft: Radius.circular(10),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withValues(alpha: 0.08),
                              offset: const Offset(0, -4), // 👈 위쪽 그림자
                              blurRadius: 8,
                              spreadRadius: 0,
                            ),
                          ],
                        ),
                        padding: const EdgeInsets.fromLTRB(10, 10, 10, 6),
                        // 👈 top 줄임 (10 → 4)
                        child: SafeArea(
                          top: false,
                          child: SizedBox(
                            width: double.infinity,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  '총 ${selectedIds.length}개 상품 선택',
                                  style: context.bodyLarge.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 4),

                                GestureDetector(
                                  onTap: selectedIds.isEmpty
                                      ? null
                                      : () async {
                                          if (hasSelectedUnavailableItems) {
                                            await CommonDialog.show(
                                              context,
                                              title: '확인',
                                              isSuccess: false,
                                              message: '품절 상품이 포함되어 있습니다.',
                                            );
                                            return;
                                          }

                                          try {
                                            final pgProvider = await ref
                                                .read(orderRepositoryProvider)
                                                .getPaymentProvider();
                                            if (!mounted) return;

                                            context.push(
                                              '/cart_order',
                                              extra: CartOrderPageParams(
                                                cartItemIds: selectedIds
                                                    .toList(),
                                                pgProvider: pgProvider,
                                              ),
                                            );
                                          } catch (_) {
                                            if (!mounted) return;
                                            AppBottomSheet.show(
                                              context: context,
                                              child: const Text(
                                                '결제 수단 정보를 불러오지 못했습니다.',
                                              ),
                                            );
                                          }
                                        },
                                  child: Opacity(
                                    opacity: selectedIds.isEmpty ? 0.45 : 1,
                                    child: CustomButton(
                                      title:
                                          '${_currency.format(selectedPay)}원 구매하기',
                                      boxColor: AppColors.primary,
                                      textColor: Colors.white,
                                      paddingVertical: 6,
                                      textStyle: context.bodyLarge.copyWith(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    : const SizedBox.shrink(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  SliverAppBar _buildCartAppbar(
    BuildContext context,
    String title,
    bool isMain,
  ) {
    return SliverAppBar(
      pinned: true,
      backgroundColor: Colors.white,
      scrolledUnderElevation: 0,
      surfaceTintColor: Colors.white,
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(1.0),
        child: Container(
          color: Colors.grey.withValues(alpha: 0.3),
          height: 1.0,
        ),
      ),
      leading: !isMain
          ? IconButton(
              icon: const Icon(Icons.arrow_back, color: AppColors.darkGrey),
              onPressed: context.pop,
            )
          : null,
      title: Text(
        title,
        style: context.title.copyWith(fontWeight: FontWeight.w600),
      ),
    );
  }
}
