class AppBadgeDto {
  const AppBadgeDto({
    required this.cartItemCount,
    required this.hasUnreadNotification,
  });

  final int cartItemCount;
  final bool hasUnreadNotification;

  factory AppBadgeDto.fromJson(Map<String, dynamic> json) {
    return AppBadgeDto(
      cartItemCount: json['cartItemCount'] as int? ?? 0,
      hasUnreadNotification: json['hasUnreadNotification'] as bool? ?? false,
    );
  }
}
