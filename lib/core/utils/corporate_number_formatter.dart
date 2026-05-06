import 'package:flutter/services.dart';

class CorporateNumberFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    // 하이픈 제거
    var text = newValue.text.replaceAll('-', '');

    // 숫자만 허용 + 최대 13자리
    text = text.replaceAll(RegExp(r'[^0-9]'), '');
    if (text.length > 13) {
      text = text.substring(0, 13);
    }

    String formatted = '';

    if (text.length <= 6) {
      formatted = text;
    } else {
      formatted = '${text.substring(0, 6)}-${text.substring(6)}';
    }

    return TextEditingValue(
      text: formatted,
      selection: TextSelection.collapsed(offset: formatted.length),
    );
  }
}
