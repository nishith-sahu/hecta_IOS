// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'items_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ItemsStruct> _$itemsStructSerializer = new _$ItemsStructSerializer();

class _$ItemsStructSerializer implements StructuredSerializer<ItemsStruct> {
  @override
  final Iterable<Type> types = const [ItemsStruct, _$ItemsStruct];
  @override
  final String wireName = 'ItemsStruct';

  @override
  Iterable<Object?> serialize(Serializers serializers, ItemsStruct object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'firestoreUtilData',
      serializers.serialize(object.firestoreUtilData,
          specifiedType: const FullType(FirestoreUtilData)),
    ];
    Object? value;
    value = object.propId;
    if (value != null) {
      result
        ..add('prop_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.visitReport;
    if (value != null) {
      result
        ..add('visit_report')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.encumReport;
    if (value != null) {
      result
        ..add('encum_report')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.dueDilligenceReport;
    if (value != null) {
      result
        ..add('due_dilligence_report')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  ItemsStruct deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ItemsStructBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'prop_id':
          result.propId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'visit_report':
          result.visitReport = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'encum_report':
          result.encumReport = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'due_dilligence_report':
          result.dueDilligenceReport = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
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

class _$ItemsStruct extends ItemsStruct {
  @override
  final String? propId;
  @override
  final bool? visitReport;
  @override
  final bool? encumReport;
  @override
  final bool? dueDilligenceReport;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$ItemsStruct([void Function(ItemsStructBuilder)? updates]) =>
      (new ItemsStructBuilder()..update(updates))._build();

  _$ItemsStruct._(
      {this.propId,
      this.visitReport,
      this.encumReport,
      this.dueDilligenceReport,
      required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'ItemsStruct', 'firestoreUtilData');
  }

  @override
  ItemsStruct rebuild(void Function(ItemsStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ItemsStructBuilder toBuilder() => new ItemsStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ItemsStruct &&
        propId == other.propId &&
        visitReport == other.visitReport &&
        encumReport == other.encumReport &&
        dueDilligenceReport == other.dueDilligenceReport &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, propId.hashCode), visitReport.hashCode),
                encumReport.hashCode),
            dueDilligenceReport.hashCode),
        firestoreUtilData.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ItemsStruct')
          ..add('propId', propId)
          ..add('visitReport', visitReport)
          ..add('encumReport', encumReport)
          ..add('dueDilligenceReport', dueDilligenceReport)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class ItemsStructBuilder implements Builder<ItemsStruct, ItemsStructBuilder> {
  _$ItemsStruct? _$v;

  String? _propId;
  String? get propId => _$this._propId;
  set propId(String? propId) => _$this._propId = propId;

  bool? _visitReport;
  bool? get visitReport => _$this._visitReport;
  set visitReport(bool? visitReport) => _$this._visitReport = visitReport;

  bool? _encumReport;
  bool? get encumReport => _$this._encumReport;
  set encumReport(bool? encumReport) => _$this._encumReport = encumReport;

  bool? _dueDilligenceReport;
  bool? get dueDilligenceReport => _$this._dueDilligenceReport;
  set dueDilligenceReport(bool? dueDilligenceReport) =>
      _$this._dueDilligenceReport = dueDilligenceReport;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  ItemsStructBuilder() {
    ItemsStruct._initializeBuilder(this);
  }

  ItemsStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _propId = $v.propId;
      _visitReport = $v.visitReport;
      _encumReport = $v.encumReport;
      _dueDilligenceReport = $v.dueDilligenceReport;
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ItemsStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ItemsStruct;
  }

  @override
  void update(void Function(ItemsStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ItemsStruct build() => _build();

  _$ItemsStruct _build() {
    final _$result = _$v ??
        new _$ItemsStruct._(
            propId: propId,
            visitReport: visitReport,
            encumReport: encumReport,
            dueDilligenceReport: dueDilligenceReport,
            firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                firestoreUtilData, r'ItemsStruct', 'firestoreUtilData'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
