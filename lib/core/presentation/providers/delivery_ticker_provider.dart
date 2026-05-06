import 'package:flutter_riverpod/flutter_riverpod.dart';

final deliveryTickerProvider = StreamProvider.autoDispose<int>((ref) {
  return Stream.periodic(const Duration(seconds: 1), (tick) => tick);
});
