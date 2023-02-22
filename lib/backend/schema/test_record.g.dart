// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TestRecord> _$testRecordSerializer = new _$TestRecordSerializer();

class _$TestRecordSerializer implements StructuredSerializer<TestRecord> {
  @override
  final Iterable<Type> types = const [TestRecord, _$TestRecord];
  @override
  final String wireName = 'TestRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, TestRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'map',
      serializers.serialize(object.map,
          specifiedType: const FullType(Prop1Struct)),
    ];
    Object? value;
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
  TestRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TestRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'map':
          result.map.replace(serializers.deserialize(value,
              specifiedType: const FullType(Prop1Struct))! as Prop1Struct);
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

class _$TestRecord extends TestRecord {
  @override
  final Prop1Struct map;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$TestRecord([void Function(TestRecordBuilder)? updates]) =>
      (new TestRecordBuilder()..update(updates))._build();

  _$TestRecord._({required this.map, this.ffRef}) : super._() {
    BuiltValueNullFieldError.checkNotNull(map, r'TestRecord', 'map');
  }

  @override
  TestRecord rebuild(void Function(TestRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TestRecordBuilder toBuilder() => new TestRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TestRecord && map == other.map && ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, map.hashCode), ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TestRecord')
          ..add('map', map)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class TestRecordBuilder implements Builder<TestRecord, TestRecordBuilder> {
  _$TestRecord? _$v;

  Prop1StructBuilder? _map;
  Prop1StructBuilder get map => _$this._map ??= new Prop1StructBuilder();
  set map(Prop1StructBuilder? map) => _$this._map = map;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  TestRecordBuilder() {
    TestRecord._initializeBuilder(this);
  }

  TestRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _map = $v.map.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TestRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TestRecord;
  }

  @override
  void update(void Function(TestRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TestRecord build() => _build();

  _$TestRecord _build() {
    _$TestRecord _$result;
    try {
      _$result = _$v ?? new _$TestRecord._(map: map.build(), ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'map';
        map.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TestRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
