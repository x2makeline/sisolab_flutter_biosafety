import 'package:signature/signature.dart';

class RelatedPerson {
  String name;
  List<Point> sign;
  String contact;
  String phone;
  String email;

  RelatedPerson(
      {required this.name,
      required this.sign,
      required this.contact,
      required this.phone,
      required this.email});

  @override
  String toString() {
    return 'RelatedPerson{name: $name, sign: $sign, contact: $contact, phone: $phone, email: $email}';
  }
}
