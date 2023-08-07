import 'package:flutter/material.dart';

class FclButton extends ElevatedButton {
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
        elevation: MaterialStatePropertyAll<double>(0),
        side: MaterialStatePropertyAll<BorderSide>(
            BorderSide(color: Color(0xffe0e0e0)))),
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
        elevation: MaterialStatePropertyAll<double>(0),
        backgroundColor: MaterialStatePropertyAll<Color>(Colors.white),
        side: MaterialStatePropertyAll<BorderSide>(
            BorderSide(color: Color(0xffe0e0e0)))),
  );

}
// class FclButton extends ButtonStyleButton {
//   const FclButton({
//     super.key,
//     required super.onPressed,
//     super.onLongPress,
//     super.onHover,
//     super.onFocusChange,
//     super.style,
//     super.focusNode,
//     super.autofocus = false,
//     super.clipBehavior = Clip.none,
//     required super.child,
//   });
//
//   const FclButton.white({
//     super.key,
//     required super.onPressed,
//     super.onLongPress,
//     super.onHover,
//     super.onFocusChange,
//     super.focusNode,
//     super.autofocus = false,
//     super.clipBehavior = Clip.none,
//     required super.child,
//   }) : super(
//     style: const ButtonStyle(
//         elevation: MaterialStatePropertyAll<double>(0),
//         backgroundColor: MaterialStatePropertyAll<Color>(Colors.white),
//         side: MaterialStatePropertyAll<BorderSide>(
//             BorderSide(color: Color(0xffe0e0e0)))),
//   );
//
//   @override
//   ButtonStyle defaultStyleOf(BuildContext context) {
//     return const ButtonStyle();
//   }
//
//   @override
//   ButtonStyle? themeStyleOf(BuildContext context) {
//     return const ButtonStyle();
//   }
// }
