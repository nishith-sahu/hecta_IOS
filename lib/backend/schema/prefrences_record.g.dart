// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prefrences_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PrefrencesRecord> _$prefrencesRecordSerializer =
    new _$PrefrencesRecordSerializer();

class _$PrefrencesRecordSerializer
    implements StructuredSerializer<PrefrencesRecord> {
  @override
  final Iterable<Type> types = const [PrefrencesRecord, _$PrefrencesRecord];
  @override
  final String wireName = 'PrefrencesRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, PrefrencesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.cities;
    if (value != null) {
      result
        ..add('cities')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.propertyType;
    if (value != null) {
      result
        ..add('property_type')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.creationTime;
    if (value != null) {
      result
        ..add('creation_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.budgetFrom;
    if (value != null) {
      result
        ..add('budgetFrom')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.budgetTo;
    if (value != null) {
      result
        ..add('budgetTo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.userId;
    if (value != null) {
      result
        ..add('user_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.location;
    if (value != null) {
      result
        ..add('location')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LatLng)));
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
  PrefrencesRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PrefrencesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'cities':
          result.cities.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'property_type':
          result.propertyType.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'creation_time':
          result.creationTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'budgetFrom':
          result.budgetFrom = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'budgetTo':
          result.budgetTo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'user_id':
          result.userId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'location':
          result.location = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng?;
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

class _$PrefrencesRecord extends PrefrencesRecord {
  @override
  final BuiltList<String>? cities;
  @override
  final BuiltList<String>? propertyType;
  @override
  final DateTime? creationTime;
  @override
  final String? budgetFrom;
  @override
  final String? budgetTo;
  @override
  final String? userId;
  @override
  final LatLng? location;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$PrefrencesRecord(
          [void Function(PrefrencesRecordBuilder)? updates]) =>
      (new PrefrencesRecordBuilder()..update(updates))._build();

  _$PrefrencesRecord._(
      {this.cities,
      this.propertyType,
      this.creationTime,
      this.budgetFrom,
      this.budgetTo,
      this.userId,
      this.location,
      this.ffRef})
      : super._();

  @override
  PrefrencesRecord rebuild(void Function(PrefrencesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PrefrencesRecordBuilder toBuilder() =>
      new PrefrencesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PrefrencesRecord &&
        cities == other.cities &&
        propertyType == other.propertyType &&
        creationTime == other.creationTime &&
        budgetFrom == other.budgetFrom &&
        budgetTo == other.budgetTo &&
        userId == other.userId &&
        location == other.location &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, cities.hashCode), propertyType.hashCode),
                            creationTime.hashCode),
                        budgetFrom.hashCode),
                    budgetTo.hashCode),
                userId.hashCode),
            location.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PrefrencesRecord')
          ..add('cities', cities)
          ..add('propertyType', propertyType)
          ..add('creationTime', creationTime)
          ..add('budgetFrom', budgetFrom)
          ..add('budgetTo', budgetTo)
          ..add('userId', userId)
          ..add('location', location)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class PrefrencesRecordBuilder
    implements Builder<PrefrencesRecord, PrefrencesRecordBuilder> {
  _$PrefrencesRecord? _$v;

  ListBuilder<String>? _cities;
  ListBuilder<String> get cities =>
      _$this._cities ??= new ListBuilder<String>();
  set cities(ListBuilder<String>? cities) => _$this._cities = cities;

  ListBuilder<String>? _propertyType;
  ListBuilder<String> get propertyType =>
      _$this._propertyType ??= new ListBuilder<String>();
  set propertyType(ListBuilder<String>? propertyType) =>
      _$this._propertyType = propertyType;

  DateTime? _creationTime;
  DateTime? get creationTime => _$this._creationTime;
  set creationTime(DateTime? creationTime) =>
      _$this._creationTime = creationTime;

  String? _budgetFrom;
  String? get budgetFrom => _$this._budgetFrom;
  set budgetFrom(String? budgetFrom) => _$this._budgetFrom = budgetFrom;

  String? _budgetTo;
  String? get budgetTo => _$this._budgetTo;
  set budgetTo(String? budgetTo) => _$this._budgetTo = budgetTo;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  LatLng? _location;
  LatLng? get location => _$this._location;
  set location(LatLng? location) => _$this._location = location;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  PrefrencesRecordBuilder() {
    PrefrencesRecord._initializeBuilder(this);
  }

  PrefrencesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _cities = $v.cities?.toBuilder();
      _propertyType = $v.propertyType?.toBuilder();
      _creationTime = $v.creationTime;
      _budgetFrom = $v.budgetFrom;
      _budgetTo = $v.budgetTo;
      _userId = $v.userId;
      _location = $v.location;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PrefrencesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PrefrencesRecord;
  }

  @override
  void update(void Function(PrefrencesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PrefrencesRecord build() => _build();

  _$PrefrencesRecord _build() {
    _$PrefrencesRecord _$result;
    try {
      _$result = _$v ??
          new _$PrefrencesRecord._(
              cities: _cities?.build(),
              propertyType: _propertyType?.build(),
              creationTime: creationTime,
              budgetFrom: budgetFrom,
              budgetTo: budgetTo,
              userId: userId,
              location: location,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'cities';
        _cities?.build();
        _$failedField = 'propertyType';
        _propertyType?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PrefrencesRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
