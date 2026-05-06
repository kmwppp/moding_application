

class StringUtil {
  static String formatCurrency(int? n) {
    final s = n.toString();
    final sb = StringBuffer();
    for (int i = 0; i < s.length; i++) {
      final idxFromEnd = s.length - i;
      sb.write(s[i]);
      if (idxFromEnd > 1 && idxFromEnd % 3 == 1) {
        sb.write(',');
      }
    }
    return sb.toString();
  }

  static String formatDate(String raw) {
    if (raw.isEmpty) return '';

    try {
      final s = raw.trim();

      if (s.length != 14) return raw;

      final year = int.parse(s.substring(0, 4));
      final month = int.parse(s.substring(4, 6));
      final day = int.parse(s.substring(6, 8));
      final hour = int.parse(s.substring(8, 10));
      final minute = int.parse(s.substring(10, 12));
      final second = int.parse(s.substring(12, 14));

      final dateTime = DateTime(year, month, day, hour, minute, second);

      return "${dateTime.year.toString().padLeft(4, '0')}-"
          "${dateTime.month.toString().padLeft(2, '0')}-"
          "${dateTime.day.toString().padLeft(2, '0')} "
          "${dateTime.hour.toString().padLeft(2, '0')}:"
          "${dateTime.minute.toString().padLeft(2, '0')}";
    } catch (e) {
      print('날짜 파싱 실패: $raw / error: $e');
      return raw;
    }
  }
}
