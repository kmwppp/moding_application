import '../entities/app_version_response_dto.dart';
import '../enums/app_update_type.dart';

class AppVersionChecker {
  const AppVersionChecker._();

  static AppUpdateType resolveUpdateType({
    required String currentVersion,
    required AppVersionDataDto versionInfo,
  }) {
    if (_compareSemanticVersions(
          currentVersion,
          versionInfo.minSupportedVersion,
        ) <
        0) {
      return AppUpdateType.force;
    }

    final compareLatest = _compareSemanticVersions(
      currentVersion,
      versionInfo.latestVersion,
    );

    if (versionInfo.forceUpdate && compareLatest < 0) {
      return AppUpdateType.force;
    }

    if (compareLatest < 0) {
      return AppUpdateType.optional;
    }

    return AppUpdateType.none;
  }

  static int _compareSemanticVersions(String current, String target) {
    final currentParts = _parseVersion(current);
    final targetParts = _parseVersion(target);
    final maxLength = currentParts.length > targetParts.length
        ? currentParts.length
        : targetParts.length;

    for (var i = 0; i < maxLength; i++) {
      final currentValue = i < currentParts.length ? currentParts[i] : 0;
      final targetValue = i < targetParts.length ? targetParts[i] : 0;

      if (currentValue < targetValue) return -1;
      if (currentValue > targetValue) return 1;
    }

    return 0;
  }

  static List<int> _parseVersion(String version) {
    final sanitized = version.split('+').first.trim();
    if (sanitized.isEmpty) return const [0];

    return sanitized.split('.').map((part) {
      final digits = RegExp(r'\d+').firstMatch(part)?.group(0);
      return int.tryParse(digits ?? '') ?? 0;
    }).toList();
  }
}
