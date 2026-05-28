enum AlarmFilter {
  all('ALL'),
  activity('ACTIVITY'),
  notice('NOTICE');

  const AlarmFilter(this.code);

  final String code;
}
