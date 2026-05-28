import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/presentation/widgets/app_sliver_appbar.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../../../search/presentation/screens/widgets/search_masonry_list.dart';
import '../providers/seller_store_viewmodel.dart';

class SellerStorePage extends ConsumerStatefulWidget {
  const SellerStorePage({
    super.key,
    required this.sellerProfileId,
    required this.sellerCompanyName,
  });

  final int sellerProfileId;
  final String sellerCompanyName;

  @override
  ConsumerState<SellerStorePage> createState() => _SellerStorePageState();
}

class _SellerStorePageState extends ConsumerState<SellerStorePage> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      if (_scrollController.position.pixels >=
          _scrollController.position.maxScrollExtent - 300) {
        final notifier = ref.read(
          sellerStoreViewModelProvider(
            sellerProfileId: widget.sellerProfileId,
          ).notifier,
        );
        final state = ref.read(
          sellerStoreViewModelProvider(sellerProfileId: widget.sellerProfileId),
        );

        if (!state.isFetchingMore && state.hasNext) {
          notifier.loadNext(sellerProfileId: widget.sellerProfileId);
        }
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(
      sellerStoreViewModelProvider(sellerProfileId: widget.sellerProfileId),
    );

    final sellerCompanyName = widget.sellerCompanyName.isNotEmpty
        ? widget.sellerCompanyName
        : (state.productList.isNotEmpty
              ? state.productList.first.sellerCompanyName
              : '판매자 스토어');

    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        controller: _scrollController,
        physics: const BouncingScrollPhysics(),
        slivers: [
          const AppSliverAppbar(title: '판매자 스토어'),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 18, 16, 6),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    sellerCompanyName,
                    style: context.title.copyWith(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    '판매자의 전체 상품을 모아볼 수 있어요.',
                    style: context.bodySmall.copyWith(
                      color: AppColors.darkGrey,
                    ),
                  ),
                ],
              ),
            ),
          ),
          if (state.isLoading)
            const SliverFillRemaining(
              hasScrollBody: false,
              child: Center(
                child: CircularProgressIndicator(color: AppColors.primary),
              ),
            )
          else ...[
            if (state.productList.isNotEmpty)
              SearchMasonrySliver(items: state.productList),
            if (state.isFetchingMore)
              const SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Center(
                    child: CircularProgressIndicator(color: AppColors.primary),
                  ),
                ),
              ),
            if (state.productList.isEmpty && !state.isFetchingMore)
              SliverFillRemaining(
                hasScrollBody: false,
                child: Center(
                  child: Text(
                    '등록된 상품이 없습니다.',
                    style: context.body.copyWith(color: AppColors.darkGrey),
                  ),
                ),
              ),
          ],
        ],
      ),
    );
  }
}
