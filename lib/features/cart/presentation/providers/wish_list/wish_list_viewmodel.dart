import 'package:moding_application/features/cart/data/repositories/wish_list/wish_list_repository_impl.dart';
import 'package:moding_application/features/cart/presentation/providers/wish_list/wish_list_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'wish_list_viewmodel.g.dart';

@Riverpod()
class WishListModel extends _$WishListModel {
  @override
  WishListState build() {
    Future.microtask(() => getWishList(0));
    return WishListState.initial();
  }

  Future<void> refresh() async {
    state = state.copyWith(
      isLoading: true,
      wishListDto: null,
      hasNext: true,
      pageNum: 0,
    );
    getWishList(0);
  }

  Future<void> getWishList(int page) async {
    if (state.isLoading || !state.hasNext) return;

    state = state.copyWith(isLoading: true);

    try {
      final repository = ref.read(wishListRepositoryProvider);
      final response = await repository.getWishList(page);

      final currentList = state.wishListDto?.content ?? [];

      final newList = [...currentList, ...response.content];

      final hasNext = page < response.totalPages - 1;

      state = state.copyWith(
        pageNum: page,
        isLoading: false,
        hasNext: hasNext,
        wishListDto: response.copyWith(content: newList),
      );
    } catch (e) {
      state = state.copyWith(isLoading: false);
      print(e);
    }
  }

  void loadNext() {
    getWishList(state.pageNum + 1);
  }
}
