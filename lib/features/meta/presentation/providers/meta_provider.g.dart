// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meta_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(bankCodes)
final bankCodesProvider = BankCodesProvider._();

final class BankCodesProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<MetaOptionDto>>,
          List<MetaOptionDto>,
          FutureOr<List<MetaOptionDto>>
        >
    with
        $FutureModifier<List<MetaOptionDto>>,
        $FutureProvider<List<MetaOptionDto>> {
  BankCodesProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'bankCodesProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$bankCodesHash();

  @$internal
  @override
  $FutureProviderElement<List<MetaOptionDto>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<MetaOptionDto>> create(Ref ref) {
    return bankCodes(ref);
  }
}

String _$bankCodesHash() => r'a97c965d9592cbf763e91b14acb8b44091b53990';
