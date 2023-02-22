// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prop1_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Prop1Struct> _$prop1StructSerializer = new _$Prop1StructSerializer();

class _$Prop1StructSerializer implements StructuredSerializer<Prop1Struct> {
  @override
  final Iterable<Type> types = const [Prop1Struct, _$Prop1Struct];
  @override
  final String wireName = 'Prop1Struct';

  @override
  Iterable<Object?> serialize(Serializers serializers, Prop1Struct object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'firestoreUtilData',
      serializers.serialize(object.firestoreUtilData,
          specifiedType: const FullType(FirestoreUtilData)),
    ];
    Object? value;
    value = object.doc;
    if (value != null) {
      result
        ..add('doc')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    return result;
  }

  @override
  Prop1Struct deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Prop1StructBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'doc':
          result.doc.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
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

class _$Prop1Struct extends Prop1Struct {
  @override
  final BuiltList<String>? doc;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$Prop1Struct([void Function(Prop1StructBuilder)? updates]) =>
      (new Prop1StructBuilder()..update(updates))._build();

  _$Prop1Struct._({this.doc, required this.firestoreUtilData}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'Prop1Struct', 'firestoreUtilData');
  }

  @override
  Prop1Struct rebuild(void Function(Prop1StructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Prop1StructBuilder toBuilder() => new Prop1StructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Prop1Struct &&
        doc == other.doc &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, doc.hashCode), firestoreUtilData.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Prop1Struct')
          ..add('doc', doc)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class Prop1StructBuilder implements Builder<Prop1Struct, Prop1StructBuilder> {
  _$Prop1Struct? _$v;

  ListBuilder<String>? _doc;
  ListBuilder<String> get doc => _$this._doc ??= new ListBuilder<String>();
  set doc(ListBuilder<String>? doc) => _$this._doc = doc;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  Prop1StructBuilder() {
    Prop1Struct._initializeBuilder(this);
  }

  Prop1StructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _doc = $v.doc?.toBuilder();
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Prop1Struct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Prop1Struct;
  }

  @override
  void update(void Function(Prop1StructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Prop1Struct build() => _build();

  _$Prop1Struct _build() {
    _$Prop1Struct _$result;
    try {
      _$result = _$v ??
          new _$Prop1Struct._(
              doc: _doc?.build(),
              firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                  firestoreUtilData, r'Prop1Struct', 'firestoreUtilData'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'doc';
        _doc?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Prop1Struct', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
