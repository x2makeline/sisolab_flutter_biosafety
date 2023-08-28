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

  /// 시설 도면과의 일치성 - 이미지 파일
  @Uint8ListNullableConverter()
  Uint8List? file6;

  /// 시설 도면과의 일치성 - radio
  String? d10;

  /// 시설 도면과의 일치성 - 비고
  String? d99;

  /// 주출입구 잠금장치 및 출입통제 - 이미지 파일
  @Uint8ListNullableConverter()
  Uint8List? file7;

  /// 주출입구 잠금장치 및 출입통제 - radio
  String? d11;

  /// 주출입구 잠금장치 및 출입통제 - 비고
  String? d100;

  /// 장비 반출 가능한 문 설치 - 이미지 파일
  @Uint8ListNullableConverter()
  Uint8List? file8;

  /// 장비 반출 가능한 문 설치 - radio
  String? d12;

  /// 장비 반출 가능한 문 설치 - 비고
  String? d101;

  /// 밀폐구역 내 인터락(수동조작 가능) - 이미지 파일
  @Uint8ListNullableConverter()
  Uint8List? file9;

  /// 밀폐구역 내 인터락(수동조작 가능) - radio
  String? d13;

  /// 밀폐구역 내 인터락(수동조작 가능) - 비고
  String? d102;

  /// 도어 자동 닫힘 - 이미지 파일
  @Uint8ListNullableConverter()
  Uint8List? file10;

  /// 도어 자동 닫힘 - radio
  String? d14;

  /// 도어 자동 닫힘 - 비고
  String? d103;

  /// 비상샤워 설비 가동 - 이미지 파일
  @Uint8ListNullableConverter()
  Uint8List? file11;

  /// 비상샤워 설비 가동 - radio
  String? d15;

  /// 비상샤워 설비 가동 - 비고
  String? d104;

  /// 급기 덕트에 헤파 필터 설치 - 이미지 파일
  @Uint8ListNullableConverter()
  Uint8List? file12;

  /// 급기 덕트에 헤파 필터 설치 - radio
  String? d16;

  /// 급기 덕트에 헤파 필터 설치 - 비고
  String? d105;

  /// 배기에 카본필터 등 냄새제거 장치 설치 - 이미지 파일
  @Uint8ListNullableConverter()
  Uint8List? file13;

  /// 배기에 카본필터 등 냄새제거 장치 설치 - radio
  String? d17;

  /// 배기에 카본필터 등 냄새제거 장치 설치 - 비고
  String? d106;

  /// 밀폐구역 내 접함 및 관통 부위의 기밀성 - 이미지 파일
  @Uint8ListNullableConverter()
  Uint8List? file14;

  /// 밀폐구역 내 접함 및 관통 부위의 기밀성 - radio
  String? d18;

  /// 밀폐구역 내 접함 및 관통 부위의 기밀성 - 비고
  String? d107;

  /// 밀폐구역 내 전열 콘센트 기밀성 - 이미지 파일
  @Uint8ListNullableConverter()
  Uint8List? file15;

  /// 밀폐구역 내 전열 콘센트 기밀성 - radio
  String? d19;

  /// 밀폐구역 내 전열 콘센트 기밀성 - 비고
  String? d108;

  /// 밀폐구역 내 조명기구 기밀성 - 이미지 파일
  @Uint8ListNullableConverter()
  Uint8List? file16;

  /// 밀폐구역 내 조명기구 기밀성 - radio
  String? d20;

  /// 밀폐구역 내 조명기구 기밀성 - 비고
  String? d109;

  /// 멸균기-벽체 이음새부위 기밀성 - 이미지 파일
  @Uint8ListNullableConverter()
  Uint8List? file17;

  /// 멸균기-벽체 이음새부위 기밀성 - radio
  String? d21;

  /// 멸균기-벽체 이음새부위 기밀성 - 비고
  String? d110;

  /// 기타 실험실 내부 벽체 연결부, 코너, 이음새 기밀성 - 이미지 파일
  @Uint8ListNullableConverter()
  Uint8List? file18;

  /// 기타 실험실 내부 벽체 연결부, 코너, 이음새 기밀성 - radio
  String? d22;

  /// 기타 실험실 내부 벽체 연결부, 코너, 이음새 기밀성 - 비고
  String? d111;

  /// 밀폐구역 내 싱크와 배수 위치 확인 및 기밀성 - 이미지 파일
  @Uint8ListNullableConverter()
  Uint8List? file19;

  /// 밀폐구역 내 싱크와 배수 위치 확인 및 기밀성 - radio
  String? d23;

  /// 밀폐구역 내 싱크와 배수 위치 확인 및 기밀성 - 비고
  String? d112;

  /// 실험실 내 온도, 습도 및 소음도 - 이미지 파일
  @Uint8ListNullableConverter()
  Uint8List? file20;

  /// 실험실 내 온도, 습도 및 소음도 - radio
  String? d24;

  /// 실험실 내 온도, 습도 및 소음도 - 비고
  String? d113;

  /// 밀폐구역 내 바닥 마감상태 - 이미지 파일
  @Uint8ListNullableConverter()
  Uint8List? file21;

  /// 밀폐구역 내 바닥 마감상태 - radio
  String? d25;

  /// 밀폐구역 내 바닥 마감상태 - 비고
  String? d114;

  /// 손 소독기 및 눈 세척기 적정 위치 설치 - 이미지 파일
  @Uint8ListNullableConverter()
  Uint8List? file22;

  /// 손 소독기 및 눈 세척기 적정 위치 설치 - radio
  String? d26;

  /// 손 소독기 및 눈 세척기 적정 위치 설치 - 비고
  String? d115;

  /// 패스박스 도어 기밀성 - 이미지 파일
  @Uint8ListNullableConverter()
  Uint8List? file23;

  /// 패스박스 도어 기밀성 - radio
  String? d27;

  /// 패스박스 도어 기밀성 - 비고
  String? d116;

  /// 패스박스 도어 인터락 설정 - 이미지 파일
  @Uint8ListNullableConverter()
  Uint8List? file24;

  /// 패스박스 도어 인터락 설정 - radio
  String? d28;

  /// 패스박스 도어 인터락 설정 - 비고
  String? d117;

  /// 멸균기 열침투 테스트(BI 멸균 테스트) - 이미지 파일
  @Uint8ListNullableConverter()
  Uint8List? file25;

  /// 멸균기 열침투 테스트(BI 멸균 테스트) - radio
  String? d29;

  /// 멸균기 열침투 테스트(BI 멸균 테스트) - 비고
  String? d118;

  /// 생물안전작업대 적정 기류흐름 및 작동 - 이미지 파일
  @Uint8ListNullableConverter()
  Uint8List? file26;

  /// 생물안전작업대 적정 기류흐름 및 작동 - radio
  String? d30;

  /// 생물안전작업대 적정 기류흐름 및 작동 - 비고
  String? d119;

  /// 생물안전작업대 설치 위치 - 이미지 파일
  @Uint8ListNullableConverter()
  Uint8List? file27;

  /// 생물안전작업대 설치 위치 - radio
  String? d31;

  /// 생물안전작업대 설치 위치 - 비고
  String? d120;

  /// Isolator 기밀성 - 이미지 파일
  @Uint8ListNullableConverter()
  Uint8List? file28;

  /// Isolator 기밀성 - radio
  String? d32;

  /// Isolator 기밀성 - 비고
  String? d121;

  /// 폐수처리 설비 제균필터 확인 및 설비 출입 통제 - 이미지 파일
  @Uint8ListNullableConverter()
  Uint8List? file29;

  /// 폐수처리 설비 제균필터 확인 및 설비 출입 통제 - radio
  String? d33;

  /// 폐수처리 설비 제균필터 확인 및 설비 출입 통제 - 비고
  String? d122;

  /// 생물위해표지판(사용병원체, 안전관리자명) 게시 - 이미지 파일
  @Uint8ListNullableConverter()
  Uint8List? file30;

  /// 생물위해표지판(사용병원체, 안전관리자명) 게시 - radio
  String? d34;

  /// 생물위해표지판(사용병원체, 안전관리자명) 게시 - 비고
  String? d123;

  /// 개인보호구 착,탈의 절차 게시 - 이미지 파일
  @Uint8ListNullableConverter()
  Uint8List? file31;

  /// 개인보호구 착,탈의 절차 게시 - radio
  String? d35;

  /// 개인보호구 착,탈의 절차 게시 - 비고
  String? d124;

  /// 밀폐구역 내 각 실험실 입구 차압계 설치 - 이미지 파일
  @Uint8ListNullableConverter()
  Uint8List? file32;

  /// 밀폐구역 내 각 실험실 입구 차압계 설치 - radio
  String? d36;

  /// 밀폐구역 내 각 실험실 입구 차압계 설치 - 비고
  String? d125;

  /// 밀폐구역 내 비상시 연락체계도 게시 - 이미지 파일
  @Uint8ListNullableConverter()
  Uint8List? file33;

  /// 밀폐구역 내 비상시 연락체계도 게시 - radio
  String? d37;

  /// 밀폐구역 내 비상시 연락체계도 게시 - 비고
  String? d126;

  /// 덕트나 배관의 이름 표시 - 이미지 파일
  @Uint8ListNullableConverter()
  Uint8List? file34;

  /// 덕트나 배관의 이름 표시 - radio
  String? d38;

  /// 덕트나 배관의 이름 표시 - 비고
  String? d127;

  /// 비상시 가동 및 운영 정지 시의 절차 게시(밀폐시스템 이상 및 대량 스필 발생 포함) - 이미지 파일
  @Uint8ListNullableConverter()
  Uint8List? file35;

  /// 비상시 가동 및 운영 정지 시의 절차 게시(밀폐시스템 이상 및 대량 스필 발생 포함) - radio
  String? d67;

  /// 비상시 가동 및 운영 정지 시의 절차 게시(밀폐시스템 이상 및 대량 스필 발생 포함) - 비고
  String? d128;

  /// 배양장치 등에 각 등급에 맞는 표시 부착 - 이미지 파일
  @Uint8ListNullableConverter()
  Uint8List? file36;

  /// 배양장치 등에 각 등급에 맞는 표시 부착 - radio
  String? d39;

  /// 배양장치 등에 각 등급에 맞는 표시 부착 - 비고
  String? d129;

  /// 비상장비(손전등, 구급상자) 비치 - 이미지 파일
  @Uint8ListNullableConverter()
  Uint8List? file37;

  /// 비상장비(손전등, 구급상자) 비치 - radio
  String? d40;

  /// 비상장비(손전등, 구급상자) 비치 - 비고
  String? d130;

  /// 양방향 통신 시스템(인터폰, 전화 등) - 이미지 파일
  @Uint8ListNullableConverter()
  Uint8List? file38;

  /// 양방향 통신 시스템(인터폰, 전화 등) - radio
  String? d41;

  /// 양방향 통신 시스템(인터폰, 전화 등) - 비고
  String? d131;

  /// CCTV 설치 위치 적절성 및 동작 확인 - 이미지 파일
  @Uint8ListNullableConverter()
  Uint8List? file39;

  /// CCTV 설치 위치 적절성 및 동작 확인 - radio
  String? d42;

  /// CCTV 설치 위치 적절성 및 동작 확인 - 비고
  String? d132;

  /// 경보장치의 적정 위치 설치 - 이미지 파일
  @Uint8ListNullableConverter()
  Uint8List? file40;

  /// 경보장치의 적정 위치 설치 - radio
  String? d43;

  /// 경보장치의 적정 위치 설치 - 비고
  String? d133;

  /// 실간 차압역전 및 양압 형성 시 경보 - 이미지 파일
  @Uint8ListNullableConverter()
  Uint8List? file41;

  /// 실간 차압역전 및 양압 형성 시 경보 - radio
  String? d44;

  /// 실간 차압역전 및 양압 형성 시 경보 - 비고
  String? d134;

  /// 비상조명, 피난 유도등 - 이미지 파일
  @Uint8ListNullableConverter()
  Uint8List? file42;

  /// 비상조명, 피난 유도등 - radio
  String? d45;

  /// 비상조명, 피난 유도등 - 비고
  String? d135;

  /// 소화설비/장비 구비 - 이미지 파일
  @Uint8ListNullableConverter()
  Uint8List? file43;

  /// 소화설비/장비 구비 - radio
  String? d46;

  /// 소화설비/장비 구비 - 비고
  String? d136;

  /// 밀폐구역 내 스필 시 대응 장비(킷트) 등 구비 - 이미지 파일
  @Uint8ListNullableConverter()
  Uint8List? file44;

  /// 밀폐구역 내 스필 시 대응 장비(킷트) 등 구비 - radio
  String? d47;

  /// 밀폐구역 내 스필 시 대응 장비(킷트) 등 구비 - 비고
  String? d137;

  /// 데이터 전송용 전자시스템 - 이미지 파일
  @Uint8ListNullableConverter()
  Uint8List? file45;

  /// 데이터 전송용 전자시스템 - radio
  String? d48;

  /// 데이터 전송용 전자시스템 - 비고
  String? d138;

  /// 배관역류 방지장치 - 이미지 파일
  @Uint8ListNullableConverter()
  Uint8List? file46;

  /// 배관역류 방지장치 - radio
  String? d49;

  /// 배관역류 방지장치 - 비고
  String? d139;

  /// 내부 차압 측정 계기 및 경보장치 - 이미지 파일
  @Uint8ListNullableConverter()
  Uint8List? file47;

  /// 내부 차압 측정 계기 및 경보장치 - radio
  String? d50;

  /// 내부 차압 측정 계기 및 경보장치 - 비고
  String? d140;

  /// 비상전원공급(UPS 등) 연동 확인 - 이미지 파일
  @Uint8ListNullableConverter()
  Uint8List? file48;

  /// 비상전원공급(UPS 등) 연동 확인 - radio
  String? d51;

  /// 비상전원공급(UPS 등) 연동 확인 - 비고
  String? d141;

  /// 가스공급 장치 설치 및 출입통제 확인 - 이미지 파일
  @Uint8ListNullableConverter()
  Uint8List? file49;

  /// 가스공급 장치 설치 및 출입통제 확인 - radio
  String? d52;

  /// 가스공급 장치 설치 및 출입통제 확인 - 비고
  String? d142;

  /// 실험구역 내 상대적으로 순차적인 음압 유지(환기횟수 10회 이상) - 이미지 파일
  @Uint8ListNullableConverter()
  Uint8List? file50;

  /// 실험구역 내 상대적으로 순차적인 음압 유지(환기횟수 10회 이상) - radio
  String? d53;

  /// 실험구역 내 상대적으로 순차적인 음압 유지(환기횟수 10회 이상) - 비고
  String? d143;

  /// 차압 측정(청정지역과 오염지역은 최소 –24 Pa 유지) - radio
  String? d54;

  /// 차압 측정(청정지역과 오염지역은 최소 –24 Pa 유지) - 비고
  String? d144;

  /// 밀폐구역 내 실간차압이 -7.6 Pa 이상 유지 - 이미지 파일
  @Uint8ListNullableConverter()
  Uint8List? file51;

  /// 밀폐구역 내 실간차압이 -7.6 Pa 이상 유지 - radio
  String? d55;

  /// 밀폐구역 내 실간차압이 -7.6 Pa 이상 유지 - 비고
  String? d145;

  /// 밀폐구역 내 실간 일방향 기류 확인 - 이미지 파일
  @Uint8ListNullableConverter()
  Uint8List? file52;

  /// 밀폐구역 내 실간 일방향 기류 확인 - radio
  String? d56;

  /// 밀폐구역 내 실간 일방향 기류 확인 - 비고
  String? d146;

  /// 유효 교정장비 사용한 급, 배기 풍량 측정 - 이미지 파일
  @Uint8ListNullableConverter()
  Uint8List? file53;

  /// 유효 교정장비 사용한 급, 배기 풍량 측정 - radio
  String? d57;

  /// 유효 교정장비 사용한 급, 배기 풍량 측정 - 비고
  String? d147;

  /// 급기팬 1 OFF의 경우, 실내 설정압력 유지 (상시음압) - 이미지 파일
  @Uint8ListNullableConverter()
  Uint8List? file54;

  /// 급기팬 1 OFF의 경우, 실내 설정압력 유지 (상시음압) - radio
  String? d58;

  /// 급기팬 1 OFF의 경우, 실내 설정압력 유지 (상시음압) - 비고
  String? d148;

  /// 급기팬 2 OFF의 경우, 실내 설정압력 유지 (상시음압) - 이미지 파일
  @Uint8ListNullableConverter()
  Uint8List? file55;

  /// 급기팬 2 OFF의 경우, 실내 설정압력 유지 (상시음압) - radio
  String? d59;

  /// 급기팬 2 OFF의 경우, 실내 설정압력 유지 (상시음압) - 비고
  String? d149;

  /// 배기팬 1 OFF의 경우, 실내 설정압력 유지 (상시음압) - 이미지 파일
  @Uint8ListNullableConverter()
  Uint8List? file56;

  /// 배기팬 1 OFF의 경우, 실내 설정압력 유지 (상시음압) - radio
  String? d60;

  /// 배기팬 1 OFF의 경우, 실내 설정압력 유지 (상시음압) - 비고
  String? d150;

  /// 배기팬 2 OFF의 경우, 실내 설정압력 유지 (상시음압) - 이미지 파일
  @Uint8ListNullableConverter()
  Uint8List? file57;

  /// 배기팬 2 OFF의 경우, 실내 설정압력 유지 (상시음압) - radio
  String? d61;

  /// 배기팬 2 OFF의 경우, 실내 설정압력 유지 (상시음압) - 비고
  String? d151;

  /// 헤파필터 유닛, 배기덕트 압력 감소 시험 - 이미지 파일
  @Uint8ListNullableConverter()
  Uint8List? file58;

  /// 헤파필터 유닛, 배기덕트 압력 감소 시험 - radio
  String? d62;

  /// 헤파필터 유닛, 배기덕트 압력 감소 시험 - 비고
  String? d152;

  /// 헤파필터 유닛 완전성 테스트(PAO 테스트) - 이미지 파일
  @Uint8ListNullableConverter()
  Uint8List? file59;

  /// 헤파필터 유닛 완전성 테스트(PAO 테스트) - radio
  String? d63;

  /// 헤파필터 유닛 완전성 테스트(PAO 테스트) - 비고
  String? d153;

  /// 시설 자동제어시스템의 재부팅시, 운영 설정값 유지 - 이미지 파일
  @Uint8ListNullableConverter()
  Uint8List? file60;

  /// 시설 자동제어시스템의 재부팅시, 운영 설정값 유지 - radio
  String? d64;

  /// 시설 자동제어시스템의 재부팅시, 운영 설정값 유지 - 비고
  String? d154;

  /// HVAC 덕트시스템 제작 손상 등 품질상태 - 이미지 파일
  @Uint8ListNullableConverter()
  Uint8List? file61;

  /// HVAC 덕트시스템 제작 손상 등 품질상태 - radio
  String? d65;

  /// HVAC 덕트시스템 제작 손상 등 품질상태 - 비고
  String? d155;

  /// 특이사항 - 이미지 파일
  @Uint8ListNullableConverter()
  Uint8List? file62;

  /// 특이사항 - 비고
  String? d156;

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
    this.file6,
    this.d10,
    this.d99,
    this.file7,
    this.d11,
    this.d100,
    this.file8,
    this.d12,
    this.d101,
    this.file9,
    this.d13,
    this.d102,
    this.file10,
    this.d14,
    this.d103,
    this.file11,
    this.d15,
    this.d104,
    this.file12,
    this.d16,
    this.d105,
    this.file13,
    this.d17,
    this.d106,
    this.file14,
    this.d18,
    this.d107,
    this.file15,
    this.d19,
    this.d108,
    this.file16,
    this.d20,
    this.d109,
    this.file17,
    this.d21,
    this.d110,
    this.file18,
    this.d22,
    this.d111,
    this.file19,
    this.d23,
    this.d112,
    this.file20,
    this.d24,
    this.d113,
    this.file21,
    this.d25,
    this.d114,
    this.file22,
    this.d26,
    this.d115,
    this.file23,
    this.d27,
    this.d116,
    this.file24,
    this.d28,
    this.d117,
    this.file25,
    this.d29,
    this.d118,
    this.file26,
    this.d30,
    this.d119,
    this.file27,
    this.d31,
    this.d120,
    this.file28,
    this.d32,
    this.d121,
    this.file29,
    this.d33,
    this.d122,
    this.file30,
    this.d34,
    this.d123,
    this.file31,
    this.d35,
    this.d124,
    this.file32,
    this.d36,
    this.d125,
    this.file33,
    this.d37,
    this.d126,
    this.file34,
    this.d38,
    this.d127,
    this.file35,
    this.d67,
    this.d128,
    this.file36,
    this.d39,
    this.d129,
    this.file37,
    this.d40,
    this.d130,
    this.file38,
    this.d41,
    this.d131,
    this.file39,
    this.d42,
    this.d132,
    this.file40,
    this.d43,
    this.d133,
    this.file41,
    this.d44,
    this.d134,
    this.file42,
    this.d45,
    this.d135,
    this.file43,
    this.d46,
    this.d136,
    this.file44,
    this.d47,
    this.d137,
    this.file45,
    this.d48,
    this.d138,
    this.file46,
    this.d49,
    this.d139,
    this.file47,
    this.d50,
    this.d140,
    this.file48,
    this.d51,
    this.d141,
    this.file49,
    this.d52,
    this.d142,
    this.file50,
    this.d53,
    this.d143,
    this.d54,
    this.d144,
    this.file51,
    this.d55,
    this.d145,
    this.file52,
    this.d56,
    this.d146,
    this.file53,
    this.d57,
    this.d147,
    this.file54,
    this.d58,
    this.d148,
    this.file55,
    this.d59,
    this.d149,
    this.file56,
    this.d60,
    this.d150,
    this.file57,
    this.d61,
    this.d151,
    this.file58,
    this.d62,
    this.d152,
    this.file59,
    this.d63,
    this.d153,
    this.file60,
    this.d64,
    this.d154,
    this.file61,
    this.d65,
    this.d155,
    this.file62,
    this.d156,
  });

  @override
  String toString() {
    return 'BioIo{company: $company, d184: $d184, d280: $d280, d68: $d68, d69: $d69, d70: $d70, d71: $d71, d72: $d72, d73: $d73, d74: $d74, d75: $d75, d157: $d157, d76: $d76, d281: $d281, docno: $docno, d158: $d158, d282: $d282, d283: $d283, d284: $d284, d285: $d285, d286: $d286, d159: $d159, d162: $d162, d165: $d165, d271: $d271, d274: $d274, d160: $d160, d163: $d163, d166: $d166, d272: $d272, d275: $d275, d161: $d161, d164: $d164, d167: $d167, d273: $d273, d276: $d276, d168: $d168, d170: $d170, d169: $d169, d185: $d185, d172: $d172, d171: $d171, d186: $d186, d174: $d174, d173: $d173, d187: $d187, d176: $d176, d175: $d175, d188: $d188, d178: $d178, d177: $d177, d189: $d189, d77: $d77, d78: $d78, d79: $d79, d80: $d80, d81: $d81, d82: $d82, d83: $d83, d84: $d84, d85: $d85, file1: $file1, d179: $d179, d180: $d180, d1: $d1, d181: $d181, d87: $d87, d2: $d2, d182: $d182, d88: $d88, d3: $d3, d183: $d183, file2: $file2, d89: $d89, d90: $d90, d4: $d4, d91: $d91, d92: $d92, d5: $d5, d93: $d93, d94: $d94, d6: $d6, d95: $d95, file3: $file3, d7: $d7, d96: $d96, file4: $file4, d8: $d8, d97: $d97, file5: $file5, d9: $d9, d98: $d98, file6: $file6, d10: $d10, d99: $d99, file7: $file7, d11: $d11, d100: $d100, file8: $file8, d12: $d12, d101: $d101, file9: $file9, d13: $d13, d102: $d102, file10: $file10, d14: $d14, d103: $d103, file11: $file11, d15: $d15, d104: $d104, file12: $file12, d16: $d16, d105: $d105, file13: $file13, d17: $d17, d106: $d106, file14: $file14, d18: $d18, d107: $d107, file15: $file15, d19: $d19, d108: $d108, file16: $file16, d20: $d20, d109: $d109, file17: $file17, d21: $d21, d110: $d110, file18: $file18, d22: $d22, d111: $d111, file19: $file19, d23: $d23, d112: $d112, file20: $file20, d24: $d24, d113: $d113, file21: $file21, d25: $d25, d114: $d114, file22: $file22, d26: $d26, d115: $d115, file23: $file23, d27: $d27, d116: $d116, file24: $file24, d28: $d28, d117: $d117, file25: $file25, d29: $d29, d118: $d118, file26: $file26, d30: $d30, d119: $d119, file27: $file27, d31: $d31, d120: $d120, file28: $file28, d32: $d32, d121: $d121, file29: $file29, d33: $d33, d122: $d122, file30: $file30, d34: $d34, d123: $d123, file31: $file31, d35: $d35, d124: $d124, file32: $file32, d36: $d36, d125: $d125, file33: $file33, d37: $d37, d126: $d126, file34: $file34, d38: $d38, d127: $d127, file35: $file35, d67: $d67, d128: $d128, file36: $file36, d39: $d39, d129: $d129, file37: $file37, d40: $d40, d130: $d130, file38: $file38, d41: $d41, d131: $d131, file39: $file39, d42: $d42, d132: $d132, file40: $file40, d43: $d43, d133: $d133, file41: $file41, d44: $d44, d134: $d134, file42: $file42, d45: $d45, d135: $d135, file43: $file43, d46: $d46, d136: $d136, file44: $file44, d47: $d47, d137: $d137, file45: $file45, d48: $d48, d138: $d138, file46: $file46, d49: $d49, d139: $d139, file47: $file47, d50: $d50, d140: $d140, file48: $file48, d51: $d51, d141: $d141, file49: $file49, d52: $d52, d142: $d142, file50: $file50, d53: $d53, d143: $d143, d54: $d54, d144: $d144, file51: $file51, d55: $d55, d145: $d145, file52: $file52, d56: $d56, d146: $d146, file53: $file53, d57: $d57, d147: $d147, file54: $file54, d58: $d58, d148: $d148, file55: $file55, d59: $d59, d149: $d149, file56: $file56, d60: $d60, d150: $d150, file57: $file57, d61: $d61, d151: $d151, file58: $file58, d62: $d62, d152: $d152, file59: $file59, d63: $d63, d153: $d153, file60: $file60, d64: $d64, d154: $d154, file61: $file61, d65: $d65, d155: $d155, file62: $file62, d156: $d156}';
  }

  factory BioIo.fromJson(Map<String, dynamic> json) => _$BioIoFromJson(json);

  factory BioIo.fromForm(Map<String, dynamic> json) => BioIo(
        company: json['company'] as String?,
        d184: json['d184'] as String?,
        d280: json['d280'] as String?,
        d68: json['d68'] as bool?,
        d69: json['d69'] as bool?,
        d70: json['d70'] as bool?,
        d71: json['d71'] as bool?,
        d72: json['d72'] as bool?,
        d73: json['d73'] as bool?,
        d74: json['d74'] as bool?,
        d75: json['d75'] as bool?,
        d157: json['d157'] as String?,
        d76: json['d76'] as bool?,
        d281: json['d281'] as String?,
        docno: json['docno'] as String?,
        d158: json['d158'] as DateTime?,
        d282: json['d282'] as String?,
        d283: json['d283'] as String?,
        d284: json['d284'] as String?,
        d285: json['d285'] as String?,
        d286: json['d286'] as String?,
        d159: json['d159'] as String?,
        d162: json['d162'] as Uint8List?,
        d165: json['d165'] as String?,
        d271: json['d271'] as String?,
        d274: json['d274'] as String?,
        d160: json['d160'] as String?,
        d163: json['d163'] as Uint8List?,
        d166: json['d166'] as String?,
        d272: json['d272'] as String?,
        d275: json['d275'] as String?,
        d161: json['d161'] as String?,
        d164: json['d164'] as Uint8List?,
        d167: json['d167'] as String?,
        d273: json['d273'] as String?,
        d276: json['d276'] as String?,
        d168: json['d168'] as DateTime?,
        d170: json['d170'] as String?,
        d169: json['d169'] as String?,
        d185: json['d185'] as Uint8List?,
        d172: json['d172'] as String?,
        d171: json['d171'] as String?,
        d186: json['d186'] as Uint8List?,
        d174: json['d174'] as String?,
        d173: json['d173'] as String?,
        d187: json['d187'] as Uint8List?,
        d176: json['d176'] as String?,
        d175: json['d175'] as String?,
        d188: json['d188'] as Uint8List?,
        d178: json['d178'] as String?,
        d177: json['d177'] as String?,
        d189: json['d189'] as Uint8List?,
        d77: json['d77'] as String?,
        d78: json['d78'] as String?,
        d79: json['d79'] as String?,
        d80: json['d80'] as String?,
        d81: json['d81'] as String?,
        d82: json['d82'] as String?,
        d83: json['d83'] as String?,
        d84: json['d84'] as String?,
        d85: json['d85'] as String?,
        file1: json['file1'] as Uint8List?,
        d179: json['d179'] as String?,
        d180: json['d180'] as String?,
        d1: json['d1'] as String?,
        d181: json['d181'] as String?,
        d87: json['d87'] as String?,
        d2: json['d2'] as String?,
        d182: json['d182'] as String?,
        d88: json['d88'] as String?,
        d3: json['d3'] as String?,
        d183: json['d183'] as String?,
        file2: json['file2'] as Uint8List?,
        d89: json['d89'] as String?,
        d90: json['d90'] as String?,
        d4: json['d4'] as String?,
        d91: json['d91'] as String?,
        d92: json['d92'] as String?,
        d5: json['d5'] as String?,
        d93: json['d93'] as String?,
        d94: json['d94'] as String?,
        d6: json['d6'] as String?,
        d95: json['d95'] as String?,
        file3: json['file3'] as Uint8List?,
        d7: json['d7'] as String?,
        d96: json['d96'] as String?,
        file4: json['file4'] as Uint8List?,
        d8: json['d8'] as String?,
        d97: json['d97'] as String?,
        file5: json['file5'] as Uint8List?,
        d9: json['d9'] as String?,
        d98: json['d98'] as String?,
        file6: json['file6'] as Uint8List?,
        d10: json['d10'] as String?,
        d99: json['d99'] as String?,
        file7: json['file7'] as Uint8List?,
        d11: json['d11'] as String?,
        d100: json['d100'] as String?,
        file8: json['file8'] as Uint8List?,
        d12: json['d12'] as String?,
        d101: json['d101'] as String?,
        file9: json['file9'] as Uint8List?,
        d13: json['d13'] as String?,
        d102: json['d102'] as String?,
        file10: json['file10'] as Uint8List?,
        d14: json['d14'] as String?,
        d103: json['d103'] as String?,
        file11: json['file11'] as Uint8List?,
        d15: json['d15'] as String?,
        d104: json['d104'] as String?,
        file12: json['file12'] as Uint8List?,
        d16: json['d16'] as String?,
        d105: json['d105'] as String?,
        file13: json['file13'] as Uint8List?,
        d17: json['d17'] as String?,
        d106: json['d106'] as String?,
        file14: json['file14'] as Uint8List?,
        d18: json['d18'] as String?,
        d107: json['d107'] as String?,
        file15: json['file15'] as Uint8List?,
        d19: json['d19'] as String?,
        d108: json['d108'] as String?,
        file16: json['file16'] as Uint8List?,
        d20: json['d20'] as String?,
        d109: json['d109'] as String?,
        file17: json['file17'] as Uint8List?,
        d21: json['d21'] as String?,
        d110: json['d110'] as String?,
        file18: json['file18'] as Uint8List?,
        d22: json['d22'] as String?,
        d111: json['d111'] as String?,
        file19: json['file19'] as Uint8List?,
        d23: json['d23'] as String?,
        d112: json['d112'] as String?,
        file20: json['file20'] as Uint8List?,
        d24: json['d24'] as String?,
        d113: json['d113'] as String?,
        file21: json['file21'] as Uint8List?,
        d25: json['d25'] as String?,
        d114: json['d114'] as String?,
        file22: json['file22'] as Uint8List?,
        d26: json['d26'] as String?,
        d115: json['d115'] as String?,
        file23: json['file23'] as Uint8List?,
        d27: json['d27'] as String?,
        d116: json['d116'] as String?,
        file24: json['file24'] as Uint8List?,
        d28: json['d28'] as String?,
        d117: json['d117'] as String?,
        file25: json['file25'] as Uint8List?,
        d29: json['d29'] as String?,
        d118: json['d118'] as String?,
        file26: json['file26'] as Uint8List?,
        d30: json['d30'] as String?,
        d119: json['d119'] as String?,
        file27: json['file27'] as Uint8List?,
        d31: json['d31'] as String?,
        d120: json['d120'] as String?,
        file28: json['file28'] as Uint8List?,
        d32: json['d32'] as String?,
        d121: json['d121'] as String?,
        file29: json['file29'] as Uint8List?,
        d33: json['d33'] as String?,
        d122: json['d122'] as String?,
        file30: json['file30'] as Uint8List?,
        d34: json['d34'] as String?,
        d123: json['d123'] as String?,
        file31: json['file31'] as Uint8List?,
        d35: json['d35'] as String?,
        d124: json['d124'] as String?,
        file32: json['file32'] as Uint8List?,
        d36: json['d36'] as String?,
        d125: json['d125'] as String?,
        file33: json['file33'] as Uint8List?,
        d37: json['d37'] as String?,
        d126: json['d126'] as String?,
        file34: json['file34'] as Uint8List?,
        d38: json['d38'] as String?,
        d127: json['d127'] as String?,
        file35: json['file35'] as Uint8List?,
        d67: json['d67'] as String?,
        d128: json['d128'] as String?,
        file36: json['file36'] as Uint8List?,
        d39: json['d39'] as String?,
        d129: json['d129'] as String?,
        file37: json['file37'] as Uint8List?,
        d40: json['d40'] as String?,
        d130: json['d130'] as String?,
        file38: json['file38'] as Uint8List?,
        d41: json['d41'] as String?,
        d131: json['d131'] as String?,
        file39: json['file39'] as Uint8List?,
        d42: json['d42'] as String?,
        d132: json['d132'] as String?,
        file40: json['file40'] as Uint8List?,
        d43: json['d43'] as String?,
        d133: json['d133'] as String?,
        file41: json['file41'] as Uint8List?,
        d44: json['d44'] as String?,
        d134: json['d134'] as String?,
        file42: json['file42'] as Uint8List?,
        d45: json['d45'] as String?,
        d135: json['d135'] as String?,
        file43: json['file43'] as Uint8List?,
        d46: json['d46'] as String?,
        d136: json['d136'] as String?,
        file44: json['file44'] as Uint8List?,
        d47: json['d47'] as String?,
        d137: json['d137'] as String?,
        file45: json['file45'] as Uint8List?,
        d48: json['d48'] as String?,
        d138: json['d138'] as String?,
        file46: json['file46'] as Uint8List?,
        d49: json['d49'] as String?,
        d139: json['d139'] as String?,
        file47: json['file47'] as Uint8List?,
        d50: json['d50'] as String?,
        d140: json['d140'] as String?,
        file48: json['file48'] as Uint8List?,
        d51: json['d51'] as String?,
        d141: json['d141'] as String?,
        file49: json['file49'] as Uint8List?,
        d52: json['d52'] as String?,
        d142: json['d142'] as String?,
        file50: json['file50'] as Uint8List?,
        d53: json['d53'] as String?,
        d143: json['d143'] as String?,
        d54: json['d54'] as String?,
        d144: json['d144'] as String?,
        file51: json['file51'] as Uint8List?,
        d55: json['d55'] as String?,
        d145: json['d145'] as String?,
        file52: json['file52'] as Uint8List?,
        d56: json['d56'] as String?,
        d146: json['d146'] as String?,
        file53: json['file53'] as Uint8List?,
        d57: json['d57'] as String?,
        d147: json['d147'] as String?,
        file54: json['file54'] as Uint8List?,
        d58: json['d58'] as String?,
        d148: json['d148'] as String?,
        file55: json['file55'] as Uint8List?,
        d59: json['d59'] as String?,
        d149: json['d149'] as String?,
        file56: json['file56'] as Uint8List?,
        d60: json['d60'] as String?,
        d150: json['d150'] as String?,
        file57: json['file57'] as Uint8List?,
        d61: json['d61'] as String?,
        d151: json['d151'] as String?,
        file58: json['file58'] as Uint8List?,
        d62: json['d62'] as String?,
        d152: json['d152'] as String?,
        file59: json['file59'] as Uint8List?,
        d63: json['d63'] as String?,
        d153: json['d153'] as String?,
        file60: json['file60'] as Uint8List?,
        d64: json['d64'] as String?,
        d154: json['d154'] as String?,
        file61: json['file61'] as Uint8List?,
        d65: json['d65'] as String?,
        d155: json['d155'] as String?,
        file62: json['file62'] as Uint8List?,
        d156: json['d156'] as String?,
      );

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

  /// (신규)특이사항 - 비고
  /// (정기)총평
  d156,


}
