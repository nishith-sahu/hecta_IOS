// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'req_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ReqStruct> _$reqStructSerializer = new _$ReqStructSerializer();

class _$ReqStructSerializer implements StructuredSerializer<ReqStruct> {
  @override
  final Iterable<Type> types = const [ReqStruct, _$ReqStruct];
  @override
  final String wireName = 'ReqStruct';

  @override
  Iterable<Object?> serialize(Serializers serializers, ReqStruct object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'firestoreUtilData',
      serializers.serialize(object.firestoreUtilData,
          specifiedType: const FullType(FirestoreUtilData)),
    ];
    Object? value;
    value = object.city;
    if (value != null) {
      result
        ..add('city')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.state;
    if (value != null) {
      result
        ..add('state')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.area;
    if (value != null) {
      result
        ..add('area')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    return result;
  }

  @override
  ReqStruct deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ReqStructBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'city':
          result.city.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'state':
          result.state.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'area':
          result.area.replace(serializers.deserialize(value,
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

class _$ReqStruct extends ReqStruct {
  @override
  final BuiltList<String>? city;
  @override
  final BuiltList<String>? state;
  @override
  final BuiltList<String>? area;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$ReqStruct([void Function(ReqStructBuilder)? updates]) =>
      (new ReqStructBuilder()..update(updates))._build();

  _$ReqStruct._(
      {this.city, this.state, this.area, required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'ReqStruct', 'firestoreUtilData');
  }

  @override
  ReqStruct rebuild(void Function(ReqStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReqStructBuilder toBuilder() => new ReqStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReqStruct &&
        city == other.city &&
        state == other.state &&
        area == other.area &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, city.hashCode), state.hashCode), area.hashCode),
        firestoreUtilData.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ReqStruct')
          ..add('city', city)
          ..add('state', state)
          ..add('area', area)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class ReqStructBuilder implements Builder<ReqStruct, ReqStructBuilder> {
  _$ReqStruct? _$v;

  ListBuilder<String>? _city;
  ListBuilder<String> get city => _$this._city ??= new ListBuilder<String>();
  set city(ListBuilder<String>? city) => _$this._city = city;

  ListBuilder<String>? _state;
  ListBuilder<String> get state => _$this._state ??= new ListBuilder<String>();
  set state(ListBuilder<String>? state) => _$this._state = state;

  ListBuilder<String>? _area;
  ListBuilder<String> get area => _$this._area ??= new ListBuilder<String>();
  set area(ListBuilder<String>? area) => _$this._area = area;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  ReqStructBuilder() {
    ReqStruct._initializeBuilder(this);
  }

  ReqStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _city = $v.city?.toBuilder();
      _state = $v.state?.toBuilder();
      _area = $v.area?.toBuilder();
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReqStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ReqStruct;
  }

  @override
  void update(void Function(ReqStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReqStruct build() => _build();

  _$ReqStruct _build() {
    _$ReqStruct _$result;
    try {
      _$result = _$v ??
          new _$ReqStruct._(
              city: _city?.build(),
              state: _state?.build(),
              area: _area?.build(),
              firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                  firestoreUtilData, r'ReqStruct', 'firestoreUtilData'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'city';
        _city?.build();
        _$failedField = 'state';
        _state?.build();
        _$failedField = 'area';
        _area?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ReqStruct', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
