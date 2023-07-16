enum FclRelatedPersonCategory {
  /// 책임자
  personInCharge("책임자"),

  /// 관리자
  administrator("관리자"),

  /// 전담관리자
  dedicatedManager("전담관리자");

  const FclRelatedPersonCategory(this.title);

  final String title;
}