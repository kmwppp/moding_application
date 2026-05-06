import 'package:flutter_riverpod/flutter_riverpod.dart';

/// One-shot navigation intent for CartMainPage's tab.
/// - null: no intent
/// - 0: 일반구매
/// - 1: 찜한상품
class CartTabJumpRequest extends Notifier<int?> {
  @override
  int? build() => null;

  void request(int tabIndex) => state = tabIndex;

  void clear() => state = null;
}

final cartTabJumpRequestProvider = NotifierProvider<CartTabJumpRequest, int?>(
  CartTabJumpRequest.new,
);
