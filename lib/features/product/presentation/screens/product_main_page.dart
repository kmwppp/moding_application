import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:moding_application/core/presentation/widgets/app_badge_icon.dart';
import 'package:moding_application/core/presentation/dialog/common_dialog.dart';
import 'package:moding_application/features/product/presentation/providers/product_viewmodel.dart';
import 'package:moding_application/features/product/presentation/screens/widgets/product_bottom_bar.dart';
import 'package:moding_application/features/product/presentation/screens/widgets/sections/price_info_section.dart';
import 'package:moding_application/features/product/presentation/screens/widgets/sections/product_detail_info_section.dart';
import 'package:moding_application/features/product/presentation/screens/widgets/sections/product_recommendation_section.dart';
import 'package:moding_application/features/product/presentation/screens/widgets/sections/review_section.dart';
import 'package:moding_application/features/product/presentation/screens/widgets/sections/select_option_section.dart';
import 'package:moding_application/features/product/presentation/screens/widgets/sections/top_image_section.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/presentation/widgets/loading_indicator.dart';
import '../../../../core/presentation/widgets/text_with_cehvron.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../../../cart/presentation/providers/cart/cart_viewmodel.dart';
import '../../../search/presentation/screens/widgets/search_masonry_list.dart';
import '../../domain/enums/product_recommand_type.dart';
import '../../../seller_info/data/repositories/seller_info_repository_impl.dart';
import '../../../seller_info/presentation/widgets/seller_info_bottom_sheet.dart';

class ProductMainPage extends ConsumerStatefulWidget {
  const ProductMainPage({super.key, required this.id});

  final int id;

  @override
  ConsumerState<ProductMainPage> createState() => _ProductMainPageState();
}

class _ProductMainPageState extends ConsumerState<ProductMainPage> {
  final ScrollController _scrollController = ScrollController();
  final GlobalKey _reviewKey = GlobalKey();

  bool _showBottomBar = true;
  double _lastOffset = 0;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_handleScroll);
  }

  void _handleScroll() {
    final offset = _scrollController.offset;

    // bottom bar
    if (offset - _lastOffset > 5 && _showBottomBar) {
      setState(() => _showBottomBar = false);
    } else if (_lastOffset - offset > 5 && !_showBottomBar) {
      setState(() => _showBottomBar = true);
    }

    _lastOffset = offset;

    final notifier = ref.read(productViewModelProvider(widget.id).notifier);
    final state = ref.read(productViewModelProvider(widget.id));

    final isNearBottom =
        _scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent - 300;

    if (isNearBottom && !state.businessLoading && state.businessHasNext) {
      notifier.loadNextBusiness(widget.id);
    }
  }

  @override
  void dispose() {
    _scrollController
      ..removeListener(_handleScroll)
      ..dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final cardWidth = MediaQuery.sizeOf(context).width;
    final state = ref.watch(productViewModelProvider(widget.id));

    ref.listen(productViewModelProvider(widget.id), (prev, next) {
      // 👉 옵션 선택 감지
      if (prev?.selectedOption != next.selectedOption &&
          next.selectedOption != null) {
        // 👉 강제로 바텀바 보이기
        if (!_showBottomBar) {
          setState(() => _showBottomBar = true);
        }
      }
    });

    return Scaffold(
      bottomNavigationBar: SafeArea(
        child: AnimatedSwitcher(
          duration: const Duration(milliseconds: 250),
          child: (_showBottomBar && state.selectedOption != null)
              ? ProductBottomBar(
                  key: const ValueKey('bottomBar'),
                  productId: widget.id,
                )
              : const SizedBox.shrink(),
        ),
      ),
      body: SafeArea(
        child: CustomScrollView(
          controller: _scrollController,
          slivers: [
            _buildProductAppbar(context, "상품상세"),

            if (state.isLoading)
              const SliverFillRemaining(
                hasScrollBody: false,
                child: Center(child: LoadingIndicator()),
              )
            else ...[
              SliverToBoxAdapter(child: TopImageSection(productId: widget.id)),

              const SliverToBoxAdapter(child: SizedBox(height: 10)),

              SliverToBoxAdapter(
                child: PriceInfoSection(
                  reviewSectionKey: _reviewKey,
                  productId: widget.id,
                ),
              ),

              SliverToBoxAdapter(
                child: Divider(
                  height: 10,
                  thickness: 10,
                  color: AppColors.lightGrey,
                ),
              ),

              SliverToBoxAdapter(
                child: SelectOptionSection(
                  cardWidth: cardWidth,
                  productId: widget.id,
                ),
              ),

              SliverToBoxAdapter(
                child: Divider(
                  height: 10,
                  thickness: 10,
                  color: AppColors.lightGrey,
                ),
              ),

              if (state.similarList!.isNotEmpty) ...[
                SliverToBoxAdapter(
                  child: ProductRecommendationSection(
                    title: "유사 상품 추천",
                    productId: widget.id,
                    recommandType: ProductRecommendType.similar,
                  ),
                ),

                SliverToBoxAdapter(
                  child: Divider(
                    height: 10,
                    thickness: 10,
                    color: AppColors.lightGrey,
                  ),
                ),
              ],

              SliverToBoxAdapter(
                child: ProductDetailInfoSection(
                  cardWidth: cardWidth,
                  productId: widget.id,
                ),
              ),

              SliverToBoxAdapter(
                child: Divider(
                  height: 10,
                  thickness: 10,
                  color: AppColors.lightGrey,
                ),
              ),

              if (state.recentlyList!.isNotEmpty) ...[
                SliverToBoxAdapter(
                  child: ProductRecommendationSection(
                    title: "최근 주문한 상품",
                    productId: widget.id,
                    recommandType: ProductRecommendType.recentlyOrdered,
                  ),
                ),

                SliverToBoxAdapter(
                  child: Divider(
                    height: 10,
                    thickness: 10,
                    color: AppColors.lightGrey,
                  ),
                ),
              ],

              SliverToBoxAdapter(
                key: _reviewKey,
                child: ReviewSection(
                  cardWidth: cardWidth,
                  productId: widget.id,
                ),
              ),

              SliverToBoxAdapter(
                child: Divider(
                  height: 10,
                  thickness: 10,
                  color: AppColors.lightGrey,
                ),
              ),

              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "클레임 안내",
                        style: context.titleMedium.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      const SizedBox(height: 10),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: (state.productInfo?.claimGuideItems ?? [])
                            .map(
                              (contents) => Padding(
                                padding: const EdgeInsets.only(bottom: 2),
                                child: Text(
                                  "- $contents",
                                  style: context.caption.copyWith(
                                    color: AppColors.darkGrey,
                                  ),
                                ),
                              ),
                            )
                            .toList(),
                      ),
                      const SizedBox(height: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 2),
                            child: Text(
                              "- 본 상품은 판매자가 제공하며, 상품의 품질 및 배송 책임은 판매자에게 있습니다.",
                              style: context.caption.copyWith(
                                color: AppColors.darkGrey,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 2),
                            child: Text(
                              "- 일부 상품은 납품 중량에 따라 금액이 변동될 수 있습니다.",
                              style: context.caption.copyWith(
                                color: AppColors.darkGrey,
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () async {
                              final sellerProfileId =
                                  state.productInfo?.sellerProfileId;
                              if (sellerProfileId == null) {
                                CommonDialog.show(
                                  context,
                                  title: "오류",
                                  isSuccess: false,
                                  message: "판매자 정보를 확인할 수 없습니다.",
                                );
                                return;
                              }

                              try {
                                final sellerInfo = await ref
                                    .read(sellerInfoRepositoryProvider)
                                    .getSellerInfo(sellerProfileId);
                                if (!context.mounted) return;
                                showSellerInfoBottomSheet(context, sellerInfo);
                              } catch (_) {
                                if (!context.mounted) return;
                                CommonDialog.show(
                                  context,
                                  title: "오류",
                                  isSuccess: false,
                                  message: "판매자 정보를 불러오지 못했습니다.",
                                );
                              }
                            },
                            child: TextWithChevron(
                              text: "판매자 정보 보기",
                              style: context.caption.copyWith(
                                color: AppColors.darkGrey,
                              ),
                              iconSize: 8,
                              spacing: 3,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Divider(
                  height: 10,
                  thickness: 10,
                  color: AppColors.lightGrey,
                ),
              ),

              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    "사장님 업종 추천 상품",
                    style: context.titleMedium.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              /// 메이슨리 그리드
              SearchMasonrySliver(items: state.businessPickList!),

              /// 로딩
              if (state.businessLoading)
                const SliverToBoxAdapter(
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Center(child: CircularProgressIndicator()),
                  ),
                ),
            ],

            // const SliverToBoxAdapter(child: SizedBox(height: 100)),
          ],
        ),
      ),
    );
  }

  SliverAppBar _buildProductAppbar(BuildContext context, String title) {
    const searchIcon = "assets/images/icons/searchBarIcon.png";
    const cartIcon = "assets/images/icons/cartIcon.png";

    return SliverAppBar(
      floating: true,
      scrolledUnderElevation: 0,
      backgroundColor: Colors.white,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back, color: AppColors.darkGrey),
        onPressed: context.pop,
      ),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(1.0),
        child: Container(
          color: Colors.grey.withValues(alpha: 0.3),
          height: 1.0,
        ),
      ),
      title: Text(
        title,
        style: context.title.copyWith(fontWeight: FontWeight.w600),
      ),
      actions: [
        IconButton(
          onPressed: () {
            context.push('/search');
          },
          icon: Image.asset(searchIcon, width: 24, color: AppColors.darkGrey),
        ),
        IconButton(
          onPressed: () {
            ref.invalidate(cartViewModelProvider);
            context.push('/cart');
          },
          icon: AppBadgeIcon.cart(
            assetPath: cartIcon,
            width: 24,
            color: AppColors.darkGrey,
          ),
        ),
        const SizedBox(width: 20),
      ],
    );
  }
}
