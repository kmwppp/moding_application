import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:moding_application/core/constants/app_http_url.dart';
import 'package:moding_application/core/network/dio_client.dart';

import '../../domain/entities/app_badge_dto.dart';

final appBadgeDataSourceProvider = Provider<AppBadgeDataSource>((ref) {
  return AppBadgeDataSource(ref.watch(dioProvider));
});

class AppBadgeDataSource {
  const AppBadgeDataSource(this._dio);

  final Dio _dio;

  Future<AppBadgeDto> getBadges() async {
    final response = await _dio.get(AppHttpUrl.getBadges);
    return AppBadgeDto.fromJson(response.data['data'] as Map<String, dynamic>);
  }
}
