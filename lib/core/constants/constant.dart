import 'package:sisolab_flutter_biosafety/app/global/models/fcl_tab.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/widgets/tab_1.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/widgets/tab_10.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/widgets/tab_11.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/widgets/tab_12.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/widgets/tab_13.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/widgets/tab_15.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/widgets/tab_16.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/widgets/tab_17.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/widgets/tab_18.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/widgets/tab_19.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/widgets/tab_2.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/widgets/tab_20.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/widgets/tab_21.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/widgets/tab_22.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/widgets/tab_23.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/widgets/tab_24.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/widgets/tab_25.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/widgets/tab_26.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/widgets/tab_27.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/widgets/tab_3.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/widgets/tab_4.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/widgets/tab_5.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/widgets/tab_6.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/widgets/tab_7.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/widgets/tab_8.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/widgets/tab_9.dart';

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

const yesOrNoMap = {"예": "예", "아니오": "아니오", "해당없음": "해당없음"};
const yesOrNoMap2 = {"예": "예", "아니오": "아니오", "해당없음": "해당없음", "4": "4"};

/// 신규허가 ∙ 재확인 텝 목록
final List<FclTab> newTabList = [
  FclTab(title: "점검개요", body: const Tab1()),
  FclTab(title: "취급생물체정보", body: const Tab2()),
  FclTab(title: "기본 자료 확인", body: const Tab3()),
  FclTab(title: "실험구역 설치 적절성 확인", body: const Tab4()),
  FclTab(title: "공기조절", body: const Tab5()),
  FclTab(title: "건축 특성 확인", body: const Tab23()),
  FclTab(title: "생물안전장비\n설치 및 검증 확인", body: const Tab24()),
  FclTab(title: "생물안전 정보 제공 및 이행", body: const Tab25()),
  FclTab(title: "비상 시 가동성 확인", body: const Tab18()),
  FclTab(title: "유틸리티 가동성 확인", body: const Tab19()),
  FclTab(title: "내부로의 일방향\n공기흐름 확인", body: const Tab20()),
  FclTab(title: "밀폐구역 내 환기 회수 확인", body: const Tab10()),
  FclTab(title: "급, 배기 연동 확인", body: const Tab21()),
  FclTab(title: "헤파필터\n유닛 및 배기덕트 누기 확인", body: const Tab17()),
  FclTab(title: "시설 자동제어시스템의\n재부팅시, 운영 설정값 유지", body: const Tab13()),
  FclTab(title: "HVAC 덕트시스템\n제작 손상 등 품질상태", body: const Tab12()),
  FclTab(title: "특이사항", body: const Tab6()),
];

/// 신규허가 ∙ 재확인 텝 목록
final List<FclTab> regularTabList = [
  FclTab(title: "점검개요", body: const Tab1()),
  FclTab(title: "취급생물체정보", body: const Tab7()),
  FclTab(title: "밀폐구역 설비 가동성 확인", body: const Tab15()),
  FclTab(title: "생물안전장비 가동성 확인", body: const Tab22()),
  FclTab(title: "비상 시 가동성 확인", body: const Tab8()),
  FclTab(title: "유틸리티 가동성 확인", body: const Tab9()),
  FclTab(title: "폐기물(폐수) 처리 기록 확인", body: const Tab26()),
  FclTab(title: "IBC 구성 운영 확인", body: const Tab11()),
  FclTab(title: "출입통제 관리기록 등", body: const Tab16()),
];

/// 고위험 텝 목록
final List<FclTab> riskTabList = [
  FclTab(title: "점검개요", body: const Tab27()),
  FclTab(title: "고위험병원체 보유 및 보유량 확인", body: const Tab7()),
  FclTab(title: "미신고 고위험병원체 보유 및 보유량 확인", body: const Tab15()),
  FclTab(title: "관리장부 및 기록 관리", body: const Tab22()),
  FclTab(title: "물리적 보안(보존구역)", body: const Tab8()),
  FclTab(title: "물리적 보안(취급구역)", body: const Tab9()),
  FclTab(title: "시설 및 장비 관리", body: const Tab26()),
  FclTab(title: "인적 보안", body: const Tab11()),
  FclTab(title: "운송 보안", body: const Tab16()),
  FclTab(title: "실험실 안전관리에 관한 사항", body: const Tab16()),
  FclTab(title: "종합평가", body: const Tab16()),
];
