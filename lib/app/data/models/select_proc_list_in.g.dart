// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'select_proc_list_in.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$SelectProcListInCWProxy {
  SelectProcListIn gbn(Gbn gbn);

  SelectProcListIn idx(int? idx);

  SelectProcListIn pageIndex(int pageIndex);

  SelectProcListIn searchCompany(String? searchCompany);

  SelectProcListIn searchDate1(DateTime? searchDate1);

  SelectProcListIn searchDate2(DateTime? searchDate2);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `SelectProcListIn(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// SelectProcListIn(...).copyWith(id: 12, name: "My name")
  /// ````
  SelectProcListIn call({
    Gbn? gbn,
    int? idx,
    int? pageIndex,
    String? searchCompany,
    DateTime? searchDate1,
    DateTime? searchDate2,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfSelectProcListIn.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfSelectProcListIn.copyWith.fieldName(...)`
class _$SelectProcListInCWProxyImpl implements _$SelectProcListInCWProxy {
  const _$SelectProcListInCWProxyImpl(this._value);

  final SelectProcListIn _value;

  @override
  SelectProcListIn gbn(Gbn gbn) => this(gbn: gbn);

  @override
  SelectProcListIn idx(int? idx) => this(idx: idx);

  @override
  SelectProcListIn pageIndex(int pageIndex) => this(pageIndex: pageIndex);

  @override
  SelectProcListIn searchCompany(String? searchCompany) =>
      this(searchCompany: searchCompany);

  @override
  SelectProcListIn searchDate1(DateTime? searchDate1) =>
      this(searchDate1: searchDate1);

  @override
  SelectProcListIn searchDate2(DateTime? searchDate2) =>
      this(searchDate2: searchDate2);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `SelectProcListIn(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// SelectProcListIn(...).copyWith(id: 12, name: "My name")
  /// ````
  SelectProcListIn call({
    Object? gbn = const $CopyWithPlaceholder(),
    Object? idx = const $CopyWithPlaceholder(),
    Object? pageIndex = const $CopyWithPlaceholder(),
    Object? searchCompany = const $CopyWithPlaceholder(),
    Object? searchDate1 = const $CopyWithPlaceholder(),
    Object? searchDate2 = const $CopyWithPlaceholder(),
  }) {
    return SelectProcListIn(
      gbn: gbn == const $CopyWithPlaceholder() || gbn == null
          ? _value.gbn
          // ignore: cast_nullable_to_non_nullable
          : gbn as Gbn,
      idx: idx == const $CopyWithPlaceholder()
          ? _value.idx
          // ignore: cast_nullable_to_non_nullable
          : idx as int?,
      pageIndex: pageIndex == const $CopyWithPlaceholder() || pageIndex == null
          ? _value.pageIndex
          // ignore: cast_nullable_to_non_nullable
          : pageIndex as int,
      searchCompany: searchCompany == const $CopyWithPlaceholder()
          ? _value.searchCompany
          // ignore: cast_nullable_to_non_nullable
          : searchCompany as String?,
      searchDate1: searchDate1 == const $CopyWithPlaceholder()
          ? _value.searchDate1
          // ignore: cast_nullable_to_non_nullable
          : searchDate1 as DateTime?,
      searchDate2: searchDate2 == const $CopyWithPlaceholder()
          ? _value.searchDate2
          // ignore: cast_nullable_to_non_nullable
          : searchDate2 as DateTime?,
    );
  }
}

extension $SelectProcListInCopyWith on SelectProcListIn {
  /// Returns a callable class that can be used as follows: `instanceOfSelectProcListIn.copyWith(...)` or like so:`instanceOfSelectProcListIn.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$SelectProcListInCWProxy get copyWith => _$SelectProcListInCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SelectProcListIn _$SelectProcListInFromJson(Map<String, dynamic> json) =>
    SelectProcListIn(
      gbn: $enumDecode(_$GbnEnumMap, json['gbn']),
      idx: json['idx'] as int?,
      pageIndex: json['pageIndex'] as int,
      searchCompany: json['searchCompany'] as String?,
      searchDate1: const DateTimeNullableConverter()
          .fromJson(json['searchDate1'] as String?),
      searchDate2: const DateTimeNullableConverter()
          .fromJson(json['searchDate2'] as String?),
    );

Map<String, dynamic> _$SelectProcListInToJson(SelectProcListIn instance) =>
    <String, dynamic>{
      'gbn': _$GbnEnumMap[instance.gbn]!,
      'idx': instance.idx,
      'pageIndex': instance.pageIndex,
      'searchCompany': instance.searchCompany,
      'searchDate1':
          const DateTimeNullableConverter().toJson(instance.searchDate1),
      'searchDate2':
          const DateTimeNullableConverter().toJson(instance.searchDate2),
    };

const _$GbnEnumMap = {
  Gbn.fd2: 'fd2',
  Gbn.fd1: 'fd1',
  Gbn.fd3: 'fd3',
};
