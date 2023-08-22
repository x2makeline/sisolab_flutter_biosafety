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

  /// 시설 도면과의 일치성 - 이미지 파일
  file6,

  /// 시설 도면과의 일치성 - radio
  d10,

  /// 시설 도면과의 일치성 - 비고
  d99,

  /// 주출입구 잠금장치 및 출입통제 - 이미지 파일
  file7,

  /// 주출입구 잠금장치 및 출입통제 - radio
  d11,

  /// 주출입구 잠금장치 및 출입통제 - 비고
  d100,

  /// 장비 반출 가능한 문 설치 - 이미지 파일
  file8,

  /// 장비 반출 가능한 문 설치 - radio
  d12,

  /// 장비 반출 가능한 문 설치 - 비고
  d101,

  /// 밀폐구역 내 인터락(수동조작 가능) - 이미지 파일
  file9,

  /// 밀폐구역 내 인터락(수동조작 가능) - radio
  d13,

  /// 밀폐구역 내 인터락(수동조작 가능) - 비고
  d102,

  /// 도어 자동 닫힘 - 이미지 파일
  file10,

  /// 도어 자동 닫힘 - radio
  d14,

  /// 도어 자동 닫힘 - 비고
  d103,

  /// 비상샤워 설비 가동 - 이미지 파일
  file11,

  /// 비상샤워 설비 가동 - radio
  d15,

  /// 비상샤워 설비 가동 - 비고
  d104,

  /// 급기 덕트에 헤파 필터 설치 - 이미지 파일
  file12,

  /// 급기 덕트에 헤파 필터 설치 - radio
  d16,

  /// 급기 덕트에 헤파 필터 설치 - 비고
  d105,

  /// 배기에 카본필터 등 냄새제거 장치 설치 - 이미지 파일
  file13,

  /// 배기에 카본필터 등 냄새제거 장치 설치 - radio
  d17,

  /// 배기에 카본필터 등 냄새제거 장치 설치 - 비고
  d106,

  /// 밀폐구역 내 접함 및 관통 부위의 기밀성 - 이미지 파일
  file14,

  /// 밀폐구역 내 접함 및 관통 부위의 기밀성 - radio
  d18,

  /// 밀폐구역 내 접함 및 관통 부위의 기밀성 - 비고
  d107,

  /// 밀폐구역 내 전열 콘센트 기밀성 - 이미지 파일
  file15,

  /// 밀폐구역 내 전열 콘센트 기밀성 - radio
  d19,

  /// 밀폐구역 내 전열 콘센트 기밀성 - 비고
  d108,

  /// 밀폐구역 내 조명기구 기밀성 - 이미지 파일
  file16,

  /// 밀폐구역 내 조명기구 기밀성 - radio
  d20,

  /// 밀폐구역 내 조명기구 기밀성 - 비고
  d109,

  /// 멸균기-벽체 이음새부위 기밀성 - 이미지 파일
  file17,

  /// 멸균기-벽체 이음새부위 기밀성 - radio
  d21,

  /// 멸균기-벽체 이음새부위 기밀성 - 비고
  d110,

  /// 기타 실험실 내부 벽체 연결부, 코너, 이음새 기밀성 - 이미지 파일
  file18,

  /// 기타 실험실 내부 벽체 연결부, 코너, 이음새 기밀성 - radio
  d22,

  /// 기타 실험실 내부 벽체 연결부, 코너, 이음새 기밀성 - 비고
  d111,

  /// 밀폐구역 내 싱크와 배수 위치 확인 및 기밀성 - 이미지 파일
  file19,

  /// 밀폐구역 내 싱크와 배수 위치 확인 및 기밀성 - radio
  d23,

  /// 밀폐구역 내 싱크와 배수 위치 확인 및 기밀성 - 비고
  d112,

  /// 실험실 내 온도, 습도 및 소음도 - 이미지 파일
  file20,

  /// 실험실 내 온도, 습도 및 소음도 - radio
  d24,

  /// 실험실 내 온도, 습도 및 소음도 - 비고
  d113,

  /// 밀폐구역 내 바닥 마감상태 - 이미지 파일
  file21,

  /// 밀폐구역 내 바닥 마감상태 - radio
  d25,

  /// 밀폐구역 내 바닥 마감상태 - 비고
  d114,

  /// 손 소독기 및 눈 세척기 적정 위치 설치 - 이미지 파일
  file22,

  /// 손 소독기 및 눈 세척기 적정 위치 설치 - radio
  d26,

  /// 손 소독기 및 눈 세척기 적정 위치 설치 - 비고
  d115,

  /// 패스박스 도어 기밀성 - 이미지 파일
  file23,

  /// 패스박스 도어 기밀성 - radio
  d27,

  /// 패스박스 도어 기밀성 - 비고
  d116,

  /// 패스박스 도어 인터락 설정 - 이미지 파일
  file24,

  /// 패스박스 도어 인터락 설정 - radio
  d28,

  /// 패스박스 도어 인터락 설정 - 비고
  d117,

  /// 멸균기 열침투 테스트(BI 멸균 테스트) - 이미지 파일
  file25,

  /// 멸균기 열침투 테스트(BI 멸균 테스트) - radio
  d29,

  /// 멸균기 열침투 테스트(BI 멸균 테스트) - 비고
  d118,

  /// 생물안전작업대 적정 기류흐름 및 작동 - 이미지 파일
  file26,

  /// 생물안전작업대 적정 기류흐름 및 작동 - radio
  d30,

  /// 생물안전작업대 적정 기류흐름 및 작동 - 비고
  d119,

  /// 생물안전작업대 설치 위치 - 이미지 파일
  file27,

  /// 생물안전작업대 설치 위치 - radio
  d31,

  /// 생물안전작업대 설치 위치 - 비고
  d120,

  /// Isolator 기밀성 - 이미지 파일
  file28,

  /// Isolator 기밀성 - radio
  d32,

  /// Isolator 기밀성 - 비고
  d121,

  /// 폐수처리 설비 제균필터 확인 및 설비 출입 통제 - 이미지 파일
  file29,

  /// 폐수처리 설비 제균필터 확인 및 설비 출입 통제 - radio
  d33,

  /// 폐수처리 설비 제균필터 확인 및 설비 출입 통제 - 비고
  d122,

  /// 생물위해표지판(사용병원체, 안전관리자명) 게시 - 이미지 파일
  file30,

  /// 생물위해표지판(사용병원체, 안전관리자명) 게시 - radio
  d34,

  /// 생물위해표지판(사용병원체, 안전관리자명) 게시 - 비고
  d123,

  /// 개인보호구 착,탈의 절차 게시 - 이미지 파일
  file31,

  /// 개인보호구 착,탈의 절차 게시 - radio
  d35,

  /// 개인보호구 착,탈의 절차 게시 - 비고
  d124,

  /// 밀폐구역 내 각 실험실 입구 차압계 설치 - 이미지 파일
  file32,

  /// 밀폐구역 내 각 실험실 입구 차압계 설치 - radio
  d36,

  /// 밀폐구역 내 각 실험실 입구 차압계 설치 - 비고
  d125,

  /// 밀폐구역 내 비상시 연락체계도 게시 - 이미지 파일
  file33,

  /// 밀폐구역 내 비상시 연락체계도 게시 - radio
  d37,

  /// 밀폐구역 내 비상시 연락체계도 게시 - 비고
  d126,

  /// 덕트나 배관의 이름 표시 - 이미지 파일
  file34,

  /// 덕트나 배관의 이름 표시 - radio
  d38,

  /// 덕트나 배관의 이름 표시 - 비고
  d127,

  /// 비상시 가동 및 운영 정지 시의 절차 게시(밀폐시스템 이상 및 대량 스필 발생 포함) - 이미지 파일
  file35,

  /// 비상시 가동 및 운영 정지 시의 절차 게시(밀폐시스템 이상 및 대량 스필 발생 포함) - radio
  d67,

  /// 비상시 가동 및 운영 정지 시의 절차 게시(밀폐시스템 이상 및 대량 스필 발생 포함) - 비고
  d128,

  /// 배양장치 등에 각 등급에 맞는 표시 부착 - 이미지 파일
  file36,

  /// 배양장치 등에 각 등급에 맞는 표시 부착 - radio
  d39,

  /// 배양장치 등에 각 등급에 맞는 표시 부착 - 비고
  d129,

  /// 비상장비(손전등, 구급상자) 비치 - 이미지 파일
  file37,

  /// 비상장비(손전등, 구급상자) 비치 - radio
  d40,

  /// 비상장비(손전등, 구급상자) 비치 - 비고
  d130,

  /// 양방향 통신 시스템(인터폰, 전화 등) - 이미지 파일
  file38,

  /// 양방향 통신 시스템(인터폰, 전화 등) - radio
  d41,

  /// 양방향 통신 시스템(인터폰, 전화 등) - 비고
  d131,

  /// CCTV 설치 위치 적절성 및 동작 확인 - 이미지 파일
  file39,

  /// CCTV 설치 위치 적절성 및 동작 확인 - radio
  d42,

  /// CCTV 설치 위치 적절성 및 동작 확인 - 비고
  d132,

  /// 경보장치의 적정 위치 설치 - 이미지 파일
  file40,

  /// 경보장치의 적정 위치 설치 - radio
  d43,

  /// 경보장치의 적정 위치 설치 - 비고
  d133,

  /// 실간 차압역전 및 양압 형성 시 경보 - 이미지 파일
  file41,

  /// 실간 차압역전 및 양압 형성 시 경보 - radio
  d44,

  /// 실간 차압역전 및 양압 형성 시 경보 - 비고
  d134,

  /// 비상조명, 피난 유도등 - 이미지 파일
  file42,

  /// 비상조명, 피난 유도등 - radio
  d45,

  /// 비상조명, 피난 유도등 - 비고
  d135,

  /// 소화설비/장비 구비 - 이미지 파일
  file43,

  /// 소화설비/장비 구비 - radio
  d46,

  /// 소화설비/장비 구비 - 비고
  d136,

  /// 밀폐구역 내 스필 시 대응 장비(킷트) 등 구비 - 이미지 파일
  file44,

  /// 밀폐구역 내 스필 시 대응 장비(킷트) 등 구비 - radio
  d47,

  /// 밀폐구역 내 스필 시 대응 장비(킷트) 등 구비 - 비고
  d137,

  /// 데이터 전송용 전자시스템 - 이미지 파일
  file45,

  /// 데이터 전송용 전자시스템 - radio
  d48,

  /// 데이터 전송용 전자시스템 - 비고
  d138,

  /// 배관역류 방지장치 - 이미지 파일
  file46,

  /// 배관역류 방지장치 - radio
  d49,

  /// 배관역류 방지장치 - 비고
  d139,

  /// 내부 차압 측정 계기 및 경보장치 - 이미지 파일
  file47,

  /// 내부 차압 측정 계기 및 경보장치 - radio
  d50,

  /// 내부 차압 측정 계기 및 경보장치 - 비고
  d140,

  /// 비상전원공급(UPS 등) 연동 확인 - 이미지 파일
  file48,

  /// 비상전원공급(UPS 등) 연동 확인 - radio
  d51,

  /// 비상전원공급(UPS 등) 연동 확인 - 비고
  d141,

  /// 가스공급 장치 설치 및 출입통제 확인 - 이미지 파일
  file49,

  /// 가스공급 장치 설치 및 출입통제 확인 - radio
  d52,

  /// 가스공급 장치 설치 및 출입통제 확인 - 비고
  d142,

  /// 실험구역 내 상대적으로 순차적인 음압 유지(환기횟수 10회 이상) - 이미지 파일
  file50,

  /// 실험구역 내 상대적으로 순차적인 음압 유지(환기횟수 10회 이상) - radio
  d53,

  /// 실험구역 내 상대적으로 순차적인 음압 유지(환기횟수 10회 이상) - 비고
  d143,

  /// 차압 측정(청정지역과 오염지역은 최소 –24 Pa 유지) - radio
  d54,

  /// 차압 측정(청정지역과 오염지역은 최소 –24 Pa 유지) - 비고
  d144,

  /// 밀폐구역 내 실간차압이 -7.6 Pa 이상 유지 - 이미지 파일
  file51,

  /// 밀폐구역 내 실간차압이 -7.6 Pa 이상 유지 - radio
  d55,

  /// 밀폐구역 내 실간차압이 -7.6 Pa 이상 유지 - 비고
  d145,

  /// 밀폐구역 내 실간 일방향 기류 확인 - 이미지 파일
  file52,

  /// 밀폐구역 내 실간 일방향 기류 확인 - radio
  d56,

  /// 밀폐구역 내 실간 일방향 기류 확인 - 비고
  d146,

  /// 유효 교정장비 사용한 급, 배기 풍량 측정 - 이미지 파일
  file53,

  /// 유효 교정장비 사용한 급, 배기 풍량 측정 - radio
  d57,

  /// 유효 교정장비 사용한 급, 배기 풍량 측정 - 비고
  d147,

  /// 급기팬 1 OFF의 경우, 실내 설정압력 유지 (상시음압) - 이미지 파일
  file54,

  /// 급기팬 1 OFF의 경우, 실내 설정압력 유지 (상시음압) - radio
  d58,

  /// 급기팬 1 OFF의 경우, 실내 설정압력 유지 (상시음압) - 비고
  d148,

  /// 급기팬 2 OFF의 경우, 실내 설정압력 유지 (상시음압) - 이미지 파일
  file55,

  /// 급기팬 2 OFF의 경우, 실내 설정압력 유지 (상시음압) - radio
  d59,

  /// 급기팬 2 OFF의 경우, 실내 설정압력 유지 (상시음압) - 비고
  d149,

  /// 배기팬 1 OFF의 경우, 실내 설정압력 유지 (상시음압) - 이미지 파일
  file56,

  /// 배기팬 1 OFF의 경우, 실내 설정압력 유지 (상시음압) - radio
  d60,

  /// 배기팬 1 OFF의 경우, 실내 설정압력 유지 (상시음압) - 비고
  d150,

  /// 배기팬 2 OFF의 경우, 실내 설정압력 유지 (상시음압) - 이미지 파일
  file57,

  /// 배기팬 2 OFF의 경우, 실내 설정압력 유지 (상시음압) - radio
  d61,

  /// 배기팬 2 OFF의 경우, 실내 설정압력 유지 (상시음압) - 비고
  d151,

  /// 헤파필터 유닛, 배기덕트 압력 감소 시험 - 이미지 파일
  file58,

  /// 헤파필터 유닛, 배기덕트 압력 감소 시험 - radio
  d62,

  /// 헤파필터 유닛, 배기덕트 압력 감소 시험 - 비고
  d152,

  /// 헤파필터 유닛 완전성 테스트(PAO 테스트) - 이미지 파일
  file59,

  /// 헤파필터 유닛 완전성 테스트(PAO 테스트) - radio
  d63,

  /// 헤파필터 유닛 완전성 테스트(PAO 테스트) - 비고
  d153,

  /// 시설 자동제어시스템의 재부팅시, 운영 설정값 유지 - 이미지 파일
  file60,

  /// 시설 자동제어시스템의 재부팅시, 운영 설정값 유지 - radio
  d64,

  /// 시설 자동제어시스템의 재부팅시, 운영 설정값 유지 - 비고
  d154,

  /// HVAC 덕트시스템 제작 손상 등 품질상태 - 이미지 파일
  file61,

  /// HVAC 덕트시스템 제작 손상 등 품질상태 - radio
  d65,

  /// HVAC 덕트시스템 제작 손상 등 품질상태 - 비고
  d155,


  /// 특이사항 - 이미지 파일
  file62,

  /// 특이사항 - 비고
  d156,
}
