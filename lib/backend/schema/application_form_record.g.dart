// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'application_form_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ApplicationFormRecord> _$applicationFormRecordSerializer =
    new _$ApplicationFormRecordSerializer();

class _$ApplicationFormRecordSerializer
    implements StructuredSerializer<ApplicationFormRecord> {
  @override
  final Iterable<Type> types = const [
    ApplicationFormRecord,
    _$ApplicationFormRecord
  ];
  @override
  final String wireName = 'ApplicationFormRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, ApplicationFormRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.propId;
    if (value != null) {
      result
        ..add('prop_id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.reservePrice;
    if (value != null) {
      result
        ..add('reserve_price')
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
    value = object.seller;
    if (value != null) {
      result
        ..add('seller')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
    value = object.fatherName;
    if (value != null) {
      result
        ..add('father_name')
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
        ..add('perm_add1')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.permAdd2;
    if (value != null) {
      result
        ..add('perm_add2')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.currAdd1;
    if (value != null) {
      result
        ..add('curr_add1')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.currAdd2;
    if (value != null) {
      result
        ..add('curr_add2')
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
    value = object.pan;
    if (value != null) {
      result
        ..add('pan')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.addressProof;
    if (value != null) {
      result
        ..add('address_proof')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.biddingAs;
    if (value != null) {
      result
        ..add('bidding_as')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.shareholding;
    if (value != null) {
      result
        ..add('shareholding')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.transactionTime;
    if (value != null) {
      result
        ..add('transaction_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.paymentMethod;
    if (value != null) {
      result
        ..add('payment_method')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.amount;
    if (value != null) {
      result
        ..add('amount')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.refNumber;
    if (value != null) {
      result
        ..add('ref_number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.emdProof;
    if (value != null) {
      result
        ..add('emd_proof')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.passportSizePhoto;
    if (value != null) {
      result
        ..add('passport_size_photo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.pancard;
    if (value != null) {
      result
        ..add('pancard')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.addressProofFile;
    if (value != null) {
      result
        ..add('address_proof_file')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.bankAccount;
    if (value != null) {
      result
        ..add('bank_account')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.nameInBank;
    if (value != null) {
      result
        ..add('name_in_bank')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ifsc;
    if (value != null) {
      result
        ..add('ifsc')
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
  ApplicationFormRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ApplicationFormRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'prop_id':
          result.propId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'reserve_price':
          result.reservePrice = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'seller':
          result.seller = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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
        case 'father_name':
          result.fatherName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'dob':
          result.dob = serializers.deserialize(value,
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
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'perm_add1':
          result.permAdd1 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'perm_add2':
          result.permAdd2 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'curr_add1':
          result.currAdd1 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'curr_add2':
          result.currAdd2 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'domicile':
          result.domicile = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'pan':
          result.pan = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'address_proof':
          result.addressProof = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'bidding_as':
          result.biddingAs = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'shareholding':
          result.shareholding = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'transaction_time':
          result.transactionTime = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'payment_method':
          result.paymentMethod = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'amount':
          result.amount = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'ref_number':
          result.refNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'emd_proof':
          result.emdProof = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'passport_size_photo':
          result.passportSizePhoto = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'pancard':
          result.pancard = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'address_proof_file':
          result.addressProofFile = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'bank_account':
          result.bankAccount = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'name_in_bank':
          result.nameInBank = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'ifsc':
          result.ifsc = serializers.deserialize(value,
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

class _$ApplicationFormRecord extends ApplicationFormRecord {
  @override
  final int? propId;
  @override
  final String? reservePrice;
  @override
  final String? title;
  @override
  final String? seller;
  @override
  final String? firstName;
  @override
  final String? middleName;
  @override
  final String? lastName;
  @override
  final String? fatherName;
  @override
  final String? dob;
  @override
  final String? phoneNumber;
  @override
  final String? email;
  @override
  final String? status;
  @override
  final String? permAdd1;
  @override
  final String? permAdd2;
  @override
  final String? currAdd1;
  @override
  final String? currAdd2;
  @override
  final String? domicile;
  @override
  final String? pan;
  @override
  final String? addressProof;
  @override
  final String? biddingAs;
  @override
  final String? shareholding;
  @override
  final String? transactionTime;
  @override
  final String? paymentMethod;
  @override
  final String? amount;
  @override
  final String? refNumber;
  @override
  final String? emdProof;
  @override
  final String? passportSizePhoto;
  @override
  final String? pancard;
  @override
  final String? addressProofFile;
  @override
  final String? bankAccount;
  @override
  final String? nameInBank;
  @override
  final String? ifsc;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ApplicationFormRecord(
          [void Function(ApplicationFormRecordBuilder)? updates]) =>
      (new ApplicationFormRecordBuilder()..update(updates))._build();

  _$ApplicationFormRecord._(
      {this.propId,
      this.reservePrice,
      this.title,
      this.seller,
      this.firstName,
      this.middleName,
      this.lastName,
      this.fatherName,
      this.dob,
      this.phoneNumber,
      this.email,
      this.status,
      this.permAdd1,
      this.permAdd2,
      this.currAdd1,
      this.currAdd2,
      this.domicile,
      this.pan,
      this.addressProof,
      this.biddingAs,
      this.shareholding,
      this.transactionTime,
      this.paymentMethod,
      this.amount,
      this.refNumber,
      this.emdProof,
      this.passportSizePhoto,
      this.pancard,
      this.addressProofFile,
      this.bankAccount,
      this.nameInBank,
      this.ifsc,
      this.ffRef})
      : super._();

  @override
  ApplicationFormRecord rebuild(
          void Function(ApplicationFormRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApplicationFormRecordBuilder toBuilder() =>
      new ApplicationFormRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApplicationFormRecord &&
        propId == other.propId &&
        reservePrice == other.reservePrice &&
        title == other.title &&
        seller == other.seller &&
        firstName == other.firstName &&
        middleName == other.middleName &&
        lastName == other.lastName &&
        fatherName == other.fatherName &&
        dob == other.dob &&
        phoneNumber == other.phoneNumber &&
        email == other.email &&
        status == other.status &&
        permAdd1 == other.permAdd1 &&
        permAdd2 == other.permAdd2 &&
        currAdd1 == other.currAdd1 &&
        currAdd2 == other.currAdd2 &&
        domicile == other.domicile &&
        pan == other.pan &&
        addressProof == other.addressProof &&
        biddingAs == other.biddingAs &&
        shareholding == other.shareholding &&
        transactionTime == other.transactionTime &&
        paymentMethod == other.paymentMethod &&
        amount == other.amount &&
        refNumber == other.refNumber &&
        emdProof == other.emdProof &&
        passportSizePhoto == other.passportSizePhoto &&
        pancard == other.pancard &&
        addressProofFile == other.addressProofFile &&
        bankAccount == other.bankAccount &&
        nameInBank == other.nameInBank &&
        ifsc == other.ifsc &&
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
                                                                            $jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc(0, propId.hashCode), reservePrice.hashCode), title.hashCode), seller.hashCode), firstName.hashCode), middleName.hashCode), lastName.hashCode), fatherName.hashCode), dob.hashCode), phoneNumber.hashCode), email.hashCode), status.hashCode), permAdd1.hashCode), permAdd2.hashCode),
                                                                                currAdd1.hashCode),
                                                                            currAdd2.hashCode),
                                                                        domicile.hashCode),
                                                                    pan.hashCode),
                                                                addressProof.hashCode),
                                                            biddingAs.hashCode),
                                                        shareholding.hashCode),
                                                    transactionTime.hashCode),
                                                paymentMethod.hashCode),
                                            amount.hashCode),
                                        refNumber.hashCode),
                                    emdProof.hashCode),
                                passportSizePhoto.hashCode),
                            pancard.hashCode),
                        addressProofFile.hashCode),
                    bankAccount.hashCode),
                nameInBank.hashCode),
            ifsc.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ApplicationFormRecord')
          ..add('propId', propId)
          ..add('reservePrice', reservePrice)
          ..add('title', title)
          ..add('seller', seller)
          ..add('firstName', firstName)
          ..add('middleName', middleName)
          ..add('lastName', lastName)
          ..add('fatherName', fatherName)
          ..add('dob', dob)
          ..add('phoneNumber', phoneNumber)
          ..add('email', email)
          ..add('status', status)
          ..add('permAdd1', permAdd1)
          ..add('permAdd2', permAdd2)
          ..add('currAdd1', currAdd1)
          ..add('currAdd2', currAdd2)
          ..add('domicile', domicile)
          ..add('pan', pan)
          ..add('addressProof', addressProof)
          ..add('biddingAs', biddingAs)
          ..add('shareholding', shareholding)
          ..add('transactionTime', transactionTime)
          ..add('paymentMethod', paymentMethod)
          ..add('amount', amount)
          ..add('refNumber', refNumber)
          ..add('emdProof', emdProof)
          ..add('passportSizePhoto', passportSizePhoto)
          ..add('pancard', pancard)
          ..add('addressProofFile', addressProofFile)
          ..add('bankAccount', bankAccount)
          ..add('nameInBank', nameInBank)
          ..add('ifsc', ifsc)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ApplicationFormRecordBuilder
    implements Builder<ApplicationFormRecord, ApplicationFormRecordBuilder> {
  _$ApplicationFormRecord? _$v;

  int? _propId;
  int? get propId => _$this._propId;
  set propId(int? propId) => _$this._propId = propId;

  String? _reservePrice;
  String? get reservePrice => _$this._reservePrice;
  set reservePrice(String? reservePrice) => _$this._reservePrice = reservePrice;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _seller;
  String? get seller => _$this._seller;
  set seller(String? seller) => _$this._seller = seller;

  String? _firstName;
  String? get firstName => _$this._firstName;
  set firstName(String? firstName) => _$this._firstName = firstName;

  String? _middleName;
  String? get middleName => _$this._middleName;
  set middleName(String? middleName) => _$this._middleName = middleName;

  String? _lastName;
  String? get lastName => _$this._lastName;
  set lastName(String? lastName) => _$this._lastName = lastName;

  String? _fatherName;
  String? get fatherName => _$this._fatherName;
  set fatherName(String? fatherName) => _$this._fatherName = fatherName;

  String? _dob;
  String? get dob => _$this._dob;
  set dob(String? dob) => _$this._dob = dob;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  String? _permAdd1;
  String? get permAdd1 => _$this._permAdd1;
  set permAdd1(String? permAdd1) => _$this._permAdd1 = permAdd1;

  String? _permAdd2;
  String? get permAdd2 => _$this._permAdd2;
  set permAdd2(String? permAdd2) => _$this._permAdd2 = permAdd2;

  String? _currAdd1;
  String? get currAdd1 => _$this._currAdd1;
  set currAdd1(String? currAdd1) => _$this._currAdd1 = currAdd1;

  String? _currAdd2;
  String? get currAdd2 => _$this._currAdd2;
  set currAdd2(String? currAdd2) => _$this._currAdd2 = currAdd2;

  String? _domicile;
  String? get domicile => _$this._domicile;
  set domicile(String? domicile) => _$this._domicile = domicile;

  String? _pan;
  String? get pan => _$this._pan;
  set pan(String? pan) => _$this._pan = pan;

  String? _addressProof;
  String? get addressProof => _$this._addressProof;
  set addressProof(String? addressProof) => _$this._addressProof = addressProof;

  String? _biddingAs;
  String? get biddingAs => _$this._biddingAs;
  set biddingAs(String? biddingAs) => _$this._biddingAs = biddingAs;

  String? _shareholding;
  String? get shareholding => _$this._shareholding;
  set shareholding(String? shareholding) => _$this._shareholding = shareholding;

  String? _transactionTime;
  String? get transactionTime => _$this._transactionTime;
  set transactionTime(String? transactionTime) =>
      _$this._transactionTime = transactionTime;

  String? _paymentMethod;
  String? get paymentMethod => _$this._paymentMethod;
  set paymentMethod(String? paymentMethod) =>
      _$this._paymentMethod = paymentMethod;

  String? _amount;
  String? get amount => _$this._amount;
  set amount(String? amount) => _$this._amount = amount;

  String? _refNumber;
  String? get refNumber => _$this._refNumber;
  set refNumber(String? refNumber) => _$this._refNumber = refNumber;

  String? _emdProof;
  String? get emdProof => _$this._emdProof;
  set emdProof(String? emdProof) => _$this._emdProof = emdProof;

  String? _passportSizePhoto;
  String? get passportSizePhoto => _$this._passportSizePhoto;
  set passportSizePhoto(String? passportSizePhoto) =>
      _$this._passportSizePhoto = passportSizePhoto;

  String? _pancard;
  String? get pancard => _$this._pancard;
  set pancard(String? pancard) => _$this._pancard = pancard;

  String? _addressProofFile;
  String? get addressProofFile => _$this._addressProofFile;
  set addressProofFile(String? addressProofFile) =>
      _$this._addressProofFile = addressProofFile;

  String? _bankAccount;
  String? get bankAccount => _$this._bankAccount;
  set bankAccount(String? bankAccount) => _$this._bankAccount = bankAccount;

  String? _nameInBank;
  String? get nameInBank => _$this._nameInBank;
  set nameInBank(String? nameInBank) => _$this._nameInBank = nameInBank;

  String? _ifsc;
  String? get ifsc => _$this._ifsc;
  set ifsc(String? ifsc) => _$this._ifsc = ifsc;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ApplicationFormRecordBuilder() {
    ApplicationFormRecord._initializeBuilder(this);
  }

  ApplicationFormRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _propId = $v.propId;
      _reservePrice = $v.reservePrice;
      _title = $v.title;
      _seller = $v.seller;
      _firstName = $v.firstName;
      _middleName = $v.middleName;
      _lastName = $v.lastName;
      _fatherName = $v.fatherName;
      _dob = $v.dob;
      _phoneNumber = $v.phoneNumber;
      _email = $v.email;
      _status = $v.status;
      _permAdd1 = $v.permAdd1;
      _permAdd2 = $v.permAdd2;
      _currAdd1 = $v.currAdd1;
      _currAdd2 = $v.currAdd2;
      _domicile = $v.domicile;
      _pan = $v.pan;
      _addressProof = $v.addressProof;
      _biddingAs = $v.biddingAs;
      _shareholding = $v.shareholding;
      _transactionTime = $v.transactionTime;
      _paymentMethod = $v.paymentMethod;
      _amount = $v.amount;
      _refNumber = $v.refNumber;
      _emdProof = $v.emdProof;
      _passportSizePhoto = $v.passportSizePhoto;
      _pancard = $v.pancard;
      _addressProofFile = $v.addressProofFile;
      _bankAccount = $v.bankAccount;
      _nameInBank = $v.nameInBank;
      _ifsc = $v.ifsc;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApplicationFormRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ApplicationFormRecord;
  }

  @override
  void update(void Function(ApplicationFormRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ApplicationFormRecord build() => _build();

  _$ApplicationFormRecord _build() {
    final _$result = _$v ??
        new _$ApplicationFormRecord._(
            propId: propId,
            reservePrice: reservePrice,
            title: title,
            seller: seller,
            firstName: firstName,
            middleName: middleName,
            lastName: lastName,
            fatherName: fatherName,
            dob: dob,
            phoneNumber: phoneNumber,
            email: email,
            status: status,
            permAdd1: permAdd1,
            permAdd2: permAdd2,
            currAdd1: currAdd1,
            currAdd2: currAdd2,
            domicile: domicile,
            pan: pan,
            addressProof: addressProof,
            biddingAs: biddingAs,
            shareholding: shareholding,
            transactionTime: transactionTime,
            paymentMethod: paymentMethod,
            amount: amount,
            refNumber: refNumber,
            emdProof: emdProof,
            passportSizePhoto: passportSizePhoto,
            pancard: pancard,
            addressProofFile: addressProofFile,
            bankAccount: bankAccount,
            nameInBank: nameInBank,
            ifsc: ifsc,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
