// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'carousels_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CarouselsRecord> _$carouselsRecordSerializer =
    new _$CarouselsRecordSerializer();

class _$CarouselsRecordSerializer
    implements StructuredSerializer<CarouselsRecord> {
  @override
  final Iterable<Type> types = const [CarouselsRecord, _$CarouselsRecord];
  @override
  final String wireName = 'CarouselsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, CarouselsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.propertyId;
    if (value != null) {
      result
        ..add('property_id')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(int)])));
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
  CarouselsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CarouselsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'property_id':
          result.propertyId.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(int)]))!
              as BuiltList<Object?>);
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

class _$CarouselsRecord extends CarouselsRecord {
  @override
  final String? title;
  @override
  final BuiltList<int>? propertyId;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$CarouselsRecord([void Function(CarouselsRecordBuilder)? updates]) =>
      (new CarouselsRecordBuilder()..update(updates))._build();

  _$CarouselsRecord._({this.title, this.propertyId, this.ffRef}) : super._();

  @override
  CarouselsRecord rebuild(void Function(CarouselsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CarouselsRecordBuilder toBuilder() =>
      new CarouselsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CarouselsRecord &&
        title == other.title &&
        propertyId == other.propertyId &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, title.hashCode), propertyId.hashCode), ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CarouselsRecord')
          ..add('title', title)
          ..add('propertyId', propertyId)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class CarouselsRecordBuilder
    implements Builder<CarouselsRecord, CarouselsRecordBuilder> {
  _$CarouselsRecord? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  ListBuilder<int>? _propertyId;
  ListBuilder<int> get propertyId =>
      _$this._propertyId ??= new ListBuilder<int>();
  set propertyId(ListBuilder<int>? propertyId) =>
      _$this._propertyId = propertyId;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  CarouselsRecordBuilder() {
    CarouselsRecord._initializeBuilder(this);
  }

  CarouselsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _propertyId = $v.propertyId?.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CarouselsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CarouselsRecord;
  }

  @override
  void update(void Function(CarouselsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CarouselsRecord build() => _build();

  _$CarouselsRecord _build() {
    _$CarouselsRecord _$result;
    try {
      _$result = _$v ??
          new _$CarouselsRecord._(
              title: title, propertyId: _propertyId?.build(), ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'propertyId';
        _propertyId?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CarouselsRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
