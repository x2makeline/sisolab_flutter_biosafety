
class FclRelatedPersonCol {
  String title;
  String nameNm;
  String signatureNm;
  String contactNm;
  String emailNm;
  String cellPhoneNm;
  String hintText;

  String? initialName;
  String? initialSignature;
  String? initialContact;
  String? initialEmail;
  String? initialCellPhone;

  FclRelatedPersonCol(
      {required this.title,
      this.initialCellPhone,
      this.initialContact,
      this.initialEmail,
      this.initialName,
      this.initialSignature,
      required this.nameNm,
      required this.signatureNm,
      required this.contactNm,
      required this.emailNm,
      required this.cellPhoneNm,
      required this.hintText});

  @override
  String toString() =>
      'FclRelatedPersonCol{title: $title, nameNm: $nameNm, signatureNm: $signatureNm, contactNm: $contactNm, emailNm: $emailNm, cellPhoneNm: $cellPhoneNm, hintText: $hintText}';
}
