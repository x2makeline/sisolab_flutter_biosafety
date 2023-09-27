import 'package:hive/hive.dart';

part 'bio_hive_4.g.dart';

@HiveType(typeId: 3)
class BioHive4 extends HiveObject {
  @HiveField(0)
  int? localId;

  @HiveField(1)
  String? d4;

  @HiveField(2)
  String? d40;

  @HiveField(3)
  String? d400;

  @HiveField(4)
  String? d41;

  @HiveField(5)
  String? d42;

  @HiveField(6)
  String? d43;

  @HiveField(7)
  String? d44;

  @HiveField(8)
  String? d45;

  @HiveField(9)
  String? d46;

  @HiveField(10)
  String? d47;

  @HiveField(11)
  String? d48;

  @HiveField(12)
  String? d49;

  @HiveField(13)
  String? d5;

  @HiveField(14)
  String? d50;

  @HiveField(15)
  String? d51;

  @HiveField(16)
  String? d52;

  @HiveField(17)
  String? d53;

  @HiveField(18)
  String? d54;

  @HiveField(19)
  String? d55;

  @HiveField(20)
  String? d56;

  @HiveField(21)
  String? d57;

  @HiveField(22)
  String? d58;

  @HiveField(23)
  String? d59;

  @HiveField(24)
  String? d6;

  @HiveField(25)
  String? d60;

  @HiveField(26)
  String? d61;

  @HiveField(27)
  String? d62;

  @HiveField(28)
  String? d63;

  @HiveField(29)
  String? d64;

  @HiveField(30)
  String? d65;

  @HiveField(41)
  String? d66;

  @HiveField(42)
  String? d67;

  @HiveField(43)
  String? d68;

  @HiveField(44)
  String? d69;

  @HiveField(45)
  String? d7;

  @HiveField(46)
  String? d70;

  @HiveField(47)
  String? d71;

  @HiveField(48)
  String? d72;

  @HiveField(49)
  String? d73;

  @HiveField(50)
  String? d74;

  @HiveField(51)
  String? d75;

  @HiveField(52)
  String? d76;

  @HiveField(53)
  String? d77;

  @HiveField(54)
  String? d78;

  @HiveField(55)
  String? d79;

  @HiveField(56)
  String? d8;

  @HiveField(57)
  String? d80;

  @HiveField(58)
  String? d81;

  @HiveField(59)
  String? d82;

  @HiveField(60)
  String? d83;

  @HiveField(61)
  String? d84;

  @HiveField(62)
  String? d85;

  @HiveField(63)
  String? d86;

  @HiveField(64)
  String? d87;

  @HiveField(65)
  String? d88;

  @HiveField(66)
  String? d89;

  @HiveField(67)
  String? d9;

  @HiveField(68)
  String? d90;

  @HiveField(69)
  String? d91;

  @HiveField(71)
  String? d92;

  @HiveField(72)
  String? d93;

  @HiveField(73)
  String? d94;

  @HiveField(74)
  String? d95;

  @HiveField(75)
  String? d96;

  @HiveField(76)
  String? d97;

  @HiveField(77)
  String? d98;

  @HiveField(78)
  String? d99;

  @HiveField(79)
  String? docno;

  @HiveField(80)
  String? file10editable;

  @HiveField(81)
  String? file1editable;

  @HiveField(82)
  String? file2editable;

  @HiveField(83)
  String? file3editable;

  @HiveField(84)
  String? file4editable;

  @HiveField(85)
  String? file5editable;

  @HiveField(86)
  String? file6editable;

  @HiveField(87)
  String? file7editable;

  @HiveField(88)
  String? file8editable;

  @HiveField(89)
  String? file9editable;

  @HiveField(90)
  String? gbn;

  @HiveField(91)
  int? idx;

  @HiveField(92)
  String? printSubmitDt;

  @HiveField(93)
  String? regId;

  @HiveField(94)
  int? reg_datetime;

  @HiveField(95)
  int? simAuth;

  @HiveField(96)
  String? status;

  @HiveField(97)
  String? tableName;

  BioHive4(
      {this.localId,
      this.d4,
      this.d40,
      this.d400,
      this.d41,
      this.d42,
      this.d43,
      this.d44,
      this.d45,
      this.d46,
      this.d47,
      this.d48,
      this.d49,
      this.d5,
      this.d50,
      this.d51,
      this.d52,
      this.d53,
      this.d54,
      this.d55,
      this.d56,
      this.d57,
      this.d58,
      this.d59,
      this.d6,
      this.d60,
      this.d61,
      this.d62,
      this.d63,
      this.d64,
      this.d65,
      this.d66,
      this.d67,
      this.d68,
      this.d69,
      this.d7,
      this.d70,
      this.d71,
      this.d72,
      this.d73,
      this.d74,
      this.d75,
      this.d76,
      this.d77,
      this.d78,
      this.d79,
      this.d8,
      this.d80,
      this.d81,
      this.d82,
      this.d83,
      this.d84,
      this.d85,
      this.d86,
      this.d87,
      this.d88,
      this.d89,
      this.d9,
      this.d90,
      this.d91,
      this.d92,
      this.d93,
      this.d94,
      this.d95,
      this.d96,
      this.d97,
      this.d98,
      this.d99,
      this.docno,
      this.file10editable,
      this.file1editable,
      this.file2editable,
      this.file3editable,
      this.file4editable,
      this.file5editable,
      this.file6editable,
      this.file7editable,
      this.file8editable,
      this.file9editable,
      this.gbn,
      this.idx,
      this.printSubmitDt,
      this.regId,
      this.reg_datetime,
      this.simAuth,
      this.status,
      this.tableName});
}
