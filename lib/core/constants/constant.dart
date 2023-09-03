import 'package:sisolab_flutter_biosafety/app/global/models/fcl_tab.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/widgets/air_control.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/widgets/bio_info_offer_and_imp.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/widgets/bio_ins_and_ver_confirm.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/widgets/building_charac_conf.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/widgets/check_basic_data.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/widgets/check_biosafety_equipment_operability.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/widgets/check_supply_and_exhaust_interlocking.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/widgets/check_the_one_way_airflow_to_the_inside.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/widgets/check_utility_availability.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/widgets/chk_avail_in_case_of_emer.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/widgets/chk_hp_ft_unit_and_exh_duct_for_leaks.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/widgets/coming_and_going.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/widgets/con_of_fac_oper_in_con_areas.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/widgets/exp_ins_app_con.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/widgets/facility_automatic_control.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/widgets/havc_duct_system.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/widgets/ibc.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/widgets/inspection_overview.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/widgets/new_handling_organism_information.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/widgets/reg_utility.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/widgets/regular_chk_avail_in_case_of_emer.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/widgets/regular_handling_organism_information.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/widgets/significant.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/widgets/ventilation_number_check_in_confined_area.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/widgets/waste.dart';

class Constant {
  static const String fclTitle = '생물안전 3등급 시설 현장점검표';
  static const String newTitle = '(신규허가 ∙ 재확인) 생물안전 3등급 시설 현장점검표';
  static const String riskTitle = '고위험병원체';
  static const String regularTitle = '(정기) 생물안전 3등급 시설 현장점검표';
  static const String listTitle = '목록';
  static const String detailTitle = '상세';

  static const String emptyText = '선택';

  static const int firstDateYear = 1990;
  static const int lastDateYear = 2100;
}

/// 신규허가 ∙ 재확인 텝 목록
final List<FclTab> newTabList = [
  FclTab(title: "점검개요", body: const InspectionOverview()),
  FclTab(title: "취급생물체정보", body: const NewHandlingOrganismInformation()),
  FclTab(title: "기본 자료 확인", body: const CheckBasicData()),
  FclTab(title: "실험구역 설치 적절성 확인", body: const ExpInsAppCon()),
  FclTab(title: "공기조절", body: const AirControl()),
  FclTab(title: "건축 특성 확인", body: const BuildingCharacConf()),
  FclTab(title: "생물안전장비\n설치 및 검증 확인", body: const BioInsAndVerConfirm()),
  FclTab(title: "생물안전 정보 제공 및 이행", body: const BioInfoOfferAndImp()),
  FclTab(title: "비상 시 가동성 확인", body: const ChkAvailInCaseOfEmer()),
  FclTab(title: "유틸리티 가동성 확인", body: const CheckUtilityAvailability()),
  FclTab(
      title: "내부로의 일방향\n공기흐름 확인",
      body: const CheckTheOneWayAirflowToTheInside()),
  FclTab(
      title: "밀폐구역 내 환기 회수 확인",
      body: const VentilationNumberCheckInConfinedArea()),
  FclTab(title: "급, 배기 연동 확인", body: const CheckSupplyAndExhaustInterlocking()),
  FclTab(
      title: "헤파필터\n유닛 및 배기덕트 누기 확인",
      body: const ChkHpFtUnitAndExhDuctForLeaks()),
  FclTab(
      title: "시설 자동제어시스템의\n재부팅시, 운영 설정값 유지",
      body: const FacilityAutomaticControl()),
  FclTab(title: "HVAC 덕트시스템\n제작 손상 등 품질상태", body: const HavcDuctSystem()),
  FclTab(title: "특이사항", body: const Significant()),
];

/// 신규허가 ∙ 재확인 텝 목록
final List<FclTab> regularTabList = [
  FclTab(title: "점검개요", body: const InspectionOverview()),
  FclTab(title: "취급생물체정보", body: const RegularHandlingOrganismInformation()),
  FclTab(title: "밀폐구역 설비 가동성 확인", body: const ConOfFacOperInConAreas()),
  FclTab(
      title: "생물안전장비 가동성 확인", body: const CheckBiosafetyEquipmentOperability()),
  FclTab(title: "비상 시 가동성 확인", body: const RegularChkAvailInCaseOfEmer()),
  FclTab(title: "유틸리티 가동성 확인", body: const RegUtility()),
  FclTab(title: "폐기물(폐수) 처리 기록 확인", body: const Waste()),
  FclTab(title: "IBC 구성 운영 확인", body: const Ibc()),
  FclTab(title: "출입통제 관리기록 등", body: const ComingAndGoing()),
];
