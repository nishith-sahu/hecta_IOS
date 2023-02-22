// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expression_of_interest_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ExpressionOfInterestRecord> _$expressionOfInterestRecordSerializer =
    new _$ExpressionOfInterestRecordSerializer();

class _$ExpressionOfInterestRecordSerializer
    implements StructuredSerializer<ExpressionOfInterestRecord> {
  @override
  final Iterable<Type> types = const [
    ExpressionOfInterestRecord,
    _$ExpressionOfInterestRecord
  ];
  @override
  final String wireName = 'ExpressionOfInterestRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, ExpressionOfInterestRecord object,
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
    value = object.address;
    if (value != null) {
      result
        ..add('address')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phone_number')
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
    value = object.message;
    if (value != null) {
      result
        ..add('message')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.employed;
    if (value != null) {
      result
        ..add('employed')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.loan;
    if (value != null) {
      result
        ..add('loan')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.aadharCard;
    if (value != null) {
      result
        ..add('aadhar_card')
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
  ExpressionOfInterestRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ExpressionOfInterestRecordBuilder();

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
        case 'address':
          result.address = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'phone_number':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
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
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'propID':
          result.propID = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'rprice':
          result.rprice = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'employed':
          result.employed = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'loan':
          result.loan = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'aadhar_card':
          result.aadharCard = serializers.deserialize(value,
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

class _$ExpressionOfInterestRecord extends ExpressionOfInterestRecord {
  @override
  final String? name;
  @override
  final String? address;
  @override
  final String? phoneNumber;
  @override
  final String? email;
  @override
  final String? userId;
  @override
  final LatLng? location;
  @override
  final DateTime? createdTime;
  @override
  final String? message;
  @override
  final int? propID;
  @override
  final int? rprice;
  @override
  final String? title;
  @override
  final String? employed;
  @override
  final String? loan;
  @override
  final String? aadharCard;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ExpressionOfInterestRecord(
          [void Function(ExpressionOfInterestRecordBuilder)? updates]) =>
      (new ExpressionOfInterestRecordBuilder()..update(updates))._build();

  _$ExpressionOfInterestRecord._(
      {this.name,
      this.address,
      this.phoneNumber,
      this.email,
      this.userId,
      this.location,
      this.createdTime,
      this.message,
      this.propID,
      this.rprice,
      this.title,
      this.employed,
      this.loan,
      this.aadharCard,
      this.ffRef})
      : super._();

  @override
  ExpressionOfInterestRecord rebuild(
          void Function(ExpressionOfInterestRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExpressionOfInterestRecordBuilder toBuilder() =>
      new ExpressionOfInterestRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExpressionOfInterestRecord &&
        name == other.name &&
        address == other.address &&
        phoneNumber == other.phoneNumber &&
        email == other.email &&
        userId == other.userId &&
        location == other.location &&
        createdTime == other.createdTime &&
        message == other.message &&
        propID == other.propID &&
        rprice == other.rprice &&
        title == other.title &&
        employed == other.employed &&
        loan == other.loan &&
        aadharCard == other.aadharCard &&
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
                                                            $jc(0,
                                                                name.hashCode),
                                                            address.hashCode),
                                                        phoneNumber.hashCode),
                                                    email.hashCode),
                                                userId.hashCode),
                                            location.hashCode),
                                        createdTime.hashCode),
                                    message.hashCode),
                                propID.hashCode),
                            rprice.hashCode),
                        title.hashCode),
                    employed.hashCode),
                loan.hashCode),
            aadharCard.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ExpressionOfInterestRecord')
          ..add('name', name)
          ..add('address', address)
          ..add('phoneNumber', phoneNumber)
          ..add('email', email)
          ..add('userId', userId)
          ..add('location', location)
          ..add('createdTime', createdTime)
          ..add('message', message)
          ..add('propID', propID)
          ..add('rprice', rprice)
          ..add('title', title)
          ..add('employed', employed)
          ..add('loan', loan)
          ..add('aadharCard', aadharCard)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ExpressionOfInterestRecordBuilder
    implements
        Builder<ExpressionOfInterestRecord, ExpressionOfInterestRecordBuilder> {
  _$ExpressionOfInterestRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _address;
  String? get address => _$this._address;
  set address(String? address) => _$this._address = address;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  LatLng? _location;
  LatLng? get location => _$this._location;
  set location(LatLng? location) => _$this._location = location;

  DateTime? _createdTime;
  DateTime? get createdTime => _$this._createdTime;
  set createdTime(DateTime? createdTime) => _$this._createdTime = createdTime;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  int? _propID;
  int? get propID => _$this._propID;
  set propID(int? propID) => _$this._propID = propID;

  int? _rprice;
  int? get rprice => _$this._rprice;
  set rprice(int? rprice) => _$this._rprice = rprice;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _employed;
  String? get employed => _$this._employed;
  set employed(String? employed) => _$this._employed = employed;

  String? _loan;
  String? get loan => _$this._loan;
  set loan(String? loan) => _$this._loan = loan;

  String? _aadharCard;
  String? get aadharCard => _$this._aadharCard;
  set aadharCard(String? aadharCard) => _$this._aadharCard = aadharCard;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ExpressionOfInterestRecordBuilder() {
    ExpressionOfInterestRecord._initializeBuilder(this);
  }

  ExpressionOfInterestRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _address = $v.address;
      _phoneNumber = $v.phoneNumber;
      _email = $v.email;
      _userId = $v.userId;
      _location = $v.location;
      _createdTime = $v.createdTime;
      _message = $v.message;
      _propID = $v.propID;
      _rprice = $v.rprice;
      _title = $v.title;
      _employed = $v.employed;
      _loan = $v.loan;
      _aadharCard = $v.aadharCard;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExpressionOfInterestRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ExpressionOfInterestRecord;
  }

  @override
  void update(void Function(ExpressionOfInterestRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ExpressionOfInterestRecord build() => _build();

  _$ExpressionOfInterestRecord _build() {
    final _$result = _$v ??
        new _$ExpressionOfInterestRecord._(
            name: name,
            address: address,
            phoneNumber: phoneNumber,
            email: email,
            userId: userId,
            location: location,
            createdTime: createdTime,
            message: message,
            propID: propID,
            rprice: rprice,
            title: title,
            employed: employed,
            loan: loan,
            aadharCard: aadharCard,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
