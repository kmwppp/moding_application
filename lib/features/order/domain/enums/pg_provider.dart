enum PgProvider {
  toss,
  inicis;

  static PgProvider fromJson(String? value) {
    switch (value?.toUpperCase()) {
      case 'INICIS':
        return PgProvider.inicis;
      case 'TOSS':
      default:
        return PgProvider.toss;
    }
  }

  String toJson() {
    switch (this) {
      case PgProvider.toss:
        return 'TOSS';
      case PgProvider.inicis:
        return 'INICIS';
    }
  }
}
