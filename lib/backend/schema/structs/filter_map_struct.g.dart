// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filter_map_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<FilterMapStruct> _$filterMapStructSerializer =
    new _$FilterMapStructSerializer();

class _$FilterMapStructSerializer
    implements StructuredSerializer<FilterMapStruct> {
  @override
  final Iterable<Type> types = const [FilterMapStruct, _$FilterMapStruct];
  @override
  final String wireName = 'FilterMapStruct';

  @override
  Iterable<Object?> serialize(Serializers serializers, FilterMapStruct object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'firestoreUtilData',
      serializers.serialize(object.firestoreUtilData,
          specifiedType: const FullType(FirestoreUtilData)),
    ];
    Object? value;
    value = object.filterValue;
    if (value != null) {
      result
        ..add('filterValue')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.filterType;
    if (value != null) {
      result
        ..add('filterType')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  FilterMapStruct deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FilterMapStructBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'filterValue':
          result.filterValue = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'filterType':
          result.filterType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'firestoreUtilData':
          result.firestoreUtilData = serializers.deserialize(value,
                  specifiedType: const FullType(FirestoreUtilData))!
              as FirestoreUtilData;
          break;
      }
    }

    return result.build();
  }
}

class _$FilterMapStruct extends FilterMapStruct {
  @override
  final String? filterValue;
  @override
  final String? filterType;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$FilterMapStruct([void Function(FilterMapStructBuilder)? updates]) =>
      (new FilterMapStructBuilder()..update(updates))._build();

  _$FilterMapStruct._(
      {this.filterValue, this.filterType, required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'FilterMapStruct', 'firestoreUtilData');
  }

  @override
  FilterMapStruct rebuild(void Function(FilterMapStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FilterMapStructBuilder toBuilder() =>
      new FilterMapStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FilterMapStruct &&
        filterValue == other.filterValue &&
        filterType == other.filterType &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, filterValue.hashCode), filterType.hashCode),
        firestoreUtilData.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FilterMapStruct')
          ..add('filterValue', filterValue)
          ..add('filterType', filterType)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class FilterMapStructBuilder
    implements Builder<FilterMapStruct, FilterMapStructBuilder> {
  _$FilterMapStruct? _$v;

  String? _filterValue;
  String? get filterValue => _$this._filterValue;
  set filterValue(String? filterValue) => _$this._filterValue = filterValue;

  String? _filterType;
  String? get filterType => _$this._filterType;
  set filterType(String? filterType) => _$this._filterType = filterType;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  FilterMapStructBuilder() {
    FilterMapStruct._initializeBuilder(this);
  }

  FilterMapStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _filterValue = $v.filterValue;
      _filterType = $v.filterType;
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FilterMapStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FilterMapStruct;
  }

  @override
  void update(void Function(FilterMapStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FilterMapStruct build() => _build();

  _$FilterMapStruct _build() {
    final _$result = _$v ??
        new _$FilterMapStruct._(
            filterValue: filterValue,
            filterType: filterType,
            firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                firestoreUtilData, r'FilterMapStruct', 'firestoreUtilData'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
