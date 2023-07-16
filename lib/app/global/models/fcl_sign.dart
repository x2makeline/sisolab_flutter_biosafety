class FclSign {
  FclSign({this.name, this.signature});

  /// 성명
  String? name;

  /// 서명
  String? signature;


  @override
  String toString() {
    return 'FclSign{name: $name, signature: $signature}';
  }

  merge({String? name, String? signature}) =>
      FclSign(name: name ?? this.name, signature: signature ?? this.signature);
}
