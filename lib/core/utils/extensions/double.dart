
const scale = 1100 / 1563;

extension DoubleExt on double {
  double get sz => this * scale;
}

extension IntExt on int {
  double get sz => this * scale;
}
