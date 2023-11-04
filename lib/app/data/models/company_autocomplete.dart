class CompanyAutocomplete {
  String company;

  /// 설치 / 운영 장소
  String? d184;

  /// 안전관리등급
  String? d280;

  /// 허가번호 - 유전자변형생물체
  String? d157;

  /// 허가번호 - 고위험병원체
  String? d281;

  CompanyAutocomplete(
      {required this.company, this.d184, this.d280, this.d157, this.d281});

  @override
  String toString() => company;
}
