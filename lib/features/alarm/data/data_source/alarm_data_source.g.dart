// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alarm_data_source.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(alarmDataSource)
final alarmDataSourceProvider = AlarmDataSourceProvider._();

final class AlarmDataSourceProvider
    extends
        $FunctionalProvider<AlarmDataSource, AlarmDataSource, AlarmDataSource>
    with $Provider<AlarmDataSource> {
  AlarmDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'alarmDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$alarmDataSourceHash();

  @$internal
  @override
  $ProviderElement<AlarmDataSource> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  AlarmDataSource create(Ref ref) {
    return alarmDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AlarmDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AlarmDataSource>(value),
    );
  }
}

String _$alarmDataSourceHash() => r'd864dae5878c7a8ad61e523ff4a107f246b7a52c';
