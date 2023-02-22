// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_details_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<OrderDetailsRecord> _$orderDetailsRecordSerializer =
    new _$OrderDetailsRecordSerializer();

class _$OrderDetailsRecordSerializer
    implements StructuredSerializer<OrderDetailsRecord> {
  @override
  final Iterable<Type> types = const [OrderDetailsRecord, _$OrderDetailsRecord];
  @override
  final String wireName = 'OrderDetailsRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, OrderDetailsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.propId;
    if (value != null) {
      result
        ..add('prop_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.amount;
    if (value != null) {
      result
        ..add('amount')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
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
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  OrderDetailsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new OrderDetailsRecordBuilder();

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
        case 'amount':
          result.amount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
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
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$OrderDetailsRecord extends OrderDetailsRecord {
  @override
  final String? propId;
  @override
  final int? amount;
  @override
  final bool? visitReport;
  @override
  final bool? encumReport;
  @override
  final bool? dueDilligenceReport;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$OrderDetailsRecord(
          [void Function(OrderDetailsRecordBuilder)? updates]) =>
      (new OrderDetailsRecordBuilder()..update(updates))._build();

  _$OrderDetailsRecord._(
      {this.propId,
      this.amount,
      this.visitReport,
      this.encumReport,
      this.dueDilligenceReport,
      this.ffRef})
      : super._();

  @override
  OrderDetailsRecord rebuild(
          void Function(OrderDetailsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrderDetailsRecordBuilder toBuilder() =>
      new OrderDetailsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrderDetailsRecord &&
        propId == other.propId &&
        amount == other.amount &&
        visitReport == other.visitReport &&
        encumReport == other.encumReport &&
        dueDilligenceReport == other.dueDilligenceReport &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, propId.hashCode), amount.hashCode),
                    visitReport.hashCode),
                encumReport.hashCode),
            dueDilligenceReport.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OrderDetailsRecord')
          ..add('propId', propId)
          ..add('amount', amount)
          ..add('visitReport', visitReport)
          ..add('encumReport', encumReport)
          ..add('dueDilligenceReport', dueDilligenceReport)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class OrderDetailsRecordBuilder
    implements Builder<OrderDetailsRecord, OrderDetailsRecordBuilder> {
  _$OrderDetailsRecord? _$v;

  String? _propId;
  String? get propId => _$this._propId;
  set propId(String? propId) => _$this._propId = propId;

  int? _amount;
  int? get amount => _$this._amount;
  set amount(int? amount) => _$this._amount = amount;

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

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  OrderDetailsRecordBuilder() {
    OrderDetailsRecord._initializeBuilder(this);
  }

  OrderDetailsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _propId = $v.propId;
      _amount = $v.amount;
      _visitReport = $v.visitReport;
      _encumReport = $v.encumReport;
      _dueDilligenceReport = $v.dueDilligenceReport;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrderDetailsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OrderDetailsRecord;
  }

  @override
  void update(void Function(OrderDetailsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OrderDetailsRecord build() => _build();

  _$OrderDetailsRecord _build() {
    final _$result = _$v ??
        new _$OrderDetailsRecord._(
            propId: propId,
            amount: amount,
            visitReport: visitReport,
            encumReport: encumReport,
            dueDilligenceReport: dueDilligenceReport,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
