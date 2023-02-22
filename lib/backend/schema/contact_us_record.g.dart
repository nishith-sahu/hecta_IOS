// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_us_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ContactUsRecord> _$contactUsRecordSerializer =
    new _$ContactUsRecordSerializer();

class _$ContactUsRecordSerializer
    implements StructuredSerializer<ContactUsRecord> {
  @override
  final Iterable<Type> types = const [ContactUsRecord, _$ContactUsRecord];
  @override
  final String wireName = 'ContactUsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ContactUsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
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
    value = object.msg;
    if (value != null) {
      result
        ..add('msg')
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
    value = object.createdTime;
    if (value != null) {
      result
        ..add('created_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
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
  ContactUsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ContactUsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'msg':
          result.msg = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'phone':
          result.phone = serializers.deserialize(value,
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
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
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

class _$ContactUsRecord extends ContactUsRecord {
  @override
  final String? name;
  @override
  final String? email;
  @override
  final String? msg;
  @override
  final String? phone;
  @override
  final String? userId;
  @override
  final LatLng? location;
  @override
  final DateTime? createdTime;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ContactUsRecord([void Function(ContactUsRecordBuilder)? updates]) =>
      (new ContactUsRecordBuilder()..update(updates))._build();

  _$ContactUsRecord._(
      {this.name,
      this.email,
      this.msg,
      this.phone,
      this.userId,
      this.location,
      this.createdTime,
      this.ffRef})
      : super._();

  @override
  ContactUsRecord rebuild(void Function(ContactUsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ContactUsRecordBuilder toBuilder() =>
      new ContactUsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ContactUsRecord &&
        name == other.name &&
        email == other.email &&
        msg == other.msg &&
        phone == other.phone &&
        userId == other.userId &&
        location == other.location &&
        createdTime == other.createdTime &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, name.hashCode), email.hashCode),
                            msg.hashCode),
                        phone.hashCode),
                    userId.hashCode),
                location.hashCode),
            createdTime.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ContactUsRecord')
          ..add('name', name)
          ..add('email', email)
          ..add('msg', msg)
          ..add('phone', phone)
          ..add('userId', userId)
          ..add('location', location)
          ..add('createdTime', createdTime)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ContactUsRecordBuilder
    implements Builder<ContactUsRecord, ContactUsRecordBuilder> {
  _$ContactUsRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _msg;
  String? get msg => _$this._msg;
  set msg(String? msg) => _$this._msg = msg;

  String? _phone;
  String? get phone => _$this._phone;
  set phone(String? phone) => _$this._phone = phone;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  LatLng? _location;
  LatLng? get location => _$this._location;
  set location(LatLng? location) => _$this._location = location;

  DateTime? _createdTime;
  DateTime? get createdTime => _$this._createdTime;
  set createdTime(DateTime? createdTime) => _$this._createdTime = createdTime;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ContactUsRecordBuilder() {
    ContactUsRecord._initializeBuilder(this);
  }

  ContactUsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _email = $v.email;
      _msg = $v.msg;
      _phone = $v.phone;
      _userId = $v.userId;
      _location = $v.location;
      _createdTime = $v.createdTime;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ContactUsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ContactUsRecord;
  }

  @override
  void update(void Function(ContactUsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ContactUsRecord build() => _build();

  _$ContactUsRecord _build() {
    final _$result = _$v ??
        new _$ContactUsRecord._(
            name: name,
            email: email,
            msg: msg,
            phone: phone,
            userId: userId,
            location: location,
            createdTime: createdTime,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
