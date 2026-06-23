enum SearchSort {
  relevance('RELEVANCE', '관련도순'),
  latest('LATEST', '최신순'),
  priceLow('PRICE_LOW', '가격 낮은순'),
  priceHigh('PRICE_HIGH', '가격 높은순');

  const SearchSort(this.value, this.label);

  final String value;
  final String label;
}
