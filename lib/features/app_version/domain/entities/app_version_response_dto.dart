import '../enums/app_version_platform.dart';

class AppVersionResponseDto {
  const AppVersionResponseDto({
    required this.success,
    required this.message,
    this.code,
    this.statusCode,
    this.data,
  });

  final bool success;
  final String message;
  final String? code;
  final int? statusCode;
  final AppVersionDataDto? data;

  factory AppVersionResponseDto.fromJson(
    Map<String, dynamic> json, {
    int? statusCode,
  }) {
    final dataJson = json['data'];
    return AppVersionResponseDto(
      success: json['success'] as bool? ?? false,
      message: json['message'] as String? ?? '',
      code: json['code'] as String?,
      statusCode: statusCode,
      data: dataJson is Map<String, dynamic>
          ? AppVersionDataDto.fromJson(dataJson)
          : null,
    );
  }
}

class AppVersionDataDto {
  const AppVersionDataDto({
    required this.platform,
    required this.latestVersion,
    required this.minSupportedVersion,
    required this.forceUpdate,
    required this.releaseNotes,
  });

  final AppVersionPlatform platform;
  final String latestVersion;
  final String minSupportedVersion;
  final bool forceUpdate;
  final String releaseNotes;

  factory AppVersionDataDto.fromJson(Map<String, dynamic> json) {
    return AppVersionDataDto(
      platform: AppVersionPlatform.fromServerValue(json['platform'] as String?),
      latestVersion: json['latestVersion'] as String? ?? '',
      minSupportedVersion: json['minSupportedVersion'] as String? ?? '',
      forceUpdate: json['forceUpdate'] as bool? ?? false,
      releaseNotes: json['releaseNotes'] as String? ?? '',
    );
  }
}
