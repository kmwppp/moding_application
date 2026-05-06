import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:moding_application/core/services/token_storage.dart';

import '../../data/data_source/app_badge_data_source.dart';
import '../../domain/entities/app_badge_dto.dart';

final appBadgeProvider = FutureProvider<AppBadgeDto>((ref) async {
  final accessToken = await ref.watch(tokenStorageProvider).getAccessToken();

  if (accessToken == null || accessToken.trim().isEmpty) {
    return const AppBadgeDto(cartItemCount: 0, hasUnreadNotification: false);
  }

  return ref.watch(appBadgeDataSourceProvider).getBadges();
});
