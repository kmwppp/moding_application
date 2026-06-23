enum StorageMethod { REFRIGERATED, FROZEN, ROOM_TEMP }

extension StorageMethodX on StorageMethod {
  String get label {
    switch (this) {
      case StorageMethod.REFRIGERATED:
        return "냉장보관";
      case StorageMethod.FROZEN:
        return "냉동보관";
      case StorageMethod.ROOM_TEMP:
        return "상온보관";
    }
  }
}
