import 'package:dartlin/control_flow.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:get/get.dart';
import 'package:sisolab_flutter_biosafety/app/data/repositories/storage_repository.dart';
import 'package:sisolab_flutter_biosafety/app/global/errors/api_error.dart';
import 'package:sisolab_flutter_biosafety/app/global/styles/color_styles.dart';
import 'package:sisolab_flutter_biosafety/app/global/vms/network_vm.dart';
import 'package:sisolab_flutter_biosafety/app/global/vms/token_vm.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/field_with_label.dart';
import 'package:sisolab_flutter_biosafety/app/global/widgets/layout/home_page_layout.dart';
import 'package:sisolab_flutter_biosafety/core/utils/mc_logger.dart';
import 'package:sisolab_flutter_biosafety/routes/app_routes.dart';

class HomePage extends StatelessWidget {
   HomePage({super.key});

  final NetworkVm  _netVm =  NetworkVm.to;

  @override
  Widget build(BuildContext context) => HomePageLayout(
      // child: _UnConnected()
      child: Obx(() => _netVm.isConnect ? const _Connected() : _UnConnected()));
}

class _UnConnected extends StatelessWidget with PLoggerMixin {
  _UnConnected({super.key});

  final _formKey = GlobalKey<FormBuilderState>();
  final _storageRepository = StorageRepository();
  static const _userIdName = '_userIdName';

  _submit() {
    _formKey.currentState?.let((curr) => iff(curr.saveAndValidate(), () {
          log.i('userId ${curr.value[_userIdName]}');
          _storageRepository.setUserId(curr.value[_userIdName]).then((value) {
            iff(value, () {
              Get.offAllNamed(AppRoutes.selectType.name);
            });
          });
        }));
  }

  @override
  Widget build(BuildContext context) => FormBuilder(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FieldWithLabel(
                label: "작업 ID",
                child: FormBuilderTextField(
                  validator: FormBuilderValidators.required(),
                  onSubmitted: (_) => _submit(),
                  decoration: const InputDecoration(hintText: "작업 ID"),
                  name: _userIdName,
                )),
            SizedBox(
              height: 28.h,
            ),
            DefaultTextStyle(
                style: TextStyle(
                    color: ColorGroup.black,
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w500),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("\u2022 입력한 ID로 작업을 시작합니다.\n"),
                    Row(
                      children: [
                        Text("\u2022 "),
                        Text(
                          "작업자가 변경되는 경우, 앱을 새로 시작하여 ID를 입력하세요.",
                          style: TextStyle(color: Color(0xffff381e)),
                        )
                      ],
                    )
                  ],
                )),
            SizedBox(
              height: 60.h,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: _submit,
                  child: const Text(
                    "시작하기",
                  )),
            )
          ],
        ),
      );
}

class _Connected extends StatefulWidget {
  const _Connected({Key? key}) : super(key: key);

  @override
  State<_Connected> createState() => _ConnectedState();
}

class _ConnectedState extends State<_Connected> with PLoggerMixin {
  final _formKey = GlobalKey<FormBuilderState>();

  final tokenVm = TokenVm.to;

  static const _userIdName = '_userIdName';
  static const _passwdName = '_passwdName';

  static const _devUserId = "test0223";
  static const _devPasswd = "1234";

  _submit() {
    _formKey.currentState?.let((curr) => iff(curr.saveAndValidate(), () async {
          log.i('userId ${curr.value[_userIdName]}');
          log.i('passwd ${curr.value[_passwdName]}');
          try {
            await tokenVm.login(
                userId: curr.value[_userIdName],
                passwd: curr.value[_passwdName]);
            Get.offAllNamed(AppRoutes.selectType.name);
          } on ApiError catch (e) {
            e.snackBar();
          }
        }));
  }

  @override
  Widget build(BuildContext context) {
    return FormBuilder(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FieldWithLabel(
              label: "작업 ID",
              child: FormBuilderTextField(
                initialValue: iff(kDebugMode, () => _devUserId),
                onSubmitted: (_) => _submit(),
                decoration: const InputDecoration(hintText: "작업 ID"),
                name: _userIdName,
              )),
          SizedBox(
            height: 42.h,
          ),
          FieldWithLabel(
              label: "Password",
              child: FormBuilderTextField(
                initialValue: iff(kDebugMode, () => _devPasswd),
                obscureText: true,
                onSubmitted: (_) => _submit(),
                decoration: const InputDecoration(hintText: "Password"),
                name: _passwdName,
              )),
          SizedBox(
            height: 40.h,
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: _submit,
                child: const Text(
                  "로그인",
                )),
          ),
          SizedBox(
            height: 40.h,
          ),
          SizedBox(
            width: double.infinity,
            child: OutlinedButton(
                onPressed: () {},
                child: const Text(
                  "취소",
                )),
          )
        ],
      ),
    );
  }
}
