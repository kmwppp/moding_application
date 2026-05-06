extension DateTimeX on DateTime {
  String get toDateOnly {
    return "${year.toString().padLeft(4, '0')}-"
        "${month.toString().padLeft(2, '0')}-"
        "${day.toString().padLeft(2, '0')}";
  }

  String get toDataAndTime {
    return "${year.toString().padLeft(4, '0')}-"
        "${month.toString().padLeft(2, '0')}-"
        "${day.toString().padLeft(2, '0')}\n"
        "${hour.toString().padLeft(2, '0')}:${minute.toString().padLeft(2, '0')}";
  }

  String get toDataAndTimeNoLineBreak {
    return "${year.toString().padLeft(4, '0')}-"
        "${month.toString().padLeft(2, '0')}-"
        "${day.toString().padLeft(2, '0')} "
        "${hour.toString().padLeft(2, '0')}:${minute.toString().padLeft(2, '0')}";
  }
}
