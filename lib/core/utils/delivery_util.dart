import '../../features/product/presentation/models/delivery_info.dart';

class DeliveryUtil {
  static DeliveryInfo calculateDeliveryInfo({
    required int shippingLeadTime,
    required int deliveryDays,
    required bool weekendDeliveryAvailability,
    required bool isSameDayShipping,
    required String shippingCutoffTime,
    required Set<DateTime> holidays, // 🔥 공휴일 추가
    bool isComplete = false,
  }) {
    final now = DateTime.now();

    /// 🔹 공휴일 체크 (시간 제거)
    bool isHoliday(DateTime date) {
      final d = DateTime(date.year, date.month, date.day);
      return holidays.contains(d);
    }

    /// 🔹 출고 가능 여부 (평일 + 공휴일 제외)
    bool isShippingDay(DateTime date) {
      return date.weekday != DateTime.saturday &&
          date.weekday != DateTime.sunday &&
          !isHoliday(date);
    }

    /// 🔹 배송 가능 여부
    bool isDeliveryDay(DateTime date) {
      if (date.weekday == DateTime.sunday) return false;
      if (isHoliday(date)) return false;

      if (date.weekday == DateTime.saturday) {
        return weekendDeliveryAvailability;
      }

      return true;
    }

    /// 🔹 영업일 기준 날짜 더하기 (출고용)
    DateTime addShippingDays(DateTime date, int days) {
      DateTime result = date;
      int added = 0;

      while (added < days) {
        result = result.add(const Duration(days: 1));
        if (isShippingDay(result)) {
          added++;
        }
      }

      return result;
    }

    /// 🔹 배송일 기준 날짜 더하기
    DateTime addDeliveryDays(DateTime date, int days) {
      DateTime result = date;
      int added = 0;

      while (added < days) {
        result = result.add(const Duration(days: 1));
        if (isDeliveryDay(result)) {
          added++;
        }
      }

      return result;
    }

    /// 🔹 시간 포맷
    String formatDuration(Duration d) {
      String twoDigits(int n) => n.toString().padLeft(2, '0');
      return "${twoDigits(d.inHours)}:${twoDigits(d.inMinutes % 60)}:${twoDigits(d.inSeconds % 60)}";
    }

    /// 🔹 마감시간 파싱
    final parts = shippingCutoffTime.split(":");
    final cutoffToday = DateTime(
      now.year,
      now.month,
      now.day,
      int.parse(parts[0]),
      int.parse(parts[1]),
    );

    /// =========================
    /// ✅ 1. 당일 출고 가능
    /// =========================
    if (isSameDayShipping) {
      final canShipToday = now.isBefore(cutoffToday) && isShippingDay(now);

      /// 오늘 출고 가능
      if (canShipToday) {
        final shipDate = now;

        final deliveryDate = addDeliveryDays(shipDate, 1);

        return DeliveryInfo(
          title: !isComplete
              ? "${parts[0]}시 이전 주문시 ${deliveryDate.month}/${deliveryDate.day} 도착"
              : "${deliveryDate.month}/${deliveryDate.day} 도착 예정",
          subText: "오늘 출발",
          remain: formatDuration(cutoffToday.difference(now)),
          deliveryDate: deliveryDate,
        );
      }

      /// 오늘 출고 불가 → 다음 출고일 찾기
      DateTime nextShipDate = now;

      do {
        nextShipDate = nextShipDate.add(const Duration(days: 1));
      } while (!isShippingDay(nextShipDate));

      final deliveryDate = addDeliveryDays(nextShipDate, 1);

      final nextCutoff = DateTime(
        nextShipDate.year,
        nextShipDate.month,
        nextShipDate.day,
        int.parse(parts[0]),
        int.parse(parts[1]),
      );

      return DeliveryInfo(
        title: !isComplete
            ? "${nextShipDate.month}/${nextShipDate.day} ${parts[0]}시 이전 주문 시 ${deliveryDate.month}/${deliveryDate.day} 도착"
            : "${deliveryDate.month}/${deliveryDate.day} 도착 예정",
        subText: "${nextShipDate.month}/${nextShipDate.day} 출발",
        remain: formatDuration(nextCutoff.difference(now)),
        deliveryDate: deliveryDate,
      );
    }

    /// =========================
    /// ✅ 2. 일반 배송
    /// =========================

    /// 출고일 계산
    final shipDate = addShippingDays(now, shippingLeadTime);

    /// 도착일 계산
    final deliveryDate = addDeliveryDays(shipDate, deliveryDays);

    return DeliveryInfo(
      title: "${deliveryDate.month}/${deliveryDate.day} 도착 예정",
      subText: "",
      remain: "",
      deliveryDate: deliveryDate,
    );
  }
}
