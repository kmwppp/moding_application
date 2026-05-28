import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:moding_application/core/navigation/app_navigator.dart';
import 'package:moding_application/core/presentation/widgets/auth_required_page.dart';
import 'package:moding_application/features/alarm/presentation/screens/alarm_page.dart';
import 'package:moding_application/features/business_profile/presentation/screens/business_information_change_inquiry.dart';
import 'package:moding_application/features/business_profile/presentation/screens/business_profile_page.dart';
import 'package:moding_application/features/business_profile/presentation/screens/request_change_business_profile_page.dart';
import 'package:moding_application/features/cart/presentation/screens/cart_main_page.dart';
import 'package:moding_application/features/cart_order/presentation/screens/cart_order_page_main.dart';
import 'package:moding_application/features/change_account_information/presentation/screens/change_account_information_page.dart';
import 'package:moding_application/features/change_password/presentation/screens/change_password_page.dart';
import 'package:moding_application/features/edit_my_info/presentation/screens/edit_my_info_page.dart';
import 'package:moding_application/features/fcm_test/fcm_test.dart';
import 'package:moding_application/features/find_member_information/presentation/id/screens/check_id_page.dart';
import 'package:moding_application/features/find_member_information/presentation/id/screens/find_id_page.dart';
import 'package:moding_application/features/find_member_information/presentation/pw/screens/change_pw_page.dart';
import 'package:moding_application/features/identity_verification/domain/entities/identity_verification_page_params.dart';
import 'package:moding_application/features/identity_verification/presentation/screens/identity_verification_page.dart';
import 'package:moding_application/features/login/presentation/screens/login_page_main.dart';
import 'package:moding_application/features/main/presentation/screens/main_page.dart';
import 'package:moding_application/features/nice_identity_verification/domain/entities/nice_identity_verification_page_params.dart';
import 'package:moding_application/features/nice_identity_verification/domain/entities/nice_identity_verification_result.dart';
import 'package:moding_application/features/nice_identity_verification/domain/enums/nice_identity_verification_type.dart';
import 'package:moding_application/features/nice_identity_verification/domain/enums/nice_verification_source.dart';
import 'package:moding_application/features/nice_identity_verification/presentation/screens/nice_identity_verification_callback_page.dart';
import 'package:moding_application/features/nice_identity_verification/presentation/screens/nice_identity_verification_page.dart';
import 'package:moding_application/features/notification/presentation/screens/notification_page.dart';
import 'package:moding_application/features/options/presentation/screens/options_page.dart';
import 'package:moding_application/features/order/presentation/screens/order_page_main.dart';
import 'package:moding_application/features/order_check/presentation/screens/order_check_page.dart';
import 'package:moding_application/features/order_list/presentation/screens/order_list_page.dart';
import 'package:moding_application/features/payment_complete/presentation/screens/payment_complete_page.dart';
import 'package:moding_application/features/product/presentation/screens/product_main_page.dart';
import 'package:moding_application/features/profile/domain/enums/approval_status.dart';
import 'package:moding_application/features/refund_account_management/presentation/screens/account_management_page.dart';
import 'package:moding_application/features/review_list/presentation/screens/review_list_page.dart';
import 'package:moding_application/features/search/presentation/screens/search_page_main.dart';
import 'package:moding_application/features/seller_conversion/presentation/screens/seller_conversion_page.dart';
import 'package:moding_application/features/seller_store/presentation/screens/seller_store_page.dart';
import 'package:moding_application/features/seller_web/presentation/screens/seller_web_page.dart';
import 'package:moding_application/features/seller_web/presentation/seller_web_page_params.dart';
import 'package:moding_application/features/signup/presentation/screens/signup_page_step2.dart';
import 'package:moding_application/features/signup_new/presentation/screens/signup_new_page_step1.dart';
import 'package:moding_application/features/signup_new/presentation/screens/signup_new_page_step2.dart';
import 'package:moding_application/features/splash/presentation/custom_spash_screen.dart';
import 'package:moding_application/router/enums/notification_type.dart';

import '../features/claim_check/presentation/screens/claim_check_page.dart';
import '../features/find_member_information/presentation/pw/screens/find_pw_page.dart';
import '../features/order/domain/entities/order_request_dto.dart';
import '../features/order_list/domain/enums/order_list_page_params.dart';
import '../features/product_recommend_list/presentation/screens/product_list_page.dart';
import '../features/seller_conversion/presentation/screens/seller_conversion_check_page.dart';
import '../features/send_claim/presentation/screens/send_claim_page.dart';
import '../features/signup/presentation/screens/signup_page_step1.dart';
import 'entities/product_list_page_params.dart';

final goRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    navigatorKey: rootNavigatorKey,
    initialLocation: '/splash',
    routes: [
      GoRoute(
        path: '/splash',
        builder: (context, state) => const CustomSplashScreen(),
      ),
      GoRoute(
        path: '/main',
        builder: (context, state) {
          final showRefundAccountPrompt = state.extra is bool
              ? state.extra as bool
              : false;
          return MainPage(showRefundAccountPrompt: showRefundAccountPrompt);
        },
      ),
      GoRoute(
        path: '/product/:id',
        builder: (context, state) {
          final int id = int.parse(state.pathParameters['id']!);
          return ProductMainPage(id: id);
        },
      ),
      GoRoute(
        path: '/order',
        builder: (context, state) {
          final request = state.extra as OrderRequestDto;
          return AuthRequiredPage(child: OrderPageMain(requestDto: request));
        },
      ),
      GoRoute(
        path: '/payment_complete/:paymentId',
        builder: (context, state) {
          final int paymentId = int.parse(state.pathParameters['paymentId']!);
          return PaymentCompletePage(paymentId: paymentId);
        },
      ),
      GoRoute(
        path: '/product_list_page',
        builder: (context, state) {
          final params = state.extra as ProductListPageParams;

          return ProductListPage(
            listType: params.type,
            productId: params.productId,
          );
        },
      ),
      GoRoute(
        path: '/search',
        builder: (context, state) => const SearchPageMain(isMain: false),
      ),
      GoRoute(
        path: '/cart',
        builder: (context, state) =>
            const AuthRequiredPage(child: CartMainPage(isMain: false)),
      ),
      GoRoute(
        path: '/cart_order',
        builder: (context, state) {
          final cartItemIds = state.extra as List<int>;
          return AuthRequiredPage(
            child: CartOrderPageMain(cartItemIds: cartItemIds),
          );
        },
      ),
      GoRoute(
        path: '/login',
        builder: (context, state) => const LoginPageMain(),
      ),
      GoRoute(
        path: '/nice_identity_verification',
        builder: (context, state) {
          final params = state.extra as NiceIdentityVerificationPageParams?;
          final type = params?.type ?? NiceIdentityVerificationType.general;
          final source = params?.source ?? NiceVerificationSource.signup;

          final page = NiceIdentityVerificationPage(type: type, source: source);
          if (type == NiceIdentityVerificationType.accountMatch) {
            return AuthRequiredPage(child: page);
          }
          return page;
        },
      ),
      GoRoute(
        path: '/nice',
        builder: (context, state) =>
            const NiceIdentityVerificationCallbackPage(),
      ),
      GoRoute(
        path: '/auth/nice',
        builder: (context, state) =>
            const NiceIdentityVerificationCallbackPage(),
      ),
      GoRoute(
        path: '/signup/step1',
        builder: (context, state) => const SignupPageStep1(),
      ),
      GoRoute(
        path: '/signup/step2',
        builder: (context, state) => const SignupPageStep2(),
      ),
      GoRoute(
        path: '/signup_new',
        builder: (context, state) => const SignupNewPageStep1(),
      ),
      GoRoute(
        path: '/signup_new/step2',
        builder: (context, state) => const SignupNewPageStep2(),
      ),

      GoRoute(
        path: '/seller_page',
        builder: (context, state) {
          final params = state.extra is SellerWebPageParams
              ? state.extra as SellerWebPageParams
              : const SellerWebPageParams(webViewToken: '');
          return SellerWebPage(params: params);
        },
      ),

      GoRoute(
        path: '/order_list_page',
        builder: (context, state) {
          final params = state.extra as OrderListPageParams;

          return OrderListPage(type: params.type);
        },
      ),

      GoRoute(
        path: '/send_claim/:orderId',
        builder: (context, state) {
          final int orderId = int.parse(state.pathParameters['orderId']!);
          return SendClaimPage(orderId: orderId);
        },
      ),

      GoRoute(
        path: '/check_order/:orderId',
        builder: (context, state) {
          final int orderId = int.parse(state.pathParameters['orderId']!);
          return OrderCheckPage(orderId: orderId);
        },
      ),

      GoRoute(
        path: '/notification/:notificationType',
        builder: (context, state) {
          final typeParam = state.pathParameters['notificationType'];

          final notificationType = NotificationType.values.firstWhere(
            (e) => e.name == typeParam,
            orElse: () => NotificationType.NOTIFICATION,
          );

          return NotificationPage(notificationType: notificationType);
        },
      ),
      GoRoute(
        path: '/options',
        builder: (context, state) {
          return const OptionsPage();
        },
      ),
      GoRoute(
        path: '/alarm',
        builder: (context, state) {
          return AlarmPage();
        },
      ),

      GoRoute(
        path: '/seller_conversion',
        builder: (context, state) {
          return SellerConversionPage();
        },
      ),

      GoRoute(
        path: '/seller_conversion_check',
        builder: (context, state) {
          return SellerConversionCheckPage(
            approvalStatus: state.extra as ApprovalStatus?,
          );
        },
      ),
      GoRoute(
        path: '/claim_check/:claimId',
        builder: (context, state) {
          final int claimId = int.parse(state.pathParameters['claimId']!);
          return ClaimCheckPage(claimId: claimId);
        },
      ),

      GoRoute(
        path: '/review_list',
        builder: (context, state) {
          return ReviewListPage();
        },
      ),
      GoRoute(
        path: '/edit_my_info',
        builder: (context, state) {
          return EditMyInfoPage();
        },
      ),
      GoRoute(
        path: '/account_management',
        builder: (context, state) {
          return AccountManagementPage();
        },
      ),

      GoRoute(
        path: '/change_account_information',
        builder: (context, state) {
          final niceResult = state.extra as NiceIdentityVerificationResult?;
          return ChangeAccountInformationPage(niceResult: niceResult);
        },
      ),

      GoRoute(
        path: '/business_profile',
        builder: (context, state) {
          return BusinessProfilePage();
        },
      ),
      GoRoute(
        path: '/business_information_change_inquiry',
        builder: (context, state) {
          return BusinessInformationChangeInquiry();
        },
      ),
      GoRoute(
        path: '/request_change_business_profile',
        builder: (context, state) {
          return RequestChangeBusinessProfilePage();
        },
      ),

      GoRoute(
        path: '/change_password',
        builder: (context, state) {
          final identityKey = state.extra as String?;
          return ChangePasswordPage(identityKey: identityKey);
        },
      ),
      GoRoute(
        path: '/identity_verification',
        builder: (context, state) {
          final params = state.extra is IdentityVerificationPageParams
              ? state.extra as IdentityVerificationPageParams
              : const IdentityVerificationPageParams();
          return IdentityVerificationPage(params: params);
        },
      ),

      GoRoute(
        path: '/find_id',
        builder: (context, state) {
          return FindIdPage();
        },
      ),
      GoRoute(
        path: '/find_id/check',
        builder: (context, state) {
          final loginId = state.extra is String ? state.extra as String : '';
          return CheckIdPage(loginId: loginId);
        },
      ),
      GoRoute(
        path: '/find_pw',
        builder: (context, state) {
          return FindPwPage();
        },
      ),
      GoRoute(
        path: '/find_pw/change_pw',
        builder: (context, state) {
          final identityVerificationKey = state.extra is String
              ? state.extra as String
              : '';
          return ChangePwPage(identityVerificationKey: identityVerificationKey);
        },
      ),
      GoRoute(
        path: '/fcm_test',
        builder: (context, state) {
          final payloadText = state.extra is String
              ? state.extra as String
              : '';
          return FcmTest(payloadText: payloadText);
        },
      ),

      GoRoute(
        path: '/options',
        builder: (context, state) {
          return OptionsPage();
        },
      ),

      GoRoute(
        path: '/seller_store/:sellerProfileId',
        builder: (context, state) {
          final int sellerProfileId = int.parse(
            state.pathParameters['sellerProfileId']!,
          );
          final sellerCompanyName = state.extra is String
              ? state.extra as String
              : '';
          return SellerStorePage(
            sellerProfileId: sellerProfileId,
            sellerCompanyName: sellerCompanyName,
          );
        },
      ),
    ],
  );
});
