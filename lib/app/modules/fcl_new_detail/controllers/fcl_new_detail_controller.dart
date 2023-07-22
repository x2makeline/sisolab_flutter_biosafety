import 'package:get/get.dart';
import 'package:sisolab_flutter_biosafety/app/global/models/fcl_big_category.dart';

import '../../../global/models/fcl_detail_controller.dart';

enum FieldType { text, checkbox, date, dropdown, relatedPerson, sign }

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
  }),

  /// 점검자 소속 기관
  inspectorAffiliation(FieldType.text),

  /// 점검 일자
  inspectionDate(FieldType.text),

  /// 점검자 성명
  inspectorName(FieldType.text),

  /// 점검자 서명
  inspectorSignature(FieldType.sign);

  const FclNewDetailFields(this.type, {this.map})
      : assert(type != FieldType.dropdown || map != null);

  final FieldType type;

  final Map<String, String>? map;
}

class FclNewDetailController extends FclDetailController
    with CheckerMixin, TabMixin {
  static FclNewDetailController get to => Get.find(); // add this line
  FclNewDetailController() : super(bigCategory: FclBigCategory.novel);
}

mixin TabMixin {
  /// 활성화 탭 index
  final _tabIndex = 0.obs;

  int get tabIndex => _tabIndex.value;

  set tabIndex(int index) => _tabIndex.value = index;
}

mixin CheckerMixin {
  /// 점검자 count
  final _checkerCount = 1.obs;

  int get checkerCount => _checkerCount.value;

  set checkerCount(int count) => _checkerCount.value = count;

  addChecker() {
    _checkerCount.value++;
  }
}
