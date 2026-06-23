import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:moding_application/features/badge/presentation/providers/app_badge_provider.dart';
import 'package:moding_application/features/cart/presentation/providers/cart/cart_viewmodel.dart';
import 'package:moding_application/features/cart/presentation/providers/wish_list/wish_list_viewmodel.dart';
import 'package:moding_application/features/cart_order/presentation/providers/cart_order_viewmodel.dart';
import 'package:moding_application/features/category/presentation/providers/category_viewmodel.dart';
import 'package:moding_application/features/home/presentation/providers/home_viewmodel.dart';
import 'package:moding_application/features/login/presentation/providers/login_viewmodel.dart';
import 'package:moding_application/features/main/presentation/providers/main_viewmodel.dart';
import 'package:moding_application/features/order/presentation/providers/order_viewmodel.dart';
import 'package:moding_application/features/payment_complete/presentation/providers/delivery_info/payment_complete_delivery_info_viewmodel.dart';
import 'package:moding_application/features/payment_complete/presentation/providers/payment_complete_viewmodel.dart';
import 'package:moding_application/features/product/presentation/providers/product_viewmodel.dart';
import 'package:moding_application/features/product_recommend_list/presentation/providers/product_list_viewmodel.dart';
import 'package:moding_application/features/profile/presentation/providers/profile_viewmodel.dart';
import 'package:moding_application/features/search/presentation/providers/search_viewmodel.dart';
import 'package:moding_application/features/signup/presentation/providers/step1_providers/signup_viewmodel.dart';
import 'package:moding_application/features/signup/presentation/providers/step2_providers/signup_step2_viewmodel.dart';
import 'package:moding_application/features/terms/presentation/providers/terms_provider.dart';

void resetAppViewModels(WidgetRef ref) {
  ref.invalidate(appBadgeProvider);
  ref.invalidate(cartViewModelProvider);
  ref.invalidate(wishListModelProvider);
  ref.invalidate(cartOrderViewModelProvider);
  ref.invalidate(categoryViewModelProvider);
  ref.invalidate(homeViewModelProvider);
  ref.invalidate(loginViewModelProvider);
  ref.invalidate(mainViewModelProvider);
  ref.invalidate(orderViewModelProvider);
  ref.invalidate(paymentCompleteDeliveryInfoViewModelProvider);
  ref.invalidate(paymentCompleteViewModelProvider);
  ref.invalidate(productViewModelProvider);
  ref.invalidate(productListViewModelProvider);
  ref.invalidate(profileViewModelProvider);
  ref.invalidate(searchViewModelProvider);
  ref.invalidate(signupViewModelProvider);
  ref.invalidate(signupStep2ViewModelProvider);
  ref.invalidate(termsProvider);

  // /main 전체(모든 탭 페이지) 리셋 신호
  ref.read(mainResetTickProvider.notifier).trigger();
}
