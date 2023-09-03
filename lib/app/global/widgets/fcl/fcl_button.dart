import 'package:flutter/material.dart';
import 'package:sisolab_flutter_biosafety/app/global/styles/color_styles.dart';



class FclButton extends ButtonStyleButton {



  static TextStyle defaultTextStyle = const TextStyle(fontSize: 28);

  const FclButton({
    super.key,
    required super.onPressed,
    super.onLongPress,
    super.onHover,
    super.onFocusChange,
    super.style,
    super.focusNode,
    super.autofocus = false,
    super.clipBehavior = Clip.none,
    super.statesController,
    required super.child,
  });

  const FclButton.primary({
    super.key,
    required super.onPressed,
    super.onLongPress,
    super.onHover,
    super.onFocusChange,
    super.focusNode,
    super.autofocus = false,
    super.clipBehavior = Clip.none,
    required super.child,
  }) : super(
          style: const ButtonStyle(
              foregroundColor: MaterialStatePropertyAll<Color>(Colors.white),
              backgroundColor:
                  MaterialStatePropertyAll<Color>(ColorGroup.green),
              elevation: MaterialStatePropertyAll<double>(0),
              side: MaterialStatePropertyAll<BorderSide>(
                  BorderSide(color: ColorGroup.gray))),
        );

  const FclButton.white({
    super.key,
    required super.onPressed,
    super.onLongPress,
    super.onHover,
    super.onFocusChange,
    super.focusNode,
    super.autofocus = false,
    super.clipBehavior = Clip.none,
    required super.child,
  }) : super(
          style: const ButtonStyle(
              foregroundColor: MaterialStatePropertyAll<Color>(Colors.black),
              elevation: MaterialStatePropertyAll<double>(0),
              backgroundColor: MaterialStatePropertyAll<Color>(Colors.white),
              side: MaterialStatePropertyAll<BorderSide>(
                  BorderSide(color: ColorGroup.gray))),
        );

  const FclButton.black({
    super.key,
    required super.onPressed,
    super.onLongPress,
    super.onHover,
    super.onFocusChange,
    super.focusNode,
    super.autofocus = false,
    super.clipBehavior = Clip.none,
    required super.child,
  }) : super(
          style: const ButtonStyle(
              foregroundColor: MaterialStatePropertyAll<Color>(Colors.white),
              elevation: MaterialStatePropertyAll<double>(0),
              backgroundColor: MaterialStatePropertyAll<Color>(Colors.black),
              side: MaterialStatePropertyAll<BorderSide>(
                  BorderSide(color: ColorGroup.gray))),
        );

  @override
  ButtonStyle defaultStyleOf(BuildContext context) {
    return const ButtonStyle();
  }

  @override
  ButtonStyle? themeStyleOf(BuildContext context) {
    return const ButtonStyle();
  }
}
