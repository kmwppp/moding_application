class HolidayUtil {
  static final Map<int, Set<DateTime>> _holidayCache = {};
  static final Map<int, Set<DateTime>> _substituteHolidayCache = {};

  static Set<DateTime> getKoreanHolidays(int year) {
    final cached = _holidayCache[year];
    if (cached != null) return cached;

    final holidays = <DateTime>{};

    /// 🔹 고정 공휴일
    holidays.addAll([
      DateTime(year, 1, 1),
      DateTime(year, 3, 1),
      DateTime(year, 5, 5),
      DateTime(year, 6, 6),
      DateTime(year, 8, 15),
      DateTime(year, 10, 3),
      DateTime(year, 10, 9),
      DateTime(year, 12, 25),
    ]);

    /// 🔥 음력 → 양력 변환 (간단 테이블 기반)
    holidays.addAll(_getLunarHolidays(year));

    _holidayCache[year] = holidays;
    return holidays;
  }

  static Set<DateTime> applySubstituteHolidays(Set<DateTime> holidays) {
    if (holidays.isNotEmpty) {
      final year = holidays.first.year;
      final cached = _substituteHolidayCache[year];
      if (cached != null) return cached;
    }

    final result = {...holidays};

    for (final date in holidays) {
      if (date.weekday == DateTime.saturday ||
          date.weekday == DateTime.sunday) {
        DateTime substitute = date;

        do {
          substitute = substitute.add(const Duration(days: 1));
        } while (result.contains(substitute));

        result.add(substitute);
      }
    }

    if (holidays.isNotEmpty) {
      _substituteHolidayCache[holidays.first.year] = result;
    }

    return result;
  }

  static List<DateTime> _getLunarHolidays(int year) {
    final map = {
      2024: {
        "seollal": DateTime(2024, 2, 10),
        "chuseok": DateTime(2024, 9, 17),
      },
      2025: {
        "seollal": DateTime(2025, 1, 29),
        "chuseok": DateTime(2025, 10, 6),
      },
      2026: {
        "seollal": DateTime(2026, 2, 17),
        "chuseok": DateTime(2026, 9, 25),
      },
    };

    final result = <DateTime>[];

    final data = map[year];
    if (data == null) return result;

    final seollal = data["seollal"]!;
    final chuseok = data["chuseok"]!;

    /// 설날 3일
    result.addAll([
      seollal.subtract(const Duration(days: 1)),
      seollal,
      seollal.add(const Duration(days: 1)),
    ]);

    /// 추석 3일
    result.addAll([
      chuseok.subtract(const Duration(days: 1)),
      chuseok,
      chuseok.add(const Duration(days: 1)),
    ]);

    return result;
  }
}
