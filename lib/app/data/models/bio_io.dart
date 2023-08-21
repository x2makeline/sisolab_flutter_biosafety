import 'dart:typed_data';

import 'package:json_annotation/json_annotation.dart';
import 'package:sisolab_flutter_biosafety/core/utils/converters/date_time_converter.dart';
import 'package:sisolab_flutter_biosafety/core/utils/converters/uint8_list_converter.dart';
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
  @Uint8ListNullableConverter()
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
  @Uint8ListNullableConverter()
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
  @Uint8ListNullableConverter()
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
  @Uint8ListNullableConverter()
  Uint8List? d185;

  /// 질병관리청 의료안전예방국 생물안전평가과 - 점검자 소속 기관(2)
  String? d172;

  /// 질병관리청 의료안전예방국 생물안전평가과 - 점검자 성명(2)
  String? d171;

  /// 질병관리청 의료안전예방국 생물안전평가과 - 점검자 서명(2)
  @Uint8ListNullableConverter()
  Uint8List? d186;

  /// 질병관리청 의료안전예방국 생물안전평가과 - 점검자 소속 기관(3)
  String? d174;

  /// 질병관리청 의료안전예방국 생물안전평가과 - 점검자 성명(3)
  String? d173;

  /// 질병관리청 의료안전예방국 생물안전평가과 - 점검자 서명(3)
  @Uint8ListNullableConverter()
  Uint8List? d187;

  /// 질병관리청 의료안전예방국 생물안전평가과 - 점검자 소속 기관(4)
  String? d176;

  /// 질병관리청 의료안전예방국 생물안전평가과 - 점검자 성명(4)
  String? d175;

  /// 질병관리청 의료안전예방국 생물안전평가과 - 점검자 서명(4)
  @Uint8ListNullableConverter()
  Uint8List? d188;

  /// 질병관리청 의료안전예방국 생물안전평가과 - 점검자 소속 기관(5)
  String? d178;

  /// 질병관리청 의료안전예방국 생물안전평가과 - 점검자 성명(5)
  String? d177;

  /// 질병관리청 의료안전예방국 생물안전평가과 - 점검자 서명(5)
  @Uint8ListNullableConverter()
  Uint8List? d189;

  /// 유전자변형생물체 명칭(1)
  String? d77;

  /// 유전자변형생물체 명칭(2)
  String? d78;

  /// 유전자변형생물체 명칭(3)
  String? d79;

  /// 고위험병원체 명칭(1)
  String? d80;

  /// 고위험병원체 명칭(2)
  String? d81;

  /// 고위험병원체 명칭(3)
  String? d82;

  /// 주요실험방법(1)
  String? d83;

  /// 주요실험방법(2)
  String? d84;

  /// 주요실험방법(3)
  String? d85;

  /// 연구자 및 관리자 생물안전교육 이수 - 이미지 파일
  @Uint8ListNullableConverter()
  Uint8List? file1;

  /// 연구자 및 관리자 생물안전교육 이수 - 이미지 비고
  String? d179;

  /// 연구자 및 관리자 생물안전교육 이수 - 관리 책임자 인원
  String? d180;

  /// 연구자 및 관리자 생물안전교육 이수 - 관리 책임자 radio
  String? d1;

  /// 연구자 및 관리자 생물안전교육 이수 - 관리 책임자 비고
  String? d181;

  /// 연구자 및 관리자 생물안전교육 이수 - 관리자 인원
  String? d87;

  /// 연구자 및 관리자 생물안전교육 이수 - 관리자 radio
  String? d2;

  /// 연구자 및 관리자 생물안전교육 이수 - 관리자 비고
  String? d182;

  /// 연구자 및 관리자 생물안전교육 이수 - 사용자 인원
  String? d88;

  /// 연구자 및 관리자 생물안전교육 이수 - 사용자 radio
  String? d3;

  /// 연구자 및 관리자 생물안전교육 이수 - 사용자 비고
  String? d183;

  /// 밀폐구역 출입자 정상 혈청 보관 - 이미지 파일
  @Uint8ListNullableConverter()
  Uint8List? file2;

  /// 밀폐구역 출입자 정상 혈청 보관 - 이미지 비고
  String? d89;

  /// 밀폐구역 출입자 정상 혈청 보관 - 관리 책임자 인원
  String? d90;

  /// 밀폐구역 출입자 정상 혈청 보관 - 관리 책임자 radio
  String? d4;

  /// 밀폐구역 출입자 정상 혈청 보관 - 관리 책임자 비고
  String? d91;

  /// 밀폐구역 출입자 정상 혈청 보관 - 관리자 인원
  String? d92;

  /// 밀폐구역 출입자 정상 혈청 보관 - 관리자 radio
  String? d5;

  /// 밀폐구역 출입자 정상 혈청 보관 - 관리자 비고
  String? d93;

  /// 밀폐구역 출입자 정상 혈청 보관 - 사용자 인원
  String? d94;

  /// 밀폐구역 출입자 정상 혈청 보관 - 사용자 radio
  String? d6;

  /// 밀폐구역 출입자 정상 혈청 보관 - 사용자 비고
  String? d95;

  /// 검증서, 시설도면(건축,기계,전기,소방 등) 보관 - 이미지 파일
  @Uint8ListNullableConverter()
  Uint8List? file3;

  /// 검증서, 시설도면(건축,기계,전기,소방 등) 보관 - radio
  String? d7;

  /// 검증서, 시설도면(건축,기계,전기,소방 등) 보관 - 비고
  String? d96;

  /// 생물안전관리규정 수립 - 이미지 파일
  @Uint8ListNullableConverter()
  Uint8List? file4;

  /// 생물안전관리규정 수립 - radio
  String? d8;

  /// 생물안전관리규정 수립 - 비고
  String? d97;

  /// 기관생물안전지침(시설운영사항 별도) 마련 - 이미지 파일
  @Uint8ListNullableConverter()
  Uint8List? file5;

  /// 기관생물안전지침(시설운영사항 별도) 마련 - radio
  String? d9;

  /// 기관생물안전지침(시설운영사항 별도) 마련 - 비고
  String? d98;

  BioIo({
    this.company,
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
    this.d189,
    this.d77,
    this.d78,
    this.d79,
    this.d80,
    this.d81,
    this.d82,
    this.d83,
    this.d84,
    this.d85,
    this.file1,
    this.d179,
    this.d180,
    this.d1,
    this.d181,
    this.d87,
    this.d2,
    this.d182,
    this.d88,
    this.d3,
    this.d183,
    this.file2,
    this.d89,
    this.d90,
    this.d4,
    this.d91,
    this.d92,
    this.d5,
    this.d93,
    this.d94,
    this.d6,
    this.d95,
    this.file3,
    this.d7,
    this.d96,
    this.file4,
    this.d8,
    this.d97,
    this.file5,
    this.d9,
    this.d98,
  });

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
  d189,

  /// 유전자변형생물체 명칭(1)
  d77,

  /// 유전자변형생물체 명칭(2)
  d78,

  /// 유전자변형생물체 명칭(3)
  d79,

  /// 고위험병원체 명칭(1)
  d80,

  /// 고위험병원체 명칭(2)
  d81,

  /// 고위험병원체 명칭(3)
  d82,

  /// 주요실험방법(1)
  d83,

  /// 주요실험방법(2)
  d84,

  /// 주요실험방법(3)
  d85,

  /// 연구자 및 관리자 생물안전교육 이수 - 이미지 파일
  file1,

  /// 연구자 및 관리자 생물안전교육 이수 - 이미지 비고
  d179,

  /// 연구자 및 관리자 생물안전교육 이수 - 관리 책임자 인원
  d180,

  /// 연구자 및 관리자 생물안전교육 이수 - 관리 책임자 radio
  d1,

  /// 연구자 및 관리자 생물안전교육 이수 - 관리 책임자 비고
  d181,

  /// 연구자 및 관리자 생물안전교육 이수 - 관리자 인원
  d87,

  /// 연구자 및 관리자 생물안전교육 이수 - 관리자 radio
  d2,

  /// 연구자 및 관리자 생물안전교육 이수 - 관리자 비고
  d182,

  /// 연구자 및 관리자 생물안전교육 이수 - 사용자 인원
  d88,

  /// 연구자 및 관리자 생물안전교육 이수 - 사용자 radio
  d3,

  /// 연구자 및 관리자 생물안전교육 이수 - 사용자 비고
  d183,

  /// 밀폐구역 출입자 정상 혈청 보관 - 이미지 파일
  file2,

  /// 밀폐구역 출입자 정상 혈청 보관 - 이미지 비고
  d89,

  /// 밀폐구역 출입자 정상 혈청 보관 - 관리 책임자 인원
  d90,

  /// 밀폐구역 출입자 정상 혈청 보관 - 관리 책임자 radio
  d4,

  /// 밀폐구역 출입자 정상 혈청 보관 - 관리 책임자 비고
  d91,

  /// 밀폐구역 출입자 정상 혈청 보관 - 관리자 인원
  d92,

  /// 밀폐구역 출입자 정상 혈청 보관 - 관리자 radio
  d5,

  /// 밀폐구역 출입자 정상 혈청 보관 - 관리자 비고
  d93,

  /// 밀폐구역 출입자 정상 혈청 보관 - 사용자 인원
  d94,

  /// 밀폐구역 출입자 정상 혈청 보관 - 사용자 radio
  d6,

  /// 밀폐구역 출입자 정상 혈청 보관 - 사용자 비고
  d95,

  /// 검증서, 시설도면(건축,기계,전기,소방 등) 보관 - 이미지 파일
  file3,

  /// 검증서, 시설도면(건축,기계,전기,소방 등) 보관 - radio
  d7,

  /// 검증서, 시설도면(건축,기계,전기,소방 등) 보관 - 비고
  d96,

  /// 생물안전관리규정 수립 - 이미지 파일
  file4,

  /// 생물안전관리규정 수립 - radio
  d8,

  /// 생물안전관리규정 수립 - 비고
  d97,

  /// 기관생물안전지침(시설운영사항 별도) 마련 - 이미지 파일
  file5,

  /// 기관생물안전지침(시설운영사항 별도) 마련 - radio
  d9,

  /// 기관생물안전지침(시설운영사항 별도) 마련 - 비고
  d98,
}
