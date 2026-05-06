import 'package:flutter/services.dart';

class BusinessNumberFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    // 하이픈 제거
    var text = newValue.text.replaceAll('-', '');

    // 숫자만 허용 + 최대 10자리
    text = text.replaceAll(RegExp(r'[^0-9]'), '');
    if (text.length > 10) {
      text = text.substring(0, 10);
    }

    String formatted = '';

    if (text.length <= 3) {
      formatted = text;
    } else if (text.length <= 5) {
      formatted = '${text.substring(0, 3)}-${text.substring(3)}';
    } else {
      formatted =
          '${text.substring(0, 3)}-${text.substring(3, 5)}-${text.substring(5)}';
    }

    return TextEditingValue(
      text: formatted,
      selection: TextSelection.collapsed(offset: formatted.length),
    );
  }
}
