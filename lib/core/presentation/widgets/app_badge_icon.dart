import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:moding_application/features/badge/presentation/providers/app_badge_provider.dart';

class AppBadgeIcon extends ConsumerWidget {
  const AppBadgeIcon.cart({
    super.key,
    required this.assetPath,
    required this.width,
    this.color,
  }) : _type = _AppBadgeIconType.cart;

  const AppBadgeIcon.notification({
    super.key,
    required this.assetPath,
    required this.width,
    this.color,
  }) : _type = _AppBadgeIconType.notification;

  final String assetPath;
  final double width;
  final Color? color;
  final _AppBadgeIconType _type;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final badge = ref.watch(appBadgeProvider).whenOrNull(data: (data) => data);
    final count = badge?.cartItemCount ?? 0;
    final hasUnreadNotification = badge?.hasUnreadNotification ?? false;

    return Stack(
      clipBehavior: Clip.none,
      children: [
        Image.asset(assetPath, width: width, color: color),
        if (_type == _AppBadgeIconType.cart && count > 0)
          Positioned(right: -4, top: -4, child: _CountBadge(count: count)),
        if (_type == _AppBadgeIconType.notification && hasUnreadNotification)
          const Positioned(right: -2, top: -2, child: _DotBadge()),
      ],
    );
  }
}

enum _AppBadgeIconType { cart, notification }

class _DotBadge extends StatelessWidget {
  const _DotBadge();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 8,
      height: 8,
      decoration: const BoxDecoration(
        color: Colors.red,
        shape: BoxShape.circle,
      ),
    );
  }
}

class _CountBadge extends StatelessWidget {
  const _CountBadge({required this.count});

  final int count;

  @override
  Widget build(BuildContext context) {
    final text = count > 99 ? '99+' : '$count';

    return Container(
      constraints: const BoxConstraints(minWidth: 15, minHeight: 15),
      padding: const EdgeInsets.symmetric(horizontal: 4),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(99),
      ),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 9,
          fontWeight: FontWeight.bold,
          height: 1,
        ),
      ),
    );
  }
}
