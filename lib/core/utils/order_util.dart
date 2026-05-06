import 'package:uuid/uuid.dart';

class OrderUtil {
  static String idempotencyKey() {
    return const Uuid().v4();
  }
}
