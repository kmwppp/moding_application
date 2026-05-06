import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:moding_application/core/theme/app_text_styles.dart';
import 'package:moding_application/features/main/domain/enums/MainTab.dart';
import 'package:moding_application/features/main/presentation/providers/main_viewmodel.dart';
import 'package:moding_application/features/product/domain/enums/product_recommand_type.dart';
import 'package:moding_application/features/search/presentation/providers/search_viewmodel.dart';
import 'package:moding_application/features/search/presentation/screens/widgets/search_masonry_list.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/presentation/widgets/text_with_cehvron.dart';
import '../../providers/wish_list/wish_list_viewmodel.dart';

class WishListPage extends ConsumerStatefulWidget {
  const WishListPage({super.key, required this.isMain});

  final bool isMain;

  @override
  ConsumerState<WishListPage> createState() => _WishListPageState();
}

class _WishListPageState extends ConsumerState<WishListPage> {
  final ScrollController _controller = ScrollController();

  @override
  void initState() {
    super.initState();

    _controller.addListener(() {
      if (_controller.position.pixels >=
          _controller.position.maxScrollExtent - 300) {
        ref.read(wishListModelProvider.notifier).loadNext();
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(wishListModelProvider);
    final items = state.wishListDto?.content ?? [];

    return CustomScrollView(
      controller: _controller,
      slivers: [
        SliverToBoxAdapter(child: SizedBox(height: 10)),

        /// 로딩
        if (state.isLoading)
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 50),
              child: Center(child: CircularProgressIndicator()),
            ),
          )
        /// 데이터 있음
        else if (items.isNotEmpty) ...[
          SearchMasonrySliver(items: items),

          const SliverToBoxAdapter(child: SizedBox(height: 40)),
        ]
        /// 빈 상태
        else
          SliverFillRemaining(
            hasScrollBody: false,
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("아직 찜한 상품이 없어요.", style: context.bodyLarge),
                  const SizedBox(height: 10),
                  GestureDetector(
                    onTap: () {
                      if (widget.isMain) {
                        ref
                            .read(
                              searchViewModelProvider(
                                type: ProductRecommendType.recommended,
                                productId: null,
                              ).notifier,
                            )
                            .reset(
                              type: ProductRecommendType.recommended,
                              productId: null,
                            );
                        ref
                            .read(mainViewModelProvider.notifier)
                            .changeTab(MainTab.search);
                      }
                    },
                    child: TextWithChevron(
                      text: "상품 보러가기",
                      style: context.body.copyWith(
                        color: AppColors.darkGrey,
                        fontWeight: FontWeight.w600,
                      ),
                      iconSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ),
      ],
    );
  }
}
