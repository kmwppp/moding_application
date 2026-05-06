// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alarm_viewmodel.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AlarmViewModel)
final alarmViewModelProvider = AlarmViewModelProvider._();

final class AlarmViewModelProvider
    extends $NotifierProvider<AlarmViewModel, AlarmState> {
  AlarmViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'alarmViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$alarmViewModelHash();

  @$internal
  @override
  AlarmViewModel create() => AlarmViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AlarmState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AlarmState>(value),
    );
  }
}

String _$alarmViewModelHash() => r'97051afe992e7a0d30c88c29e57ef763314bb327';

abstract class _$AlarmViewModel extends $Notifier<AlarmState> {
  AlarmState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AlarmState, AlarmState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AlarmState, AlarmState>,
              AlarmState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
