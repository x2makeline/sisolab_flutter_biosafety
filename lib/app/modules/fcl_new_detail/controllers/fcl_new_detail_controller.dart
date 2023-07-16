import 'package:get/get.dart';
import 'package:sisolab_flutter_biosafety/app/global/models/fcl_big_category.dart';
import 'package:sisolab_flutter_biosafety/app/global/models/fcl_related_person.dart';
import 'package:sisolab_flutter_biosafety/app/global/models/fcl_sign_with_organ.dart';

import '../../../global/models/fcl_detail_controller.dart';

class FclNewDetailController extends FclDetailController {
  static FclNewDetailController get to => Get.find(); // add this line
  FclNewDetailController() : super(bigCategory: FclBigCategory.novel);

  final tabIndex = 0.obs;

  /// 운영기관
  final operatingInstitution = RxnString();

  /// 설치 ∙ 운영 장소
  final placeOfInstallationAndOperation = RxnString();

  /// 안전관리등급
  final safetyManagementLevel = RxnString();

  /// 시설내역 - 일반
  final generalOfFacilityDetails = RxBool(false);

  /// 시설내역 - 대량배양
  final massCultureOfFacilityDetails = RxBool(false);

  /// 시설내역 - 동물
  final animalOfFacilityDetails = RxBool(false);

  /// 시설내역 - 식물
  final plantOfFacilityDetails = RxBool(false);

  /// 시설내역 - 곤충
  final bugOfFacilityDetails = RxBool(false);

  /// 시설내역 - 신규허가
  final newPermissionOfFacilityDetails = RxBool(false);

  /// 시설내역 - 재확인
  final reconfirmOfFacilityDetails = RxBool(false);

  /// 시설내역 - 유전자변형생물체
  final geneticallyModifiedOrganismsOfFacilityDetails = RxBool(false);

  /// 시설내역 - 고위험병원체
  final highRiskPathogensOfFacilityDetails = RxBool(false);

  /// 유전자변형생물체 허가번호
  final geneticallyModifiedOrganismsLicenseNumber = RxnString();

  /// 고위험병원체 허가번호
  final highRiskPathogensLicenceNumber = RxnString();

  /// 최초허가일
  final dateOfFirstPermit = Rxn<DateTime>();

  /// 취급동물
  final handlingAnimals = RxnString();

  /// 취급병원체
  final handlingPathogens = RxnString();

  /// 실험실 ∙ 전실 면적
  final laboratoryAndAnteroomArea = RxnString();

  /// 지역
  final area = RxnString();

  /// 기관분류
  final organClassification = RxnString();

  /// 생물 안전 관리 책임자
  final biosafetyOfficer = Rx<FclRelatedPerson>(FclRelatedPerson())
    ..listen((p0) {
      print(p0);
    });

  /// 생물 안전 관리자
  final biosafetyManager = Rx<FclRelatedPerson>(FclRelatedPerson());

  /// 고 위험 병원체의 전담 관리자
  final dedicatedManagerForHighRiskPathogens =
      Rx<FclRelatedPerson>(FclRelatedPerson());

  /// 점검일자
  final inspectionDate = Rxn<DateTime>();

  /// 점검자
  final checkers = RxList<FclSignWithOrgan>([FclSignWithOrgan()])
    ..listen((p0) {
      print(p0);
    });

  addChecker() {
    checkers.add(FclSignWithOrgan());
  }

  replaceChecker(int index) {
    checkers.insert(index, FclSignWithOrgan());
  }

  @override
  void onInit() {
    super.onInit();
  }
}
