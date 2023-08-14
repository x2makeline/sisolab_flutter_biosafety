import 'package:sisolab_flutter_biosafety/app/global/models/field_type.dart';

enum FclNewDetailFields {
  /// 운영기관
  operatingInstitution(FieldType.text),

  /// 설치 ∙ 운영 장소
  placeOfInstallationAndOperation(FieldType.text),

  /// 안전관리등급
  safetyManagementLevel(FieldType.text),

  /// 시설내역 - 일반
  generalOfFacilityDetails(FieldType.checkbox),

  /// 시설내역 - 대량배양
  massCultureOfFacilityDetails(FieldType.checkbox),

  /// 시설내역 - 동물
  animalOfFacilityDetails(FieldType.checkbox),

  /// 시설내역 - 식물
  plantOfFacilityDetails(FieldType.checkbox),

  /// 시설내역 - 곤충
  bugOfFacilityDetails(FieldType.checkbox),

  /// 시설내역 - 신규허가
  newPermissionOfFacilityDetails(FieldType.checkbox),

  /// 시설내역 - 재확인
  reconfirmOfFacilityDetails(FieldType.checkbox),

  /// 시설내역 - 유전자변형생물체
  geneticallyModifiedOrganismsOfFacilityDetails(FieldType.checkbox),

  /// 시설내역 - 고위험병원체
  highRiskPathogensOfFacilityDetails(FieldType.checkbox),

  /// 유전자변형생물체 허가번호
  geneticallyModifiedOrganismsLicenseNumber(FieldType.text),

  /// 고위험병원체 허가번호
  highRiskPathogensLicenceNumber(FieldType.text),

  /// 최초허가일
  dateOfFirstPermit(FieldType.date),

  /// 취급동물
  handlingAnimals(FieldType.text),

  /// 취급병원체
  handlingPathogens(FieldType.text),

  /// 실험실 ∙ 전실 면적
  laboratoryAndAnteroomArea(FieldType.text),

  /// 지역
  area(FieldType.text),

  /// 기관분류
  organClassification(FieldType.select, map: {
    "public": "공공기관",
    "education": "교육기관",
    "private": "민간기관",
    "medical": "의료기관"
  }),

  /// 점검자 소속 기관
  inspectorAffiliation(FieldType.text),

  /// 점검 일자
  inspectionDate(FieldType.text),

  /// 점검자 성명
  inspectorName(FieldType.text),

  /// 점검자 서명
  inspectorSignature(FieldType.sign),

  /// 유전자변형생물체 명칭 1
  geneticallyModifiedOrganismName1(FieldType.text),

  /// 유전자변형생물체 명칭 2
  geneticallyModifiedOrganismName2(FieldType.text),

  /// 유전자변형생물체 명칭 3
  geneticallyModifiedOrganismName3(FieldType.text),

  /// 고 위험 병원체 명칭 1
  nameOfHighRiskPathogen1(FieldType.text),

  /// 고 위험 병원체 명칭 2
  nameOfHighRiskPathogen2(FieldType.text),

  /// 고 위험 병원체 명칭 3
  nameOfHighRiskPathogen3(FieldType.text),

  /// 주요 실험 방법 1
  mainExperimentalMethods1(FieldType.text),

  /// 주요 실험 방법 2
  mainExperimentalMethods2(FieldType.text),

  /// 주요 실험 방법 3
  mainExperimentalMethods3(FieldType.text),

  /// 연구자 및 관리자 생물안전교육 이수 이미지
  cbtframImage(FieldType.image),

  /// 연구자 및 관리자 생물안전교육 이수 이미지 비고
  cbtframImageNote(FieldType.text),

  /// 연구자 및 관리자 생물안전교육 이수 관리 책임자 수
  cbtframManagerCount(FieldType.text),

  /// 연구자 및 관리자 생물안전교육 이수 관리 책임자 radio
  cbtframManagerRadio(FieldType.select, map: yesOrNoMap),

  /// 연구자 및 관리자 생물안전교육 이수 관리 책임자 비고
  cbtframManagerNote(FieldType.text),

  /// 연구자 및 관리자 생물안전교육 이수 관리자 수
  cbtframAdministratorCount(FieldType.text),

  /// 연구자 및 관리자 생물안전교육 이수 관리자 radio
  cbtframAdministratorRadio(FieldType.select, map: yesOrNoMap),

  /// 연구자 및 관리자 생물안전교육 이수 관리자 비고
  cbtframAdministratorNote(FieldType.text),

  /// 연구자 및 관리자 생물안전교육 이수 사용자 수
  cbtframUserCount(FieldType.text),

  /// 연구자 및 관리자 생물안전교육 이수 사용자 radio
  cbtframUserRadio(FieldType.select, map: yesOrNoMap),

  /// 연구자 및 관리자 생물안전교육 이수 사용자 비고
  cbtframUserNote(FieldType.text),

  /// 밀폐구역 출입자 정상 혈청 보관 이미지
  saepnssImage(FieldType.image),

  /// 밀폐구역 출입자 정상 혈청 보관 이미지 비고
  saepnssImageNote(FieldType.text),

  /// 밀폐구역 출입자 정상 혈청 보관 관리 책임자 수
  saepnssManagerCount(FieldType.text),

  /// 밀폐구역 출입자 정상 혈청 보관 관리 책임자 radio
  saepnssManagerRadio(FieldType.select, map: yesOrNoMap),

  /// 밀폐구역 출입자 정상 혈청 보관 관리 책임자 비고
  saepnssManagerNote(FieldType.text),

  /// 밀폐구역 출입자 정상 혈청 보관 관리자 수
  saepnssAdministratorCount(FieldType.text),

  /// 밀폐구역 출입자 정상 혈청 보관 관리자 radio
  saepnssAdministratorRadio(FieldType.select, map: yesOrNoMap),

  /// 밀폐구역 출입자 정상 혈청 보관 관리자 비고
  saepnssAdministratorNote(FieldType.text),

  /// 밀폐구역 출입자 정상 혈청 보관 사용자 수
  saepnssUserCount(FieldType.text),

  /// 밀폐구역 출입자 정상 혈청 보관 사용자 radio
  saepnssUserRadio(FieldType.select, map: yesOrNoMap),

  /// 밀폐구역 출입자 정상 혈청 보관 사용자 비고
  saepnssUserNote(FieldType.text);


  const FclNewDetailFields(this.type, {this.map})
      : assert(type != FieldType.select || map != null);

  final FieldType type;

  final Map<String, String>? map;
}

const yesOrNoMap = {"yes": "예", "no": "아니오", "none": "해당없음"};
