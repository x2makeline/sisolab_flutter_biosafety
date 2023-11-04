import 'package:sisolab_flutter_biosafety/app/data/models/company_autocomplete.dart';
import 'package:sisolab_flutter_biosafety/app/global/models/fcl_tab.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/widgets/tab_1.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/widgets/tab_10.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/widgets/tab_11.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/widgets/tab_12.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/widgets/tab_13.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/widgets/tab_14.dart';
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
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/widgets/tab_28.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/widgets/tab_29.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/widgets/tab_3.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/widgets/tab_30.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/widgets/tab_31.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/widgets/tab_32.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/widgets/tab_33.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/widgets/tab_34.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/widgets/tab_35.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/widgets/tab_36.dart';
import 'package:sisolab_flutter_biosafety/app/ui/fcl_detail/widgets/tab_37.dart';
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
const yesOrNoNumMap = {"1": "네", "2": "아니오", "3": "해당없음"};
const yesOrNoNumMap2 = {"1": "네", "2": "아니오"};
const yesOrNoMap2 = {"예": "예", "아니오": "아니오", "해당없음": "해당없음"};
const passOrNaMap = {
  "Pass": "Pass",
  "Fail": "Fail",
  "N/A": "N/A",
};

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

/// 정기 텝 목록
final List<FclTab> regularTabList = [
  FclTab(title: "점검개요", body: const Tab1()),
  FclTab(title: "취급생물체정보", body: const Tab7()),
  FclTab(title: "밀폐구역 설비 가동성 확인", body: const Tab15()),
  FclTab(title: "생물안전장비 가동성 확인", body: const Tab22()),
  FclTab(title: "비상 시 가동성 확인", body: const Tab8()),
  FclTab(title: "시설 내 생물안전 정보 제공 확인", body: const Tab14()),
  FclTab(title: "유틸리티 가동성 확인", body: const Tab9()),
  FclTab(title: "폐기물(폐수) 처리 기록 확인", body: const Tab26()),
  FclTab(title: "IBC 구성 운영 확인", body: const Tab11()),
  FclTab(title: "출입통제 관리기록 등", body: const Tab16()),
];

/// 고위험 텝 목록
final List<FclTab> riskTabList = [
  FclTab(title: "점검개요", body: const Tab27()),
  FclTab(title: "고위험병원체 보유 및 보유량 확인", body: const Tab28()),
  FclTab(title: "미신고 고위험병원체 보유 및 보유량 확인", body: const Tab29()),
  FclTab(title: "관리장부 및 기록 관리", body: const Tab30()),
  FclTab(title: "물리적 보안(보존구역)", body: const Tab31()),
  FclTab(title: "물리적 보안(취급구역)", body: const Tab32()),
  FclTab(title: "시설 및 장비 관리", body: const Tab33()),
  FclTab(title: "인적 보안", body: const Tab34()),
  FclTab(title: "운송 보안", body: const Tab35()),
  FclTab(title: "실험실 안전관리에 관한 사항", body: const Tab36()),
  FclTab(title: "종합평가", body: const Tab37()),
];
// (.+)\t(.+)\t(.+)\t(.+)
final List<CompanyAutocomplete> companyAutocompleteList = [
  CompanyAutocomplete(
      company: "충남대학교",
      d184: "수의과대학",
      d280: "BL3",
      d157: "제KCDC-08-3-03호",
      d281: "제KCDC-HP-08-3-03호"),
  CompanyAutocomplete(
      company: "건국대학교",
      d184: "생물안전위원회(의과대학) 5층",
      d280: "BL3",
      d157: "제KCDC-09-3-01호",
      d281: "제KCDC-HP-09-3-01호"),
  CompanyAutocomplete(
      company: "(재)한국파스퇴르연구소",
      d184: "생물안전팀",
      d280: "BL3",
      d157: "제KCDC-09-3-03호",
      d281: "제KCDC-HP-09-3-03호"),
  CompanyAutocomplete(
      company: "제주특별자치도동물위생시험소",
      d184: "방역진단과",
      d280: "BL3",
      d157: "제KCDC-09-3-04호",
      d281: null),
  CompanyAutocomplete(
      company: "국제백신연구소",
      d184: null,
      d280: "BL3",
      d157: "제KCDC-09-3-05호",
      d281: "제KCDC-HP-09-3-05호"),
  CompanyAutocomplete(
      company: "서울대학교병원",
      d184: "실험안전실(전임상실험부)",
      d280: "BL3",
      d157: "제KCDC-09-3-06호",
      d281: "제KCDC-HP-09-3-06호"),
  CompanyAutocomplete(
      company: "서울대학교",
      d184: "환경안전원(의과대학)",
      d280: "BL3",
      d157: "제KCDC-09-3-08호",
      d281: "제KCDC-HP-09-3-08호"),
  CompanyAutocomplete(
      company: "울산광역시보건환경연구원 동물위생시험소",
      d184: null,
      d280: "BL3",
      d157: null,
      d281: "제KCDC-HP-10-3-02호"),
  CompanyAutocomplete(
      company: "전라북도보건환경연구원",
      d184: null,
      d280: "BL3",
      d157: null,
      d281: "제KCDC-HP-10-3-03호"),
  CompanyAutocomplete(
      company: "경상북도동물위생시험소",
      d184: null,
      d280: "BL3",
      d157: "제KCDC-10-3-04호",
      d281: null),
  CompanyAutocomplete(
      company: "건국대학교",
      d184: "생물안전위원회 8층 (실험동물연구센터)",
      d280: "BL3",
      d157: "제KCDC-10-3-06호",
      d281: "제KCDC-HP-10-3-06호"),
  CompanyAutocomplete(
      company: "경상남도동물위생시험소(본소)",
      d184: null,
      d280: "BL3",
      d157: null,
      d281: "제KCDC-HP-10-3-07호"),
  CompanyAutocomplete(
      company: "국군화생방방호사령부 화생방방어연구소",
      d184: "생물분석과",
      d280: "BL3",
      d157: "제KCDC-10-3-08호",
      d281: "제KCDC-HP-10-3-08호"),
  CompanyAutocomplete(
      company: "충청남도동물위생시험소",
      d184: null,
      d280: "BL3",
      d157: "제KCDC-11-3-02호",
      d281: null),
  CompanyAutocomplete(
      company: "전라남도동물위생시험소",
      d184: null,
      d280: "BL3",
      d157: null,
      d281: "제KCDC-HP-11-3-04호"),
  CompanyAutocomplete(
      company: "식품의약품안전처",
      d184: "백신검정과",
      d280: "BL3",
      d157: "제KCDC-11-3-05호",
      d281: null),
  CompanyAutocomplete(
      company: "질병관리청",
      d184: "생물안전평가과 4동",
      d280: "BL3",
      d157: "제KCDC-11-3-06호",
      d281: "제KCDC-HP-11-3-06호"),
  CompanyAutocomplete(
      company: "서울특별시보건환경연구원",
      d184: null,
      d280: "BL3",
      d157: null,
      d281: "제KCDC-HP-11-3-07호"),
  CompanyAutocomplete(
      company: "강원도동물위생시험소",
      d184: null,
      d280: "BL3",
      d157: "제KCDC-11-3-09호",
      d281: null),
  CompanyAutocomplete(
      company: "질병관리청 호남권질병대응센터",
      d184: null,
      d280: "BL3",
      d157: null,
      d281: "제KCDC-HP-11-3-11호"),
  CompanyAutocomplete(
      company: "전라북도동물위생시험소(본소)",
      d184: null,
      d280: "BL3",
      d157: "제KCDC-11-3-12호",
      d281: null),
  CompanyAutocomplete(
      company: "충청북도보건환경연구원",
      d184: null,
      d280: "BL3",
      d157: null,
      d281: "제KCDC-HP-12-3-01호"),
  CompanyAutocomplete(
      company: "강원도보건환경연구원",
      d184: null,
      d280: "BL3",
      d157: null,
      d281: "제KCDC-HP-12-3-02호"),
  CompanyAutocomplete(
      company: "대구광역시보건환경연구원",
      d184: null,
      d280: "BL3",
      d157: null,
      d281: "제KCDC-HP-12-3-03호"),
  CompanyAutocomplete(
      company: "충청북도동물위생시험소",
      d184: null,
      d280: "BL3",
      d157: "제KCDC-12-3-04호",
      d281: null),
  CompanyAutocomplete(
      company: "경상북도보건환경연구원",
      d184: null,
      d280: "BL3",
      d157: "제KCDC-HP-12-3-05호",
      d281: null),
  CompanyAutocomplete(
      company: "식품의약품안전처",
      d184: "미생물과",
      d280: "BL3",
      d157: "제KCDC-HP-12-3-06호",
      d281: null),
  CompanyAutocomplete(
      company: "전라북도동물위생시험소(북부)",
      d184: null,
      d280: "BL3",
      d157: "제KCDC-12-3-07호",
      d281: null),
  CompanyAutocomplete(
      company: "부산광역시보건환경연구원",
      d184: null,
      d280: "BL3",
      d157: "제KCDC-HP-12-3-08호",
      d281: null),
  CompanyAutocomplete(
      company: "제주특별자치도보건환경연구원",
      d184: null,
      d280: "BL3",
      d157: "제KCDC-HP-12-3-09호",
      d281: null),
  CompanyAutocomplete(
      company: "대전광역시보건환경연구원",
      d184: null,
      d280: "BL3",
      d157: "제KCDC-HP-12-3-10호",
      d281: null),
  CompanyAutocomplete(
      company: "인천광역시보건환경연구원",
      d184: null,
      d280: "BL3",
      d157: "제KCDC-12-3-12호",
      d281: "제KCDC-HP-12-3-12호"),
  CompanyAutocomplete(
      company: "경기도동물위생시험소",
      d184: null,
      d280: "BL3",
      d157: "제KCDC-13-3-02호",
      d281: null),
  CompanyAutocomplete(
      company: "전라남도보건환경연구원",
      d184: null,
      d280: "BL3",
      d157: null,
      d281: "제KCDC-HP-13-3-03호"),
  CompanyAutocomplete(
      company: "한국화학연구원",
      d184: "CEVI융합연구단",
      d280: "BL3",
      d157: "제KCDC-14-3-01호",
      d281: "제KCDC-HP-14-3-01호"),
  CompanyAutocomplete(
      company: "연세대학교의료원",
      d184: "에비슨연구센터",
      d280: "BL3",
      d157: "제KCDC-14-3-02호",
      d281: "제KCDC-HP-14-3-02호"),
  CompanyAutocomplete(
      company: "연세대학교의료원",
      d184: "에비슨연구센터",
      d280: "ABL3",
      d157: "제KCDC-14-3-03호",
      d281: "제KCDC-HP14-3-03호"),
  CompanyAutocomplete(
      company: "대한결핵협회 결핵연구원",
      d184: null,
      d280: "BL3",
      d157: "제KCDC-14-3-04호",
      d281: null),
  CompanyAutocomplete(
      company: "충청남도동물위생시험소",
      d184: null,
      d280: "BL3",
      d157: "제KCDC-14-3-06호",
      d281: null),
  CompanyAutocomplete(
      company: "충북대학교",
      d184: "의과대학",
      d280: "BL3",
      d157: "제KCDC-14-3-07호",
      d281: "제KCDC-HP-14-3-07호"),
  CompanyAutocomplete(
      company: "한국생명공학연구원",
      d184: "오창 시설전산안전팀",
      d280: "ABL3",
      d157: null,
      d281: "제KCDC-HP-15-3-01호"),
  CompanyAutocomplete(
      company: "전북대학교",
      d184: "인수공통전염병연구소",
      d280: "ABL3",
      d157: "제KCDC-15-3-02호",
      d281: "제KCDC-HP-15-3-02호"),
  CompanyAutocomplete(
      company: "한림대학교",
      d184: "한림중개의과학연구원",
      d280: "BL3",
      d157: "제KCDC-15-3-03호",
      d281: "제KCDC-HP-15-3-03호"),
  CompanyAutocomplete(
      company: "한림대학교",
      d184: "한림중개의과학연구원",
      d280: "ABL3",
      d157: "제KCDC-15-3-04호",
      d281: "제KCDC-HP15-3-04호"),
  CompanyAutocomplete(
      company: "국립야생동물질병관리원",
      d184: "수도권센터",
      d280: "ABL3",
      d157: null,
      d281: "제KCDC-HP-15-3-05호"),
  CompanyAutocomplete(
      company: "질병관리청",
      d184: "생물안전평가과 14동",
      d280: "BL3",
      d157: "제KCDC-16-3-01호",
      d281: "제KCDC-HP-16-3-01호"),
  CompanyAutocomplete(
      company: "농림축산검역본부",
      d184: "구제역백신연구센터",
      d280: "BL3",
      d157: "제KCDC-16-3-02호",
      d281: null),
  CompanyAutocomplete(
      company: "농림축산검역본부",
      d184: "해외전염병과-차폐연구동",
      d280: "BL3",
      d157: "제KCDC-16-3-03호",
      d281: "제KCDC-HP-16-3-03호"),
  CompanyAutocomplete(
      company: "농림축산검역본부",
      d184: "해외전염병과-차폐연구동",
      d280: "ABL3",
      d157: "제KCDC-16-3-04호",
      d281: "제KCDC-HP-16-3-04호"),
  CompanyAutocomplete(
      company: "경상남도동물위생시험소(북부)",
      d184: "북부지소",
      d280: "BL3",
      d157: "제KCDC-16-3-05호",
      d281: null),
  CompanyAutocomplete(
      company: "전북대학교",
      d184: "인수공통전염병연구소(중소동물)",
      d280: "ABL3",
      d157: "제KCDC-16-3-06호",
      d281: "제KCDC-HP-16-3-06호"),
  CompanyAutocomplete(
      company: "국방과학연구소",
      d184: "5본부3부",
      d280: "BL3",
      d157: "제KCDC-16-3-07호",
      d281: "제KCDC-HP-16-3-07호"),
  CompanyAutocomplete(
      company: "국방과학연구소",
      d184: "5본부3부",
      d280: "ABL3",
      d157: "제KCDC-16-3-08호",
      d281: "제KCDC-HP-16-3-08호"),
  CompanyAutocomplete(
      company: "서울특별시보건환경연구원",
      d184: "동물위생시험소",
      d280: "BL3",
      d157: null,
      d281: "제KCDC-HP-16-3-09호"),
  CompanyAutocomplete(
      company: "질병관리청 수도권질병대응센터",
      d184: "국립인천공항검역소",
      d280: "BL3",
      d157: null,
      d281: "제KCDC-HP-17-3-01호"),
  CompanyAutocomplete(
      company: "전북대학교",
      d184: "인수공통전염병연구소(대동물)",
      d280: "ABL3",
      d157: "제KCDC-17-3-02호",
      d281: "제KCDC-HP-17-3-02호"),
  CompanyAutocomplete(
      company: "국립마산병원",
      d184: "임상연구소",
      d280: "BL3",
      d157: "제KCDC-17-3-03호",
      d281: null),
  CompanyAutocomplete(
      company: "경상남도보건환경연구원",
      d184: null,
      d280: "BL3",
      d157: null,
      d281: "제KCDC-HP-17-3-04호"),
  CompanyAutocomplete(
      company: "농림축산검역본부",
      d184: "구제역백신연구센터",
      d280: "ABL3",
      d157: "제KCDC-17-3-05호",
      d281: null),
  CompanyAutocomplete(
      company: "농림축산검역본부",
      d184: "구제역백신연구센터",
      d280: "LSBL3",
      d157: "제KCDC-18-3-01호",
      d281: null),
  CompanyAutocomplete(
      company: "고려대학교의료원",
      d184: "생물안전센터(의과대학)",
      d280: "ABL3",
      d157: "제KCDC-18-3-02호",
      d281: "제KCDC-HP18-3-02호"),
  CompanyAutocomplete(
      company: "(주)바이오노트",
      d184: "생산본부",
      d280: "LSBL3",
      d157: null,
      d281: "제KCDC-HP-18-3-03호"),
  CompanyAutocomplete(
      company: "질병관리청",
      d184: "매개체분석과 13동",
      d280: "ABL3",
      d157: "제KCDC-18-3-04호",
      d281: null),
  CompanyAutocomplete(
      company: "충청남도보건환경연구원",
      d184: "보건연구부",
      d280: "BL3",
      d157: "제KCDC-18-3-05호",
      d281: "제KCDC-HP-18-3-05호"),
  CompanyAutocomplete(
      company: "서울특별시 서북병원",
      d184: "진료부",
      d280: "BL3",
      d157: "제KCDC-18-3-06호",
      d281: null),
  CompanyAutocomplete(
      company: "한국생명공학연구원",
      d184: "전북분원_",
      d280: "ABL3",
      d157: "제KCDC-19-3-01호",
      d281: "제KCDC-HP-19-3-01호"),
  CompanyAutocomplete(
      company: "울산광역시보건환경연구원",
      d184: "질병조사과",
      d280: "BL3",
      d157: null,
      d281: "제KCDC-HP-19-3-02호"),
  CompanyAutocomplete(
      company: "국립과학수사연구원",
      d184: "중앙법의학센터",
      d280: "BL3",
      d157: null,
      d281: "제KCDC-HP-19-3-03호"),
  CompanyAutocomplete(
      company: "충남대학교병원",
      d184: "의생명연구원",
      d280: "ABL3",
      d157: "제KCDC-19-3-04호",
      d281: null),
  CompanyAutocomplete(
      company: "경기도동물위생시험소",
      d184: null,
      d280: "BL3",
      d157: "제KCDC-20-3-01호",
      d281: null),
  CompanyAutocomplete(
      company: "세종특별자치도보건환경연구원",
      d184: "방역위생과",
      d280: "BL3",
      d157: null,
      d281: "제KCDC-HP-20-3-02호"),
  CompanyAutocomplete(
      company: "분당서울대학교병원",
      d184: "전임상실험센터",
      d280: "ABL3",
      d157: "제KCDC-20-3-03호",
      d281: "제KCDC-HP-20-3-03호"),
  CompanyAutocomplete(
      company: "순천향대학교",
      d184: "PMC센터",
      d280: "ABL3",
      d157: "제KDCA-20-3-04호",
      d281: null),
  CompanyAutocomplete(
      company: "경기도보건환경연구원",
      d184: "감염병연구부",
      d280: "BL3",
      d157: null,
      d281: "제KDCA-HP-20-3-05호"),
  CompanyAutocomplete(
      company: "국립야생동물질병관리원",
      d184: "질병연구팀 광주",
      d280: "BL3",
      d157: null,
      d281: "제KDCA-HP-20-3-06호"),
  CompanyAutocomplete(
      company: "광주광역시보건환경연구원",
      d184: "감염병조사과",
      d280: "BL3",
      d157: null,
      d281: "제KDCA-HP-21-3-01호"),
  CompanyAutocomplete(
      company: "질병관리청",
      d184: "국립보건연구원 공공백신개발지원센터",
      d280: "ABL3",
      d157: "제KDCA-21-3-02호",
      d281: "제KDCA-HP-21-3-02호"),
  CompanyAutocomplete(
      company: "서울대학교 수의과대학",
      d184: "수의과대학",
      d280: "ABL3",
      d157: "제KDCA-21-3-03호",
      d281: "제KDCA-HP-21-3-03호"),
  CompanyAutocomplete(
      company: "㈜녹십자",
      d184: null,
      d280: "BL3",
      d157: "제KDCA-21-3-04호",
      d281: "제KDCA-HP-21-3-04호"),
  CompanyAutocomplete(
      company: "국립중앙의료원",
      d184: "중개의료센터",
      d280: "BL3",
      d157: "제KDCA-21-3-05호",
      d281: "제KDCA-HP-21-3-05호"),
  CompanyAutocomplete(
      company: "주식회사 우정바이오",
      d184: null,
      d280: "ABL3",
      d157: "제KDCA-22-3-01호",
      d281: "제KDCA-HP-22-3-01호"),
  CompanyAutocomplete(
      company: "한국화학연구원부설 안전성평가연구소",
      d184: "전북분소",
      d280: "ABL3",
      d157: "제KDCA-22-3-02호",
      d281: "제KDCA-HP-22-3-02호"),
  CompanyAutocomplete(
      company: "질병관리청",
      d184: "생물안전평가과",
      d280: "ABL3",
      d157: "제KDCA-23-3-01호",
      d281: "제KDCA-HP-23-3-01호"),
  CompanyAutocomplete(
      company: "충남대학교병원",
      d184: "의생명연구원",
      d280: "ABL3",
      d157: "제KDCA-23-3-02호",
      d281: "제KDCA-HP-23-3-02호"),
  CompanyAutocomplete(
      company: "농림축산검역본부",
      d184: "구제역진단과",
      d280: "ABL3",
      d157: "제KDCA-23-3-03호",
      d281: "제KDCA-HP-23-3-03호"),
  CompanyAutocomplete(
      company: "농림축산검역본부",
      d184: "구제역진단과",
      d280: "BL3",
      d157: "제KDCA-23-3-04호",
      d281: "제KDCA-HP-23-3-04호"),
];
