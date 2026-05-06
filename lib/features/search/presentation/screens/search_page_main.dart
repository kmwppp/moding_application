import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:moding_application/core/presentation/widgets/app_badge_icon.dart';
import 'package:moding_application/features/product/domain/enums/product_recommand_type.dart';
import 'package:moding_application/features/search/presentation/providers/search_viewmodel.dart';
import 'package:moding_application/features/search/presentation/screens/widgets/search_history_section.dart';
import 'package:moding_application/features/search/presentation/screens/widgets/search_masonry_list.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../../../cart/presentation/providers/cart/cart_viewmodel.dart';
import '../../../main/domain/enums/MainTab.dart';
import '../../../main/presentation/providers/main_viewmodel.dart';
import '../providers/search_state.dart';

class SearchPageMain extends ConsumerStatefulWidget {
  const SearchPageMain({super.key, required this.isMain});

  final bool isMain;

  @override
  ConsumerState<SearchPageMain> createState() => _SearchPageMainState();
}

class _SearchPageMainState extends ConsumerState<SearchPageMain> {
  late final TextEditingController _searchController;
  final ScrollController _scrollController = ScrollController(); // 👈 추가

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController();

    _scrollController.addListener(() {
      if (_scrollController.position.pixels >=
          _scrollController.position.maxScrollExtent - 300) {
        final notifier = ref.read(
          searchViewModelProvider(
            type: ProductRecommendType.recommended,
            productId: null,
          ).notifier,
        );

        final state = ref.read(
          searchViewModelProvider(
            type: ProductRecommendType.recommended,
            productId: null,
          ),
        );

        if (state.isList &&
            !state.searchIsFetchingMore &&
            state.searchHasNext) {
          notifier.searchLoadNext(keyword: state.searchWord);
        }
      }
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(
      searchViewModelProvider(
        type: ProductRecommendType.recommended,
        productId: null,
      ),
    );
    final notifier = ref.read(
      searchViewModelProvider(
        type: ProductRecommendType.recommended,
        productId: null,
      ).notifier,
    );

    if (!state.isList &&
        state.searchWord.isEmpty &&
        _searchController.text.isNotEmpty) {
      _searchController.clear();
    }

    return Scaffold(
      backgroundColor: Colors.white,

      body: CustomScrollView(
        controller: _scrollController,
        physics: const BouncingScrollPhysics(),
        slivers: [
          _buildAppBar(state, notifier),

          /// 검색 전
          if (!state.isList) ...[
            SliverToBoxAdapter(
              child: SearchHistorySection(searchController: _searchController),
            ),

            const SliverToBoxAdapter(child: SizedBox(height: 10)),

            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  "이 달의 추천 상품",
                  style: context.titleMedium.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            const SliverToBoxAdapter(child: SizedBox(height: 10)),

            if (state.productList?.isNotEmpty ?? false)
              SearchMasonrySliver(items: state.productList!),
          ]
          /// 검색 결과
          else ...[
            if (state.searchIsLoading)
              const SliverFillRemaining(
                hasScrollBody: false,
                child: Center(
                  child: CircularProgressIndicator(color: AppColors.primary),
                ),
              )
            else ...[
            /// 리스트
              if (state.searchList?.isNotEmpty ?? false)
                SearchMasonrySliver(items: state.searchList!),

              /// 로딩
              if (state.searchIsFetchingMore)
                const SliverToBoxAdapter(
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Center(child: CircularProgressIndicator()),
                  ),
                ),
              

              /// 빈 상태
              if ((state.searchList?.isEmpty ?? true) &&
                  !state.searchIsFetchingMore)
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Center(
                    child: Text("검색 결과가 없습니다.", style: context.body),
                  ),
                ),
            ],
          ],
        ],
      ),
    );
  }

  SliverAppBar _buildAppBar(SearchState state, SearchViewModel notifier) {
    const String cartIcon = "assets/images/icons/cartIcon.png";

    return SliverAppBar(
      titleSpacing: 0,
      backgroundColor: Colors.white,
      surfaceTintColor: Colors.transparent,
      scrolledUnderElevation: 0,
      pinned: true,
      floating: false,
      elevation: 0,
      toolbarHeight: 60,
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(1.0),
        child: Container(
          color: Colors.grey.withValues(alpha: 0.3),
          height: 1.0,
        ),
      ),
      leading: state.isList
          ? IconButton(
              onPressed: () {
                clickedBackButton(notifier: notifier);
              },
              icon: Icon(
                Icons.arrow_back_ios_rounded,
                color: AppColors.darkGrey,
              ),
            )
          : null,
      title: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          children: [
            Expanded(child: _buildSearchBar(context, notifier)),
            const SizedBox(width: 16),
            IconButton(
              icon: AppBadgeIcon.cart(
                assetPath: cartIcon,
                width: 24,
                color: AppColors.darkGrey,
              ),
              onPressed: () {
                if (widget.isMain) {
                  ref
                      .read(mainViewModelProvider.notifier)
                      .changeTab(MainTab.cart);
                } else {
                  ref.invalidate(cartViewModelProvider);
                  context.push('/cart');
                }
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSearchBar(BuildContext context, SearchViewModel notifier) {
    const searchIcon = "assets/images/icons/searchBarIcon.png";

    return Container(
      height: 40,
      decoration: BoxDecoration(
        color: AppColors.lightGrey,
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        controller: _searchController,
        onSubmitted: (String value) async {
          if (value.trim().isNotEmpty) {
            await clickedSearch(
              context: context,
              notifier: notifier,
              keyword: value,
            );
          }
        },
        onChanged: (String value) async {
          notifier.changeSearchWord(value);
        },
        style: context.body,
        textInputAction: TextInputAction.search,
        textAlignVertical: TextAlignVertical.center,
        cursorColor: AppColors.darkGrey,
        decoration: InputDecoration(
          isDense: true,
          hintText: "상품 및 검색어를 입력하세요.",
          hintStyle: context.body.copyWith(color: AppColors.darkGrey),
          contentPadding: const EdgeInsets.only(left: 14),
          border: InputBorder.none,
          suffixIcon: Padding(
            padding: const EdgeInsets.all(10),
            child: Image.asset(searchIcon),
          ),
          suffixIconConstraints: const BoxConstraints(
            minWidth: 40,
            minHeight: 40,
          ),
        ),
      ),
    );
  }

  Future<void> clickedSearch({
    required BuildContext context,
    required SearchViewModel notifier,
    required String keyword,
  }) async {
    await notifier.submitSearchWord(keyword);
  }

  void clickedBackButton({required SearchViewModel notifier}) {
    notifier.changeSearchWord("");
    _searchController.clear();
    notifier.changeListView(false);
  }
}
