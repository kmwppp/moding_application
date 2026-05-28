class TaxInvoiceUrlResponseWrapper {
  TaxInvoiceUrlResponseWrapper({required this.data});

  final TaxInvoiceUrlResponseDto data;

  factory TaxInvoiceUrlResponseWrapper.fromJson(Map<String, dynamic> json) {
    return TaxInvoiceUrlResponseWrapper(
      data: TaxInvoiceUrlResponseDto.fromJson(
        Map<String, dynamic>.from(json['data'] as Map),
      ),
    );
  }
}

class TaxInvoiceUrlResponseDto {
  TaxInvoiceUrlResponseDto({required this.url});

  final String url;

  factory TaxInvoiceUrlResponseDto.fromJson(Map<String, dynamic> json) {
    return TaxInvoiceUrlResponseDto(url: json['url'] as String? ?? '');
  }
}
