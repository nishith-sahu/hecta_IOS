// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loan_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LoanRecord> _$loanRecordSerializer = new _$LoanRecordSerializer();

class _$LoanRecordSerializer implements StructuredSerializer<LoanRecord> {
  @override
  final Iterable<Type> types = const [LoanRecord, _$LoanRecord];
  @override
  final String wireName = 'LoanRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, LoanRecord object,
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
    value = object.phone;
    if (value != null) {
      result
        ..add('phone')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.bank;
    if (value != null) {
      result
        ..add('bank')
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
    value = object.createdTime;
    if (value != null) {
      result
        ..add('created_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.location;
    if (value != null) {
      result
        ..add('location')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LatLng)));
    }
    value = object.propID;
    if (value != null) {
      result
        ..add('propID')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.rprice;
    if (value != null) {
      result
        ..add('rprice')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.title;
    if (value != null) {
      result
        ..add('title')
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
  LoanRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LoanRecordBuilder();

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
        case 'phone':
          result.phone = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'bank':
          result.bank = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'user_id':
          result.userId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'location':
          result.location = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng?;
          break;
        case 'propID':
          result.propID = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'rprice':
          result.rprice = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
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

class _$LoanRecord extends LoanRecord {
  @override
  final String? name;
  @override
  final int? phone;
  @override
  final String? bank;
  @override
  final String? userId;
  @override
  final DateTime? createdTime;
  @override
  final LatLng? location;
  @override
  final int? propID;
  @override
  final String? rprice;
  @override
  final String? title;
  @override
  final String? email;
  @override
  final String? msg;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$LoanRecord([void Function(LoanRecordBuilder)? updates]) =>
      (new LoanRecordBuilder()..update(updates))._build();

  _$LoanRecord._(
      {this.name,
      this.phone,
      this.bank,
      this.userId,
      this.createdTime,
      this.location,
      this.propID,
      this.rprice,
      this.title,
      this.email,
      this.msg,
      this.ffRef})
      : super._();

  @override
  LoanRecord rebuild(void Function(LoanRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LoanRecordBuilder toBuilder() => new LoanRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LoanRecord &&
        name == other.name &&
        phone == other.phone &&
        bank == other.bank &&
        userId == other.userId &&
        createdTime == other.createdTime &&
        location == other.location &&
        propID == other.propID &&
        rprice == other.rprice &&
        title == other.title &&
        email == other.email &&
        msg == other.msg &&
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
                                            $jc($jc(0, name.hashCode),
                                                phone.hashCode),
                                            bank.hashCode),
                                        userId.hashCode),
                                    createdTime.hashCode),
                                location.hashCode),
                            propID.hashCode),
                        rprice.hashCode),
                    title.hashCode),
                email.hashCode),
            msg.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LoanRecord')
          ..add('name', name)
          ..add('phone', phone)
          ..add('bank', bank)
          ..add('userId', userId)
          ..add('createdTime', createdTime)
          ..add('location', location)
          ..add('propID', propID)
          ..add('rprice', rprice)
          ..add('title', title)
          ..add('email', email)
          ..add('msg', msg)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class LoanRecordBuilder implements Builder<LoanRecord, LoanRecordBuilder> {
  _$LoanRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  int? _phone;
  int? get phone => _$this._phone;
  set phone(int? phone) => _$this._phone = phone;

  String? _bank;
  String? get bank => _$this._bank;
  set bank(String? bank) => _$this._bank = bank;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  DateTime? _createdTime;
  DateTime? get createdTime => _$this._createdTime;
  set createdTime(DateTime? createdTime) => _$this._createdTime = createdTime;

  LatLng? _location;
  LatLng? get location => _$this._location;
  set location(LatLng? location) => _$this._location = location;

  int? _propID;
  int? get propID => _$this._propID;
  set propID(int? propID) => _$this._propID = propID;

  String? _rprice;
  String? get rprice => _$this._rprice;
  set rprice(String? rprice) => _$this._rprice = rprice;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _msg;
  String? get msg => _$this._msg;
  set msg(String? msg) => _$this._msg = msg;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  LoanRecordBuilder() {
    LoanRecord._initializeBuilder(this);
  }

  LoanRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _phone = $v.phone;
      _bank = $v.bank;
      _userId = $v.userId;
      _createdTime = $v.createdTime;
      _location = $v.location;
      _propID = $v.propID;
      _rprice = $v.rprice;
      _title = $v.title;
      _email = $v.email;
      _msg = $v.msg;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LoanRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LoanRecord;
  }

  @override
  void update(void Function(LoanRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LoanRecord build() => _build();

  _$LoanRecord _build() {
    final _$result = _$v ??
        new _$LoanRecord._(
            name: name,
            phone: phone,
            bank: bank,
            userId: userId,
            createdTime: createdTime,
            location: location,
            propID: propID,
            rprice: rprice,
            title: title,
            email: email,
            msg: msg,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
