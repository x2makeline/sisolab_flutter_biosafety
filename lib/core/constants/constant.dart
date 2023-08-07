import 'package:flutter/material.dart';
import 'package:sisolab_flutter_biosafety/app/global/models/fcl_tab.dart';
import 'package:sisolab_flutter_biosafety/app/modules/fcl_new_detail/widgets/check_basic_data.dart';
import 'package:sisolab_flutter_biosafety/app/modules/fcl_new_detail/widgets/handling_organism_information.dart';
import 'package:sisolab_flutter_biosafety/app/modules/fcl_new_detail/widgets/inspection_overview.dart';

class Constant {
  static const String fclTitle = '생물안전 3등급 시설 현장점검표';
  static const String newTitle = '(신규허가 ∙ 재확인)';
  static const String regularTitle = '(정기)';
  static const String listTitle = '목록';
  static const String detailTitle = '상세';

  static const String emptyText = '선택';

  static const int firstDateYear = 1990;
  static const int lastDateYear = 2100;
}

/// 신규허가 ∙ 재확인 텝 목록
final List<FclTab> newTabList = [
  FclTab(title: "점검개요", body: const InspectionOverview()),
  FclTab(title: "취급생물체정보", body: const HandlingOrganismInformation()),
  FclTab(title: "기본 자료 확인", body: CheckBasicData()),
  FclTab(title: "실험구역 설치 적절성 확인", body: Text("실험구역 설치 적절성 확인")),
  FclTab(title: "공기조절", body: Text("공기조절")),
  FclTab(title: "건축 특성 확인", body: Text("건축 특성 확인")),
  FclTab(title: "생물안전장비\n설치 및 검증 확인", body: Text("생물안전장비\n설치 및 검증 확인")),
  FclTab(title: "생물안전 정보 제공 및 이행", body: Text("생물안전 정보 제공 및 이행")),
  FclTab(title: "비상 시 가동성 확인", body: Text("비상 시 가동성 확인")),
  FclTab(title: "유틸리티 가동성 확인", body: Text("유틸리티 가동성 확인")),
  FclTab(title: "내부로의 일방향\n공기흐름 확인", body: Text("내부로의 일방향\n공기흐름 확인")),
  FclTab(title: "밀폐구역 내 환기 회수 확인", body: Text("밀폐구역 내 환기 회수 확인")),
  FclTab(title: "급, 배기 연동 확인", body: Text("급, 배기 연동 확인")),
  FclTab(title: "헤파필터\n유닛 및 배기덕트 누기 확인", body: Text("헤파필터\n유닛 및 배기덕트 누기 확인")),
  FclTab(
      title: "시설 자동제어시스템의\n재부팅시, 운영 설정값 유지",
      body: Text("시설 자동제어시스템의\n재부팅시, 운영 설정값 유지")),
  FclTab(
      title: "HVAC 덕트시스템\n제작 손상 등 품질상태",
      body: Text("HVAC 덕트시스템\n제작 손상 등 품질상태")),
  FclTab(title: "특이사항", body: Text("특이사항")),
];


