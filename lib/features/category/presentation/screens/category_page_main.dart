import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:moding_application/core/presentation/widgets/app_sliver_appbar.dart';
import 'package:moding_application/core/theme/app_text_styles.dart';
import 'package:moding_application/features/category/presentation/providers/category_viewmodel.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../home/presentation/screens/widgets/components/category_image_item.dart';
import '../../../search/presentation/screens/widgets/search_masonry_list.dart';

class CategoryPageMain extends ConsumerStatefulWidget {
  const CategoryPageMain({super.key});

  @override
  ConsumerState<CategoryPageMain> createState() => _CategoryPageMainState();
}

class _CategoryPageMainState extends ConsumerState<CategoryPageMain> {
  final ScrollController _controller = ScrollController();
  final ScrollController _mainCategoryController = ScrollController();
  final List<GlobalKey> _mainCategoryItemKeys = [];
  int? _lastAutoScrolledIndex;

  @override
  void initState() {
    super.initState();

    Future.microtask(() {
      final state = ref.read(categoryViewModelProvider);
      if (state.mainCategory == null ||
          state.productList == null ||
          state.selectedCategory == null) {
        ref.read(categoryViewModelProvider.notifier).init();
      }
    });

    _controller.addListener(() {
      if (_controller.position.pixels >=
          _controller.position.maxScrollExtent - 300) {
        final state = ref.read(categoryViewModelProvider);
        final selectedCategory = state.selectedCategory;
        if (selectedCategory == null) return;

        ref
            .read(categoryViewModelProvider.notifier)
            .fetchMore(categoryIds: [selectedCategory.id]);
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _mainCategoryController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(categoryViewModelProvider);
    final notifier = ref.read(categoryViewModelProvider.notifier);

    // 필수 데이터 준비 전에는 화면을 그리지 않고 로딩만 노출 (null 크래시 방지)
    if (state.mainCategory == null || state.productList == null) {
      return const Scaffold(
        body: CustomScrollView(
          slivers: [
            AppSliverAppbar(title: "카테고리"),
            SliverFillRemaining(
              hasScrollBody: false,
              child: Center(child: CircularProgressIndicator()),
            ),
          ],
        ),
      );
    }

    final mainCategory = state.mainCategory!;
    _ensureMainCategoryItemKeys(mainCategory.data.length);

    _scrollToSelectedMainCategory(state.isMainCategorySelectedIndex);

    return Scaffold(
      body: CustomScrollView(
        controller: _controller, // 👈 반드시 연결
        slivers: [
          AppSliverAppbar(title: "카테고리", isMain: true),

          const SliverToBoxAdapter(child: SizedBox(height: 10)),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 60, // 위젯의 전체 높이
              child: ListView.separated(
                controller: _mainCategoryController,
                scrollDirection: Axis.horizontal,
                // 가로 스크롤 설정
                padding: const EdgeInsets.symmetric(horizontal: 10),
                // 양 끝 여백
                itemCount: mainCategory.data.length,
                separatorBuilder: (context, index) => const SizedBox(width: 4),
                // 아이템 사이 간격
                itemBuilder: (context, index) {
                  return GestureDetector(
                    key: _mainCategoryItemKeys[index],
                    onTap: () {
                      notifier.getSubCategoryList(
                        index: index,
                        parentId: mainCategory.data[index].id,
                      );
                    },
                    child: Center(
                      child: CategoryImageItem(
                        title: mainCategory.data[index].name,
                        imagePath: getImagePath(index),
                        cardWidth: 200, // 내부 이미지 크기도 동기화
                        isSelected: index == state.isMainCategorySelectedIndex,
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Row(
                children: [
                  Expanded(
                    child: RichText(
                      text: TextSpan(
                        style: context.titleMedium,
                        children: [
                          const TextSpan(text: "선택된 카테고리: "),
                          TextSpan(
                            text: state.selectedCategory?.name ?? "",
                            style: context.titleMedium.copyWith(
                              fontWeight: FontWeight.bold,
                              color: AppColors.primary,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  if (state.subCategory != null &&
                      state.subCategory!.data.isNotEmpty)
                    GestureDetector(
                      onTap: notifier.toggleSubCategoryView,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          color: state.isOpenSubCategoryView
                              ? AppColors.primary.withValues(alpha: 0.08)
                              : Colors.white,
                          border: Border.all(
                            color: state.isOpenSubCategoryView
                                ? AppColors.primary.withValues(alpha: 0.28)
                                : AppColors.dividerGrey,
                          ),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withValues(alpha: 0.03),
                              blurRadius: 8,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              state.isOpenSubCategoryView ? '닫기' : '열기',
                              style: context.bodySmall.copyWith(
                                color: state.isOpenSubCategoryView
                                    ? AppColors.primary
                                    : AppColors.darkGrey,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SizedBox(width: 2),
                            Icon(
                              state.isOpenSubCategoryView
                                  ? Icons.keyboard_arrow_up_rounded
                                  : Icons.keyboard_arrow_down_rounded,
                              size: 18,
                              color: state.isOpenSubCategoryView
                                  ? AppColors.primary
                                  : AppColors.darkGrey,
                            ),
                          ],
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
          if (state.subCategory != null && state.subCategory!.data.isNotEmpty)
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: AnimatedOpacity(
                  duration: const Duration(milliseconds: 220),
                  curve: Curves.easeOut,
                  opacity: state.isOpenSubCategoryView ? 1 : 0,
                  child: AnimatedSize(
                    duration: const Duration(milliseconds: 260),
                    curve: Curves.easeOutCubic,
                    alignment: Alignment.topCenter,
                    child: state.isOpenSubCategoryView
                        ? Container(
                            width: double.infinity,
                            padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                            decoration: BoxDecoration(
                              color: AppColors.lightGrey.withValues(
                                alpha: 0.45,
                              ),
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: AppColors.dividerGrey),
                            ),
                            child: LayoutBuilder(
                              builder: (context, constraints) {
                                const crossAxisCount = 3;
                                const spacing = 4.0;
                                final itemWidth =
                                    (constraints.maxWidth -
                                        (spacing * (crossAxisCount - 1))) /
                                    crossAxisCount;

                                return Wrap(
                                  spacing: spacing,
                                  runSpacing: spacing,
                                  children: List.generate(
                                    state.subCategory!.data.length,
                                    (index) {
                                      final item =
                                          state.subCategory!.data[index];
                                      final isSelected =
                                          index ==
                                          state.selectedSubCategoryIndex;

                                      return GestureDetector(
                                        onTap: () {
                                          notifier.clickedSubCategory(
                                            item,
                                            index: index,
                                          );
                                        },
                                        child: SizedBox(
                                          width: itemWidth,
                                          child: AnimatedContainer(
                                            duration: const Duration(
                                              milliseconds: 180,
                                            ),
                                            curve: Curves.easeOut,
                                            alignment: Alignment.center,
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 4,
                                              vertical: 10,
                                            ),
                                            decoration: BoxDecoration(
                                              color: isSelected
                                                  ? AppColors.primary
                                                  : Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                              border: Border.all(
                                                color: isSelected
                                                    ? AppColors.primary
                                                    : AppColors.mediumGrey,
                                              ),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.black
                                                      .withValues(
                                                        alpha: isSelected
                                                            ? 0.08
                                                            : 0.03,
                                                      ),
                                                  blurRadius: 10,
                                                  offset: const Offset(0, 3),
                                                ),
                                              ],
                                            ),
                                            child: Text(
                                              item.name,
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                              style: context.bodySmall.copyWith(
                                                color: isSelected
                                                    ? Colors.white
                                                    : AppColors.darkGrey,
                                                fontWeight: isSelected
                                                    ? FontWeight.w700
                                                    : FontWeight.w500,
                                              ),
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                );
                              },
                            ),
                          )
                        : const SizedBox.shrink(),
                  ),
                ),
              ),
            ),

          if (state.isLoading)
            const SliverFillRemaining(
              child: Center(child: CircularProgressIndicator()),
            )
          else ...[
            const SliverToBoxAdapter(child: SizedBox(height: 10)),

            if (state.productList!.content.isEmpty)
              /// ✅ 메이슨리 리스트 (그대로 Sliver로 넣기)
              SliverToBoxAdapter(
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Text("아직 상품이 없어요.", style: context.bodyLarge),
                  ),
                ),
              )
            else
              SearchMasonrySliver(items: state.productList!.content),

            /// 🔥 하단 로딩
            if (state.isFetchingMore)
              const SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Center(child: CircularProgressIndicator()),
                ),
              ),
          ],
        ],
      ),
    );
  }

  String getImagePath(int index) {
    switch (index) {
      case 0:
        return "assets/images/porkImage.png";
      case 1:
        return "assets/images/fishImage.png";
      case 2:
        return "assets/images/sauceImage.png";
      case 3:
        return "assets/images/dumplingImage.png";
      case 4:
        return "assets/images/breadImage.png";
      case 5:
        return "assets/images/alcoholImage.png";
      default:
        return "assets/images/porkImage.png";
    }
  }

  void _ensureMainCategoryItemKeys(int length) {
    if (_mainCategoryItemKeys.length == length) return;

    if (_mainCategoryItemKeys.length < length) {
      _mainCategoryItemKeys.addAll(
        List.generate(
          length - _mainCategoryItemKeys.length,
          (_) => GlobalKey(),
        ),
      );
      return;
    }

    _mainCategoryItemKeys.removeRange(length, _mainCategoryItemKeys.length);
  }

  void _scrollToSelectedMainCategory(int index) {
    if (_lastAutoScrolledIndex == index) return;
    _lastAutoScrolledIndex = index;

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted || !_mainCategoryController.hasClients) return;
      if (index < 0 || index >= _mainCategoryItemKeys.length) return;

      final itemContext = _mainCategoryItemKeys[index].currentContext;
      if (itemContext == null) return;

      Scrollable.ensureVisible(
        itemContext,
        duration: const Duration(milliseconds: 250),
        curve: Curves.easeOut,
        alignment: 0.5,
      );
    });
  }
}
