import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:moding_application/features/product/domain/enums/product_recommand_type.dart';

import '../../../../../core/theme/app_text_styles.dart';
import '../../providers/search_viewmodel.dart';

class SearchHistorySection extends ConsumerWidget {
  final TextEditingController searchController;

  const SearchHistorySection({super.key, required this.searchController});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(
      searchViewModelProvider(type: ProductRecommendType.recommended),
    );
    final notifier = ref.read(
      searchViewModelProvider(type: ProductRecommendType.recommended).notifier,
    );

    // 검색 기록이 없으면 아무것도 렌더링하지 않음
    if (state.recentWordList.isEmpty) return const SizedBox.shrink();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Text(
            "최근 검색어",
            style: context.titleMedium.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 36,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            itemCount: state.recentWordList.length,
            separatorBuilder: (context, index) => const SizedBox(width: 8),
            itemBuilder: (context, index) {
              final word = state.recentWordList[index];
              return InputChip(
                label: Text(word),
                labelStyle: context.body.copyWith(fontSize: 12),
                backgroundColor: Colors.grey[100],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                  side: BorderSide(color: Colors.grey[300]!),
                ),
                onPressed: () {
                  // 컨트롤러에 텍스트 주입 및 뷰모델 상태 갱신
                  searchController.text = word;
                  notifier.changeSearchWord(word);
                  notifier.submitSearchWord(word);
                },
                onDeleted: () => notifier.deleteSearchWord(word),
                deleteIcon: const Icon(Icons.close, size: 14),
                deleteIconColor: Colors.grey[600],
                elevation: 0,
              );
            },
          ),
        ),
      ],
    );
  }
}
