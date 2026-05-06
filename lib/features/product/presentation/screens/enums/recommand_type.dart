enum RecommandType { similar, recently }

extension RecommandTypeX on RecommandType {
  String get label {
    switch (this) {
      case RecommandType.similar:
        return "유사 상품 추천";
      case RecommandType.recently:
        return "최근 주문한 상품";
    }
  }
}
