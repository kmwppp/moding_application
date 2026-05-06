// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_claim_data_source.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(sendClaimDataSource)
final sendClaimDataSourceProvider = SendClaimDataSourceProvider._();

final class SendClaimDataSourceProvider
    extends
        $FunctionalProvider<
          SendClaimDataSource,
          SendClaimDataSource,
          SendClaimDataSource
        >
    with $Provider<SendClaimDataSource> {
  SendClaimDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'sendClaimDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$sendClaimDataSourceHash();

  @$internal
  @override
  $ProviderElement<SendClaimDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  SendClaimDataSource create(Ref ref) {
    return sendClaimDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SendClaimDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SendClaimDataSource>(value),
    );
  }
}

String _$sendClaimDataSourceHash() =>
    r'0d637a3ef8b4bd22e4eb70cbaf61ae31d79eefcd';
