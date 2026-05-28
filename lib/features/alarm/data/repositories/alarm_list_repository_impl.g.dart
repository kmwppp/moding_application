// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alarm_list_repository_impl.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(alarmListRepository)
final alarmListRepositoryProvider = AlarmListRepositoryProvider._();

final class AlarmListRepositoryProvider
    extends
        $FunctionalProvider<
          AlarmListRepository,
          AlarmListRepository,
          AlarmListRepository
        >
    with $Provider<AlarmListRepository> {
  AlarmListRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'alarmListRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$alarmListRepositoryHash();

  @$internal
  @override
  $ProviderElement<AlarmListRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  AlarmListRepository create(Ref ref) {
    return alarmListRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AlarmListRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AlarmListRepository>(value),
    );
  }
}

String _$alarmListRepositoryHash() =>
    r'3ac4e4c32bc7713042c51dc4986a4b73d63f9a3c';
