// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alarm_list_data_source.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(alarmListDataSource)
final alarmListDataSourceProvider = AlarmListDataSourceProvider._();

final class AlarmListDataSourceProvider
    extends
        $FunctionalProvider<
          AlarmListDataSource,
          AlarmListDataSource,
          AlarmListDataSource
        >
    with $Provider<AlarmListDataSource> {
  AlarmListDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'alarmListDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$alarmListDataSourceHash();

  @$internal
  @override
  $ProviderElement<AlarmListDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  AlarmListDataSource create(Ref ref) {
    return alarmListDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AlarmListDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AlarmListDataSource>(value),
    );
  }
}

String _$alarmListDataSourceHash() =>
    r'f05e829b3af482d7baa5290c94c6f3975f96c266';
