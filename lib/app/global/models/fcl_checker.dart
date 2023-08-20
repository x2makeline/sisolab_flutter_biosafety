class FclChecker {
  /// 점검사 - 소속기관
  String affiliationNm;

  /// 점검자 - 성명
  String nameNm;

  /// 점검자 - 서명
  String signatureNm;

  FclChecker(
      {required this.affiliationNm,
      required this.nameNm,
      required this.signatureNm});
}
