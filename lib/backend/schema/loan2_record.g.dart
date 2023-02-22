// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loan2_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Loan2Record> _$loan2RecordSerializer = new _$Loan2RecordSerializer();

class _$Loan2RecordSerializer implements StructuredSerializer<Loan2Record> {
  @override
  final Iterable<Type> types = const [Loan2Record, _$Loan2Record];
  @override
  final String wireName = 'Loan2Record';

  @override
  Iterable<Object?> serialize(Serializers serializers, Loan2Record object,
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
    value = object.currentDevice;
    if (value != null) {
      result
        ..add('current_device')
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
    value = object.loanAmt;
    if (value != null) {
      result
        ..add('loan_amt')
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
  Loan2Record deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Loan2RecordBuilder();

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
        case 'current_device':
          result.currentDevice = serializers.deserialize(value,
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
        case 'loan_amt':
          result.loanAmt = serializers.deserialize(value,
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

class _$Loan2Record extends Loan2Record {
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
  final String? currentDevice;
  @override
  final String? email;
  @override
  final String? msg;
  @override
  final String? loanAmt;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$Loan2Record([void Function(Loan2RecordBuilder)? updates]) =>
      (new Loan2RecordBuilder()..update(updates))._build();

  _$Loan2Record._(
      {this.name,
      this.phone,
      this.bank,
      this.userId,
      this.createdTime,
      this.location,
      this.currentDevice,
      this.email,
      this.msg,
      this.loanAmt,
      this.ffRef})
      : super._();

  @override
  Loan2Record rebuild(void Function(Loan2RecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Loan2RecordBuilder toBuilder() => new Loan2RecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Loan2Record &&
        name == other.name &&
        phone == other.phone &&
        bank == other.bank &&
        userId == other.userId &&
        createdTime == other.createdTime &&
        location == other.location &&
        currentDevice == other.currentDevice &&
        email == other.email &&
        msg == other.msg &&
        loanAmt == other.loanAmt &&
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
                                        $jc($jc(0, name.hashCode),
                                            phone.hashCode),
                                        bank.hashCode),
                                    userId.hashCode),
                                createdTime.hashCode),
                            location.hashCode),
                        currentDevice.hashCode),
                    email.hashCode),
                msg.hashCode),
            loanAmt.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Loan2Record')
          ..add('name', name)
          ..add('phone', phone)
          ..add('bank', bank)
          ..add('userId', userId)
          ..add('createdTime', createdTime)
          ..add('location', location)
          ..add('currentDevice', currentDevice)
          ..add('email', email)
          ..add('msg', msg)
          ..add('loanAmt', loanAmt)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class Loan2RecordBuilder implements Builder<Loan2Record, Loan2RecordBuilder> {
  _$Loan2Record? _$v;

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

  String? _currentDevice;
  String? get currentDevice => _$this._currentDevice;
  set currentDevice(String? currentDevice) =>
      _$this._currentDevice = currentDevice;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _msg;
  String? get msg => _$this._msg;
  set msg(String? msg) => _$this._msg = msg;

  String? _loanAmt;
  String? get loanAmt => _$this._loanAmt;
  set loanAmt(String? loanAmt) => _$this._loanAmt = loanAmt;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  Loan2RecordBuilder() {
    Loan2Record._initializeBuilder(this);
  }

  Loan2RecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _phone = $v.phone;
      _bank = $v.bank;
      _userId = $v.userId;
      _createdTime = $v.createdTime;
      _location = $v.location;
      _currentDevice = $v.currentDevice;
      _email = $v.email;
      _msg = $v.msg;
      _loanAmt = $v.loanAmt;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Loan2Record other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Loan2Record;
  }

  @override
  void update(void Function(Loan2RecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Loan2Record build() => _build();

  _$Loan2Record _build() {
    final _$result = _$v ??
        new _$Loan2Record._(
            name: name,
            phone: phone,
            bank: bank,
            userId: userId,
            createdTime: createdTime,
            location: location,
            currentDevice: currentDevice,
            email: email,
            msg: msg,
            loanAmt: loanAmt,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
