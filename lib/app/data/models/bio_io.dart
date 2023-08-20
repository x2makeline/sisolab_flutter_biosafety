import 'dart:typed_data';

import 'package:json_annotation/json_annotation.dart';
import 'package:sisolab_flutter_biosafety/core/utils/converters/date_time_converter.dart';
import 'package:sisolab_flutter_biosafety/core/utils/converters/unit8_list_converter.dart';
import 'package:sisolab_flutter_biosafety/core/utils/converters/yn_converter.dart';

part 'bio_io.g.dart';

@JsonSerializable()
class BioIo {
  /// 운영기관명
  String? company;

  /// 설치 ∙ 운영 장소
  String? d184;

  /// 안전관리등급
  String? d280;

  /// 시설내역 - 일반
  @YnNullableConverter()
  bool? d68;

  /// 시설내역 - 대량배양
  @YnNullableConverter()
  bool? d69;

  /// 시설내역 - 동물
  @YnNullableConverter()
  bool? d70;

  /// 시설내역 - 식물
  @YnNullableConverter()
  bool? d71;

  /// 시설내역 - 곤충
  @YnNullableConverter()
  bool? d72;

  /// 시설내역 - 신규허가
  @YnNullableConverter()
  bool? d73;

  /// 시설내역 - 재확인
  @YnNullableConverter()
  bool? d74;

  /// 시설내역 - 유전자변형생물체
  @YnNullableConverter()
  bool? d75;

  /// 허가번호 - 유전자변형생물체
  String? d157;

  /// 시설내역 - 고위험병원체
  @YnNullableConverter()
  bool? d76;

  /// 허가번호 - 고위험병원체
  String? d281;

  /// 문서번호
  String? docno;

  /// 최초허가일
  @DateTimeNullableConverter()
  DateTime? d158;

  /// 취급동물
  String? d282;

  /// 취급병원체
  String? d283;

  /// 실험실 ∙ 전실 면적
  String? d284;

  /// 지역
  String? d285;

  /// 기관분류
  String? d286;

  /// 생물안전관리책임자 - 성명
  String? d159;

  /// 생물안전관리책임자 - 서명
  @Unit8ListNullableConverter()
  Uint8List? d162;

  /// 생물안전관리책임자 - 연락처
  String? d165;

  /// 생물안전관리책임자 - 이메일
  String? d271;

  /// 생물안전관리책임자 - 핸드폰
  String? d274;

  /// 생물안전관리자 - 성명
  String? d160;

  /// 생물안전관리자 - 서명
  @Unit8ListNullableConverter()
  Uint8List? d163;

  /// 생물안전관리자 - 연락처
  String? d166;

  /// 생물안전관리자 - 이메일
  String? d272;

  /// 생물안전관리자 - 핸드폰
  String? d275;

  /// 고위험병원체의전담관리자 - 성명
  String? d161;

  /// 고위험병원체의전담관리자 - 서명
  @Unit8ListNullableConverter()
  Uint8List? d164;

  /// 고위험병원체의전담관리자 - 연락처
  String? d167;

  /// 고위험병원체의전담관리자 - 이메일
  String? d273;

  /// 고위험병원체의전담관리자 - 핸드폰
  String? d276;

  /// 점검일자
  @DateTimeNullableConverter()
  DateTime? d168;

  /// 질병관리청 의료안전예방국 생물안전평가과 - 점검자 소속 기관(1)
  String? d170;

  /// 질병관리청 의료안전예방국 생물안전평가과 - 점검자 성명(1)
  String? d169;

  /// 질병관리청 의료안전예방국 생물안전평가과 - 점검자 서명(1)
  @Unit8ListNullableConverter()
  Uint8List? d185;

  /// 질병관리청 의료안전예방국 생물안전평가과 - 점검자 소속 기관(2)
  String? d172;

  /// 질병관리청 의료안전예방국 생물안전평가과 - 점검자 성명(2)
  String? d171;

  /// 질병관리청 의료안전예방국 생물안전평가과 - 점검자 서명(2)
  @Unit8ListNullableConverter()
  Uint8List? d186;

  /// 질병관리청 의료안전예방국 생물안전평가과 - 점검자 소속 기관(3)
  String? d174;

  /// 질병관리청 의료안전예방국 생물안전평가과 - 점검자 성명(3)
  String? d173;

  /// 질병관리청 의료안전예방국 생물안전평가과 - 점검자 서명(3)
  @Unit8ListNullableConverter()
  Uint8List? d187;

  /// 질병관리청 의료안전예방국 생물안전평가과 - 점검자 소속 기관(4)
  String? d176;

  /// 질병관리청 의료안전예방국 생물안전평가과 - 점검자 성명(4)
  String? d175;

  /// 질병관리청 의료안전예방국 생물안전평가과 - 점검자 서명(4)
  @Unit8ListNullableConverter()
  Uint8List? d188;

  /// 질병관리청 의료안전예방국 생물안전평가과 - 점검자 소속 기관(5)
  String? d178;

  /// 질병관리청 의료안전예방국 생물안전평가과 - 점검자 성명(5)
  String? d177;

  /// 질병관리청 의료안전예방국 생물안전평가과 - 점검자 서명(5)
  @Unit8ListNullableConverter()
  Uint8List? d189;

  BioIo(
      {this.company,
      this.d184,
      this.d280,
      this.d68,
      this.d69,
      this.d70,
      this.d71,
      this.d72,
      this.d73,
      this.d74,
      this.d75,
      this.d157,
      this.d76,
      this.d281,
      this.docno,
      this.d158,
      this.d282,
      this.d283,
      this.d284,
      this.d285,
      this.d286,
      this.d159,
      this.d162,
      this.d165,
      this.d271,
      this.d274,
      this.d160,
      this.d163,
      this.d166,
      this.d272,
      this.d275,
      this.d161,
      this.d164,
      this.d167,
      this.d273,
      this.d276,
      this.d168,
      this.d170,
      this.d169,
      this.d185,
      this.d172,
      this.d171,
      this.d186,
      this.d174,
      this.d173,
      this.d187,
      this.d176,
      this.d175,
      this.d188,
      this.d178,
      this.d177,
      this.d189});

  factory BioIo.fromJson(Map<String, dynamic> json) => _$BioIoFromJson(json);

  Map<String, dynamic> toJson() => _$BioIoToJson(this);
}

enum BioIoName {
  /// 운영기관명
  company,

  /// 설치 ∙ 운영 장소
  d184,

  /// 안전관리등급
  d280,

  /// 시설내역 - 일반
  d68,

  /// 시설내역 - 대량배양
  d69,

  /// 시설내역 - 동물
  d70,

  /// 시설내역 - 식물
  d71,

  /// 시설내역 - 곤충
  d72,

  /// 시설내역 - 신규허가
  d73,

  /// 시설내역 - 재확인
  d74,

  /// 시설내역 - 유전자변형생물체
  d75,

  /// 허가번호 - 유전자변형생물체
  d157,

  /// 시설내역 - 고위험병원체
  d76,

  /// 허가번호 - 고위험병원체
  d281,

  /// 문서번호
  docno,

  /// 최초허가일
  d158,

  /// 취급동물
  d282,

  /// 취급병원체
  d283,

  /// 실험실 ∙ 전실 면적
  d284,

  /// 지역
  d285,

  /// 기관분류
  d286,

  /// 생물안전관리책임자 - 성명
  d159,

  /// 생물안전관리책임자 - 서명
  d162,

  /// 생물안전관리책임자 - 연락처
  d165,

  /// 생물안전관리책임자 - 이메일
  d271,

  /// 생물안전관리책임자 - 핸드폰
  d274,

  /// 생물안전관리자 - 성명
  d160,

  /// 생물안전관리자 - 서명
  d163,

  /// 생물안전관리자 - 연락처
  d166,

  /// 생물안전관리자 - 이메일
  d272,

  /// 생물안전관리자 - 핸드폰
  d275,

  /// 고위험병원체의전담관리자 - 성명
  d161,

  /// 고위험병원체의전담관리자 - 서명
  d164,

  /// 고위험병원체의전담관리자 - 연락처
  d167,

  /// 고위험병원체의전담관리자 - 이메일
  d273,

  /// 고위험병원체의전담관리자 - 핸드폰
  d276,

  /// 점검일자
  d168,

  /// 질병관리청 의료안전예방국 생물안전평가과 - 점검자 소속 기관(1)
  d170,

  /// 질병관리청 의료안전예방국 생물안전평가과 - 점검자 성명(1)
  d169,

  /// 질병관리청 의료안전예방국 생물안전평가과 - 점검자 서명(1)
  d185,

  /// 질병관리청 의료안전예방국 생물안전평가과 - 점검자 소속 기관(2)
  d172,

  /// 질병관리청 의료안전예방국 생물안전평가과 - 점검자 성명(2)
  d171,

  /// 질병관리청 의료안전예방국 생물안전평가과 - 점검자 서명(2)
  d186,

  /// 질병관리청 의료안전예방국 생물안전평가과 - 점검자 소속 기관(3)
  d174,

  /// 질병관리청 의료안전예방국 생물안전평가과 - 점검자 성명(3)
  d173,

  /// 질병관리청 의료안전예방국 생물안전평가과 - 점검자 서명(3)
  d187,

  /// 질병관리청 의료안전예방국 생물안전평가과 - 점검자 소속 기관(4)
  d176,

  /// 질병관리청 의료안전예방국 생물안전평가과 - 점검자 성명(4)
  d175,

  /// 질병관리청 의료안전예방국 생물안전평가과 - 점검자 서명(4)
  d188,

  /// 질병관리청 의료안전예방국 생물안전평가과 - 점검자 소속 기관(5)
  d178,

  /// 질병관리청 의료안전예방국 생물안전평가과 - 점검자 성명(5)
  d177,

  /// 질병관리청 의료안전예방국 생물안전평가과 - 점검자 서명(5)
  d189
}
