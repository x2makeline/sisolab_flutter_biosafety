import 'package:get/get.dart';
import 'package:sisolab_flutter_biosafety/app/global/models/fcl_big_category.dart';

import '../../../global/models/fcl_detail_controller.dart';

enum FieldType { text, checkbox, date, dropdown, relatedPerson }

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
  organClassification(FieldType.dropdown, map: {
    /// 공공기관
    "public": "public",

    /// 교육기관
    "education": "education",

    /// 민간기관
    "private": "private",

    /// 의료기관
    "medical": "medical"
  });

  const FclNewDetailFields(this.type, {this.map})
      : assert(type != FieldType.dropdown || map != null);

  final FieldType type;

  final Map<String, String>? map;
}

class FclNewDetailController extends FclDetailController {
  static FclNewDetailController get to => Get.find(); // add this line
  FclNewDetailController() : super(bigCategory: FclBigCategory.novel);

  /// 활성화 탭 index
  final tabIndex = 0.obs;
}
