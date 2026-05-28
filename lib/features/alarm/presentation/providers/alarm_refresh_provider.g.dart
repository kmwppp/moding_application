// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alarm_refresh_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AlarmRefresh)
final alarmRefreshProvider = AlarmRefreshProvider._();

final class AlarmRefreshProvider extends $NotifierProvider<AlarmRefresh, int> {
  AlarmRefreshProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'alarmRefreshProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$alarmRefreshHash();

  @$internal
  @override
  AlarmRefresh create() => AlarmRefresh();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(int value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<int>(value),
    );
  }
}

String _$alarmRefreshHash() => r'65585e34a6448a4fb1a8077b68585d9d1c19fb39';

abstract class _$AlarmRefresh extends $Notifier<int> {
  int build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<int, int>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<int, int>,
              int,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
