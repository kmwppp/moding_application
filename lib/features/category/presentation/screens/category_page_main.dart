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

  @override
  void initState() {
    super.initState();

    Future.microtask(() {
      ref.read(categoryViewModelProvider.notifier).init();
    });

    _controller.addListener(() {
      if (_controller.position.pixels >=
          _controller.position.maxScrollExtent - 200) {
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

    return Scaffold(
      body: CustomScrollView(
        controller: _controller, // 👈 반드시 연결
        slivers: [
          AppSliverAppbar(title: "카테고리"),

          const SliverToBoxAdapter(child: SizedBox(height: 10)),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 60, // 위젯의 전체 높이
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                // 가로 스크롤 설정
                padding: const EdgeInsets.symmetric(horizontal: 10),
                // 양 끝 여백
                itemCount: mainCategory.data.length,
                separatorBuilder: (context, index) => const SizedBox(width: 4),
                // 아이템 사이 간격
                itemBuilder: (context, index) {
                  return GestureDetector(
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
          const SliverToBoxAdapter(child: SizedBox(height: 10)),
          if (state.isOpenSubCategoryView && state.subCategory != null) ...[
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              sliver: SliverGrid(
                delegate: SliverChildBuilderDelegate((context, index) {
                  final item = state.subCategory!.data[index];
                  final isFirstRow = index < 3;
                  final isFirstCol = index % 3 == 0;
                  return GestureDetector(
                    onTap: () {
                      notifier.clickedSubCategory(item);
                    },
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: Border(
                          top: isFirstRow
                              ? BorderSide(color: AppColors.mediumGrey)
                              : BorderSide.none,
                          left: isFirstCol
                              ? BorderSide(color: AppColors.mediumGrey)
                              : BorderSide.none,
                          right: BorderSide(color: AppColors.mediumGrey),
                          bottom: BorderSide(color: AppColors.mediumGrey),
                        ),
                      ),
                      child: Text(
                        item.name,
                        style: context.bodySmall.copyWith(
                          color: AppColors.darkGrey,
                        ),
                      ),
                    ),
                  );
                }, childCount: state.subCategory!.data.length),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 0, // 👈 중요 (엑셀 느낌)
                  mainAxisSpacing: 0, // 👈 중요
                  childAspectRatio: 4,
                ),
              ),
            ),
            const SliverToBoxAdapter(child: SizedBox(height: 10)),
          ],

          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: RichText(
                text: TextSpan(
                  style: context.titleMedium, // 기본 스타일
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
}
