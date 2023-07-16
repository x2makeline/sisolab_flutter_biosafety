import 'fcl_sign.dart';

class FclRelatedPerson extends FclSign {
  FclRelatedPerson(
      {super.name, super.signature, this.contact, this.email, this.phone});

  /// 연락처
  String? contact;

  /// 이메일
  String? email;

  /// 핸드폰
  String? phone;


  @override
  String toString() {
    return 'FclRelatedPerson{name: $name, signature: $signature, contact: $contact, email: $email, phone: $phone}';
  }

  @override
  merge(
          {String? name,
          String? signature,
          String? contact,
          String? email,
          String? phone}) =>
      FclRelatedPerson(
          name: name ?? this.name,
          contact: contact ?? this.contact,
          email: email ?? this.email,
          phone: phone ?? this.phone,
          signature: signature ?? this.signature);
}

//
// /// 책임자
// class FclPersonInCharge extends FclRelatedPerson {
//   FclPersonInCharge(
//       {required super.name,
//       required super.signature,
//       required super.contact,
//       required super.email,
//       required super.phone})
//       : super(category: FclRelatedPersonCategory.personInCharge);
// }
//
// /// 관리자
// class FclAdministrator extends FclRelatedPerson {
//   FclAdministrator(
//       {required super.name,
//       required super.signature,
//       required super.contact,
//       required super.email,
//       required super.phone})
//       : super(category: FclRelatedPersonCategory.administrator);
// }
//
// /// 전담관리자
// class FclDedicatedManager extends FclRelatedPerson {
//   FclDedicatedManager(
//       {required super.name,
//       required super.signature,
//       required super.contact,
//       required super.email,
//       required super.phone})
//       : super(category: FclRelatedPersonCategory.dedicatedManager);
// }
