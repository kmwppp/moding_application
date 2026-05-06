class AppHttpUrl {
  /// API 메인 주소
  static final mainServerUrl = "http://moding.iiiii.info:8081";

  /// 판매자 사이트 메인 주소
  static final sellerPageUrl = "http://moding.iiiii.info:8001";

  /// Login
  static final login = "/api/v1/auth/login";
  static final refresh = "/api/v1/auth/refresh";

  ///Sign-Up
  static final idDuplicateCheck = "/api/v1/users/login-id/availability";
  static final signUp = "/api/v1/auth/sign-up";
  static final industryMainCategory = "/api/v1/categories/business";

  static String industrySubCategory(String mainCategoryCode) {
    return "/api/v1/categories/business/$mainCategoryCode/children";
  }

  static final getTerms = "/api/v1/terms";

  /// Home
  static final getHomeSectionList = "/api/v1/main/sections";

  static String getHomeProductList(int sectionId) {
    return "/api/v1/main/sections/$sectionId/products";
  }

  ///Meta
  static final getBusinessTypeList = "/api/v1/meta/business-types";

  /// product
  static String getProductDetailInfo(int productId) {
    return "/api/v1/products/$productId";
  }

  /// 상품 목록 조회
  static String getSearchProductList = "/api/v1/products";

  /// 상품 추천 목록 조회
  static String getProductRecommendList = "/api/v1/products/recommendations";

  /// 유사 상품 추천
  static String getProductSimilar(int productId) {
    return "/api/v1/products/$productId/similar";
  }

  /// 상품 찜
  static String postWishlist(int productId) {
    return "/api/v1/wishlist/$productId";
  }

  /// 상품 장바구니 담기 / 다중 삭제
  static String shoppingCartControl = "/api/v1/cart/items";

  /// 리뷰 리스트
  static String getReviewList(int productId, int pageNum, int size) {
    return "/api/v1/products/$productId/reviews?pageNum=$pageNum&size=$size";
  }

  /// 최근 주문 상품 목록
  static String getProductRecently() {
    return "/api/v1/orders/recently-purchased-products";
  }

  /// 사장님 맞춤 추천
  static String getProductBusinessPicks() {
    return "/api/v1/products/business-picks";
  }

  /// 단건 주문 페이지 정보
  static String getOrderInfo() {
    return "/api/v1/orders/preview";
  }

  /// 카트 주문 페이지 정보
  static String getCartOrderInfo() {
    return "/api/v1/orders/preview/from-cart";
  }

  /// 배송지 목록 조회
  static String getAddressList() {
    return "/api/v1/delivery-addresses";
  }

  /// 배송지 상세 조회 / 배송지 수정 / 배송지 삭제
  static String getAddressDetailControl(int addressId) {
    return "/api/v1/delivery-addresses/$addressId";
  }

  /// 배송지 등록
  static String postAddAddress() {
    return "/api/v1/delivery-addresses";
  }

  /// 판매자 조회
  static String getSellerProfile(int sellerProfileId) {
    return "/api/v1/seller-profiles/$sellerProfileId";
  }

  /// 판매자 조회
  static String getWishList(int page) {
    return "/api/v1/wishlist?page=$page";
  }

  /// 앱바 뱃지 조회
  static String getBadges = "/api/v1/badges";

  /// 장바구니 조회
  static String getCartList = "/api/v1/cart";

  /// 장바구니 옵션 수량 변경
  static String cartOptionControl(int optionId) {
    return "/api/v1/cart/options/$optionId";
  }

  /// 단건 주문 생성
  static String postCreateOrder = "/api/v1/orders";

  /// 장바구니 주문 생성
  static String postCartCreateOrder = "/api/v1/orders/from-cart";

  /// 결제 상세 조회
  static String getPaymentInfo(int paymentId) {
    return "/api/v1/payments/$paymentId";
  }

  /// 메인 카테고리 조회
  static String getMainCategoryList = "/api/v1/categories/products";

  /// 서브 카테고리 조회
  static String getSubCategoryList(int parentId) {
    return "/api/v1/categories/products/$parentId/children";
  }

  /// 완료 주문건 배송지 변경
  static String changeDeliveryAddress(int orderId) {
    return "/api/v1/orders/$orderId/delivery-address";
  }

  /// 내가게 관리 홈 요약 조회
  static String getProfileSummary = "/api/v1/my-store/summary";

  /// 주문 내역 날짜 조회
  static String getOrderDateList = "/api/v1/orders/dates";

  /// 날짜에 맞는 주문 내역 조회
  static String getOrderList = "/api/v1/orders";

  /// 클레임 신청
  static String postClaim(int orderId) {
    return "/api/v1/orders/$orderId/claims";
  }

  /// 주문 상세 정보
  static String getMyOrderInfo(int orderId) {
    return "/api/v1/orders/$orderId";
  }

  /// 구매 확정
  static String patchPurchaseConfirm(int orderId) {
    return "/api/v1/orders/$orderId/purchase-confirm";
  }

  /// 판매자 전환 신청
  static String postSellerConversion = "/api/v1/seller-profiles";

  /// 판매자 전환 허가 카테고리 목록 조회
  static String getMainPermits = "/api/v1/categories/permits";

  /// 판매자 전환 허가 카테고리 목록 조회
  static String getSubPermits(int parentId) {
    return "/api/v1/categories/permits/$parentId/children";
  }

  /// 주문 정보 상세 조회
  static String getOrderDetail(int orderId) {
    return "/api/v1/orders/$orderId";
  }

  /// 클레임 상세 조회
  static String getClaimCheckDetail(int claimId) {
    return "/api/v1/claims/$claimId";
  }

  /// 구매자 클레임 이의 신청
  static String postClaimAppeal(int claimId) {
    return "/api/v1/claims/$claimId/appeal";
  }

  /// 내 리뷰 목록 조회
  static String getMyReviewList(int page, int size) {
    return "/api/v1/reviews";
  }

  /// 내 리뷰 수정
  static String myReviewControl(int reviewId) {
    return "/api/v1/reviews/$reviewId";
  }

  /// 주문 리뷰 작성
  static String postOrderReview(int orderId) {
    return "/api/v1/orders/$orderId/reviews";
  }

  /// 공지사항 타이틀 목록 조회
  static String getNotices({required int page, required int size}) {
    return "/api/v1/notices?page=$page&size=$size";
  }

  /// 공지사항 상세 조회
  static String getNoticeContent(int noticeId) {
    return "/api/v1/notices/$noticeId";
  }

  /// FAQ 타이틀 목록 조회
  static String getFAQs({
    required int page,
    required int size,
    String? category,
  }) {
    final categoryQuery = category == null ? '' : '&category=$category';
    return "/api/v1/faqs?page=$page&size=$size$categoryQuery";
  }

  /// FAQ 상세 조회
  static String getFAQContent(int faqId) {
    return "/api/v1/faqs/$faqId";
  }

  /// 내 정보 조회
  static String getMyInfo = "/api/v1/users/me";

  /// 내 사업자 프로필 조회
  static String getMyStoreInfo = "/api/v1/business-profiles/me";

  /// 마이페이지 통합 조회
  static String getMaskingMyInfo = "/api/v1/users/me/profile";

  /// 앱 알림 설정 변경
  static String patchNotificationSettings =
      "/api/v1/users/me/notification-settings";

  /// 환불계좌 조회, 등록 및 수정
  static String getRefundAccountInfo = "/api/v1/refund-accounts/me";
}
