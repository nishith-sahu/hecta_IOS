// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'property_form1_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PropertyForm1Record> _$propertyForm1RecordSerializer =
    new _$PropertyForm1RecordSerializer();

class _$PropertyForm1RecordSerializer
    implements StructuredSerializer<PropertyForm1Record> {
  @override
  final Iterable<Type> types = const [
    PropertyForm1Record,
    _$PropertyForm1Record
  ];
  @override
  final String wireName = 'PropertyForm1Record';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, PropertyForm1Record object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.submitted;
    if (value != null) {
      result
        ..add('submitted')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.firstName;
    if (value != null) {
      result
        ..add('first_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.middleName;
    if (value != null) {
      result
        ..add('middle_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.lastName;
    if (value != null) {
      result
        ..add('last_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.fatherSpouseName;
    if (value != null) {
      result
        ..add('father_spouse_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.dob;
    if (value != null) {
      result
        ..add('dob')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.phone;
    if (value != null) {
      result
        ..add('phone')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.permAdd1;
    if (value != null) {
      result
        ..add('perm_add_1')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.currAdd1;
    if (value != null) {
      result
        ..add('curr_add_1')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.domicile;
    if (value != null) {
      result
        ..add('domicile')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdTime;
    if (value != null) {
      result
        ..add('created_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.updatedTime;
    if (value != null) {
      result
        ..add('updated_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.userId;
    if (value != null) {
      result
        ..add('user_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.propId;
    if (value != null) {
      result
        ..add('prop_id')
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
    value = object.form;
    if (value != null) {
      result
        ..add('form')
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
  PropertyForm1Record deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PropertyForm1RecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'submitted':
          result.submitted = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'first_name':
          result.firstName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'middle_name':
          result.middleName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'last_name':
          result.lastName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'father_spouse_name':
          result.fatherSpouseName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'dob':
          result.dob = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'phone':
          result.phone = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'perm_add_1':
          result.permAdd1 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'curr_add_1':
          result.currAdd1 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'domicile':
          result.domicile = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'updated_time':
          result.updatedTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'user_id':
          result.userId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'prop_id':
          result.propId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'location':
          result.location = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng?;
          break;
        case 'form':
          result.form = serializers.deserialize(value,
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

class _$PropertyForm1Record extends PropertyForm1Record {
  @override
  final bool? submitted;
  @override
  final String? firstName;
  @override
  final String? middleName;
  @override
  final String? lastName;
  @override
  final String? fatherSpouseName;
  @override
  final String? dob;
  @override
  final String? email;
  @override
  final String? phone;
  @override
  final String? status;
  @override
  final String? permAdd1;
  @override
  final String? currAdd1;
  @override
  final String? domicile;
  @override
  final DateTime? createdTime;
  @override
  final DateTime? updatedTime;
  @override
  final String? userId;
  @override
  final String? propId;
  @override
  final LatLng? location;
  @override
  final bool? form;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$PropertyForm1Record(
          [void Function(PropertyForm1RecordBuilder)? updates]) =>
      (new PropertyForm1RecordBuilder()..update(updates))._build();

  _$PropertyForm1Record._(
      {this.submitted,
      this.firstName,
      this.middleName,
      this.lastName,
      this.fatherSpouseName,
      this.dob,
      this.email,
      this.phone,
      this.status,
      this.permAdd1,
      this.currAdd1,
      this.domicile,
      this.createdTime,
      this.updatedTime,
      this.userId,
      this.propId,
      this.location,
      this.form,
      this.ffRef})
      : super._();

  @override
  PropertyForm1Record rebuild(
          void Function(PropertyForm1RecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PropertyForm1RecordBuilder toBuilder() =>
      new PropertyForm1RecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PropertyForm1Record &&
        submitted == other.submitted &&
        firstName == other.firstName &&
        middleName == other.middleName &&
        lastName == other.lastName &&
        fatherSpouseName == other.fatherSpouseName &&
        dob == other.dob &&
        email == other.email &&
        phone == other.phone &&
        status == other.status &&
        permAdd1 == other.permAdd1 &&
        currAdd1 == other.currAdd1 &&
        domicile == other.domicile &&
        createdTime == other.createdTime &&
        updatedTime == other.updatedTime &&
        userId == other.userId &&
        propId == other.propId &&
        location == other.location &&
        form == other.form &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc(
                                                                                0,
                                                                                submitted
                                                                                    .hashCode),
                                                                            firstName
                                                                                .hashCode),
                                                                        middleName
                                                                            .hashCode),
                                                                    lastName
                                                                        .hashCode),
                                                                fatherSpouseName
                                                                    .hashCode),
                                                            dob.hashCode),
                                                        email.hashCode),
                                                    phone.hashCode),
                                                status.hashCode),
                                            permAdd1.hashCode),
                                        currAdd1.hashCode),
                                    domicile.hashCode),
                                createdTime.hashCode),
                            updatedTime.hashCode),
                        userId.hashCode),
                    propId.hashCode),
                location.hashCode),
            form.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PropertyForm1Record')
          ..add('submitted', submitted)
          ..add('firstName', firstName)
          ..add('middleName', middleName)
          ..add('lastName', lastName)
          ..add('fatherSpouseName', fatherSpouseName)
          ..add('dob', dob)
          ..add('email', email)
          ..add('phone', phone)
          ..add('status', status)
          ..add('permAdd1', permAdd1)
          ..add('currAdd1', currAdd1)
          ..add('domicile', domicile)
          ..add('createdTime', createdTime)
          ..add('updatedTime', updatedTime)
          ..add('userId', userId)
          ..add('propId', propId)
          ..add('location', location)
          ..add('form', form)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class PropertyForm1RecordBuilder
    implements Builder<PropertyForm1Record, PropertyForm1RecordBuilder> {
  _$PropertyForm1Record? _$v;

  bool? _submitted;
  bool? get submitted => _$this._submitted;
  set submitted(bool? submitted) => _$this._submitted = submitted;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _middleName;
  String? get middleName => _$this._middleName;
  set middleName(String? middleName) => _$this._middleName = middleName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  String? _fatherSpouseName;
  String? get fatherSpouseName => _$this._fatherSpouseName;
  set fatherSpouseName(String? fatherSpouseName) =>
      _$this._fatherSpouseName = fatherSpouseName;

  String? _dob;
  String? get dob => _$this._dob;
  set dob(String? dob) => _$this._dob = dob;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _phone;
  String? get phone => _$this._phone;
  set phone(String? phone) => _$this._phone = phone;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  String? _permAdd1;
  String? get permAdd1 => _$this._permAdd1;
  set permAdd1(String? permAdd1) => _$this._permAdd1 = permAdd1;

  String? _currAdd1;
  String? get currAdd1 => _$this._currAdd1;
  set currAdd1(String? currAdd1) => _$this._currAdd1 = currAdd1;

  String? _domicile;
  String? get domicile => _$this._domicile;
  set domicile(String? domicile) => _$this._domicile = domicile;

  DateTime? _createdTime;
  DateTime? get createdTime => _$this._createdTime;
  set createdTime(DateTime? createdTime) => _$this._createdTime = createdTime;

  DateTime? _updatedTime;
  DateTime? get updatedTime => _$this._updatedTime;
  set updatedTime(DateTime? updatedTime) => _$this._updatedTime = updatedTime;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  String? _propId;
  String? get propId => _$this._propId;
  set propId(String? propId) => _$this._propId = propId;

  LatLng? _location;
  LatLng? get location => _$this._location;
  set location(LatLng? location) => _$this._location = location;

  bool? _form;
  bool? get form => _$this._form;
  set form(bool? form) => _$this._form = form;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  PropertyForm1RecordBuilder() {
    PropertyForm1Record._initializeBuilder(this);
  }

  PropertyForm1RecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _submitted = $v.submitted;
      _firstName = $v.firstName;
      _middleName = $v.middleName;
      _lastName = $v.lastName;
      _fatherSpouseName = $v.fatherSpouseName;
      _dob = $v.dob;
      _email = $v.email;
      _phone = $v.phone;
      _status = $v.status;
      _permAdd1 = $v.permAdd1;
      _currAdd1 = $v.currAdd1;
      _domicile = $v.domicile;
      _createdTime = $v.createdTime;
      _updatedTime = $v.updatedTime;
      _userId = $v.userId;
      _propId = $v.propId;
      _location = $v.location;
      _form = $v.form;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PropertyForm1Record other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PropertyForm1Record;
  }

  @override
  void update(void Function(PropertyForm1RecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PropertyForm1Record build() => _build();

  _$PropertyForm1Record _build() {
    final _$result = _$v ??
        new _$PropertyForm1Record._(
            submitted: submitted,
            firstName: firstName,
            middleName: middleName,
            lastName: lastName,
            fatherSpouseName: fatherSpouseName,
            dob: dob,
            email: email,
            phone: phone,
            status: status,
            permAdd1: permAdd1,
            currAdd1: currAdd1,
            domicile: domicile,
            createdTime: createdTime,
            updatedTime: updatedTime,
            userId: userId,
            propId: propId,
            location: location,
            form: form,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
