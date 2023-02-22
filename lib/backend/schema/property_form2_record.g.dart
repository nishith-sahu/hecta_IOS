// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'property_form2_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PropertyForm2Record> _$propertyForm2RecordSerializer =
    new _$PropertyForm2RecordSerializer();

class _$PropertyForm2RecordSerializer
    implements StructuredSerializer<PropertyForm2Record> {
  @override
  final Iterable<Type> types = const [
    PropertyForm2Record,
    _$PropertyForm2Record
  ];
  @override
  final String wireName = 'PropertyForm2Record';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, PropertyForm2Record object,
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
    value = object.passportSizePhoto;
    if (value != null) {
      result
        ..add('passport_size_photo')
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
    value = object.panCard;
    if (value != null) {
      result
        ..add('pan_card')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.addressProofType;
    if (value != null) {
      result
        ..add('address_proof_type')
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
    value = object.transactionDate;
    if (value != null) {
      result
        ..add('transaction_date')
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
    value = object.eMDCurrency;
    if (value != null) {
      result
        ..add('EMD_currency')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.transactionAmount;
    if (value != null) {
      result
        ..add('transaction_amount')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.transactionRefNumber;
    if (value != null) {
      result
        ..add('transaction_ref_number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.eMDPaymentProof;
    if (value != null) {
      result
        ..add('EMD_payment_proof')
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
    value = object.nameAsInBank;
    if (value != null) {
      result
        ..add('name_as_in_bank')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ifsc;
    if (value != null) {
      result
        ..add('IFSC')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.date;
    if (value != null) {
      result
        ..add('date')
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
    value = object.shareholding;
    if (value != null) {
      result
        ..add('shareholding')
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
    value = object.form1Ref;
    if (value != null) {
      result
        ..add('form1Ref')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.displayName;
    if (value != null) {
      result
        ..add('display_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.photoUrl;
    if (value != null) {
      result
        ..add('photo_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
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
  PropertyForm2Record deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PropertyForm2RecordBuilder();

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
        case 'passport_size_photo':
          result.passportSizePhoto = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'pan':
          result.pan = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'pan_card':
          result.panCard = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'address_proof_type':
          result.addressProofType = serializers.deserialize(value,
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
        case 'transaction_date':
          result.transactionDate = serializers.deserialize(value,
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
        case 'EMD_currency':
          result.eMDCurrency = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'transaction_amount':
          result.transactionAmount = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'transaction_ref_number':
          result.transactionRefNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'EMD_payment_proof':
          result.eMDPaymentProof = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'bank_account':
          result.bankAccount = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'name_as_in_bank':
          result.nameAsInBank = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'IFSC':
          result.ifsc = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'date':
          result.date = serializers.deserialize(value,
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
        case 'shareholding':
          result.shareholding = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'prop_id':
          result.propId = serializers.deserialize(value,
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
        case 'form1Ref':
          result.form1Ref = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'display_name':
          result.displayName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'photo_url':
          result.photoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'phone_number':
          result.phoneNumber = serializers.deserialize(value,
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

class _$PropertyForm2Record extends PropertyForm2Record {
  @override
  final bool? submitted;
  @override
  final String? passportSizePhoto;
  @override
  final String? pan;
  @override
  final String? panCard;
  @override
  final String? addressProofType;
  @override
  final String? addressProof;
  @override
  final String? biddingAs;
  @override
  final String? transactionDate;
  @override
  final String? transactionTime;
  @override
  final String? paymentMethod;
  @override
  final String? eMDCurrency;
  @override
  final String? transactionAmount;
  @override
  final String? transactionRefNumber;
  @override
  final String? eMDPaymentProof;
  @override
  final String? bankAccount;
  @override
  final String? nameAsInBank;
  @override
  final String? ifsc;
  @override
  final String? date;
  @override
  final DateTime? createdTime;
  @override
  final DateTime? updatedTime;
  @override
  final String? shareholding;
  @override
  final String? propId;
  @override
  final String? userId;
  @override
  final LatLng? location;
  @override
  final DocumentReference<Object?>? form1Ref;
  @override
  final String? email;
  @override
  final String? displayName;
  @override
  final String? photoUrl;
  @override
  final String? uid;
  @override
  final String? phoneNumber;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$PropertyForm2Record(
          [void Function(PropertyForm2RecordBuilder)? updates]) =>
      (new PropertyForm2RecordBuilder()..update(updates))._build();

  _$PropertyForm2Record._(
      {this.submitted,
      this.passportSizePhoto,
      this.pan,
      this.panCard,
      this.addressProofType,
      this.addressProof,
      this.biddingAs,
      this.transactionDate,
      this.transactionTime,
      this.paymentMethod,
      this.eMDCurrency,
      this.transactionAmount,
      this.transactionRefNumber,
      this.eMDPaymentProof,
      this.bankAccount,
      this.nameAsInBank,
      this.ifsc,
      this.date,
      this.createdTime,
      this.updatedTime,
      this.shareholding,
      this.propId,
      this.userId,
      this.location,
      this.form1Ref,
      this.email,
      this.displayName,
      this.photoUrl,
      this.uid,
      this.phoneNumber,
      this.ffRef})
      : super._();

  @override
  PropertyForm2Record rebuild(
          void Function(PropertyForm2RecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PropertyForm2RecordBuilder toBuilder() =>
      new PropertyForm2RecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PropertyForm2Record &&
        submitted == other.submitted &&
        passportSizePhoto == other.passportSizePhoto &&
        pan == other.pan &&
        panCard == other.panCard &&
        addressProofType == other.addressProofType &&
        addressProof == other.addressProof &&
        biddingAs == other.biddingAs &&
        transactionDate == other.transactionDate &&
        transactionTime == other.transactionTime &&
        paymentMethod == other.paymentMethod &&
        eMDCurrency == other.eMDCurrency &&
        transactionAmount == other.transactionAmount &&
        transactionRefNumber == other.transactionRefNumber &&
        eMDPaymentProof == other.eMDPaymentProof &&
        bankAccount == other.bankAccount &&
        nameAsInBank == other.nameAsInBank &&
        ifsc == other.ifsc &&
        date == other.date &&
        createdTime == other.createdTime &&
        updatedTime == other.updatedTime &&
        shareholding == other.shareholding &&
        propId == other.propId &&
        userId == other.userId &&
        location == other.location &&
        form1Ref == other.form1Ref &&
        email == other.email &&
        displayName == other.displayName &&
        photoUrl == other.photoUrl &&
        uid == other.uid &&
        phoneNumber == other.phoneNumber &&
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
                                                                            $jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc(0, submitted.hashCode), passportSizePhoto.hashCode), pan.hashCode), panCard.hashCode), addressProofType.hashCode), addressProof.hashCode), biddingAs.hashCode), transactionDate.hashCode), transactionTime.hashCode), paymentMethod.hashCode), eMDCurrency.hashCode), transactionAmount.hashCode),
                                                                                transactionRefNumber.hashCode),
                                                                            eMDPaymentProof.hashCode),
                                                                        bankAccount.hashCode),
                                                                    nameAsInBank.hashCode),
                                                                ifsc.hashCode),
                                                            date.hashCode),
                                                        createdTime.hashCode),
                                                    updatedTime.hashCode),
                                                shareholding.hashCode),
                                            propId.hashCode),
                                        userId.hashCode),
                                    location.hashCode),
                                form1Ref.hashCode),
                            email.hashCode),
                        displayName.hashCode),
                    photoUrl.hashCode),
                uid.hashCode),
            phoneNumber.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PropertyForm2Record')
          ..add('submitted', submitted)
          ..add('passportSizePhoto', passportSizePhoto)
          ..add('pan', pan)
          ..add('panCard', panCard)
          ..add('addressProofType', addressProofType)
          ..add('addressProof', addressProof)
          ..add('biddingAs', biddingAs)
          ..add('transactionDate', transactionDate)
          ..add('transactionTime', transactionTime)
          ..add('paymentMethod', paymentMethod)
          ..add('eMDCurrency', eMDCurrency)
          ..add('transactionAmount', transactionAmount)
          ..add('transactionRefNumber', transactionRefNumber)
          ..add('eMDPaymentProof', eMDPaymentProof)
          ..add('bankAccount', bankAccount)
          ..add('nameAsInBank', nameAsInBank)
          ..add('ifsc', ifsc)
          ..add('date', date)
          ..add('createdTime', createdTime)
          ..add('updatedTime', updatedTime)
          ..add('shareholding', shareholding)
          ..add('propId', propId)
          ..add('userId', userId)
          ..add('location', location)
          ..add('form1Ref', form1Ref)
          ..add('email', email)
          ..add('displayName', displayName)
          ..add('photoUrl', photoUrl)
          ..add('uid', uid)
          ..add('phoneNumber', phoneNumber)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class PropertyForm2RecordBuilder
    implements Builder<PropertyForm2Record, PropertyForm2RecordBuilder> {
  _$PropertyForm2Record? _$v;

  bool? _submitted;
  bool? get submitted => _$this._submitted;
  set submitted(bool? submitted) => _$this._submitted = submitted;

  String? _passportSizePhoto;
  String? get passportSizePhoto => _$this._passportSizePhoto;
  set passportSizePhoto(String? passportSizePhoto) =>
      _$this._passportSizePhoto = passportSizePhoto;

  String? _pan;
  String? get pan => _$this._pan;
  set pan(String? pan) => _$this._pan = pan;

  String? _panCard;
  String? get panCard => _$this._panCard;
  set panCard(String? panCard) => _$this._panCard = panCard;

  String? _addressProofType;
  String? get addressProofType => _$this._addressProofType;
  set addressProofType(String? addressProofType) =>
      _$this._addressProofType = addressProofType;

  String? _addressProof;
  String? get addressProof => _$this._addressProof;
  set addressProof(String? addressProof) => _$this._addressProof = addressProof;

  String? _biddingAs;
  String? get biddingAs => _$this._biddingAs;
  set biddingAs(String? biddingAs) => _$this._biddingAs = biddingAs;

  String? _transactionDate;
  String? get transactionDate => _$this._transactionDate;
  set transactionDate(String? transactionDate) =>
      _$this._transactionDate = transactionDate;

  String? _transactionTime;
  String? get transactionTime => _$this._transactionTime;
  set transactionTime(String? transactionTime) =>
      _$this._transactionTime = transactionTime;

  String? _paymentMethod;
  String? get paymentMethod => _$this._paymentMethod;
  set paymentMethod(String? paymentMethod) =>
      _$this._paymentMethod = paymentMethod;

  String? _eMDCurrency;
  String? get eMDCurrency => _$this._eMDCurrency;
  set eMDCurrency(String? eMDCurrency) => _$this._eMDCurrency = eMDCurrency;

  String? _transactionAmount;
  String? get transactionAmount => _$this._transactionAmount;
  set transactionAmount(String? transactionAmount) =>
      _$this._transactionAmount = transactionAmount;

  String? _transactionRefNumber;
  String? get transactionRefNumber => _$this._transactionRefNumber;
  set transactionRefNumber(String? transactionRefNumber) =>
      _$this._transactionRefNumber = transactionRefNumber;

  String? _eMDPaymentProof;
  String? get eMDPaymentProof => _$this._eMDPaymentProof;
  set eMDPaymentProof(String? eMDPaymentProof) =>
      _$this._eMDPaymentProof = eMDPaymentProof;

  String? _bankAccount;
  String? get bankAccount => _$this._bankAccount;
  set bankAccount(String? bankAccount) => _$this._bankAccount = bankAccount;

  String? _nameAsInBank;
  String? get nameAsInBank => _$this._nameAsInBank;
  set nameAsInBank(String? nameAsInBank) => _$this._nameAsInBank = nameAsInBank;

  String? _ifsc;
  String? get ifsc => _$this._ifsc;
  set ifsc(String? ifsc) => _$this._ifsc = ifsc;

  String? _date;
  String? get date => _$this._date;
  set date(String? date) => _$this._date = date;

  DateTime? _createdTime;
  DateTime? get createdTime => _$this._createdTime;
  set createdTime(DateTime? createdTime) => _$this._createdTime = createdTime;

  DateTime? _updatedTime;
  DateTime? get updatedTime => _$this._updatedTime;
  set updatedTime(DateTime? updatedTime) => _$this._updatedTime = updatedTime;

  String? _shareholding;
  String? get shareholding => _$this._shareholding;
  set shareholding(String? shareholding) => _$this._shareholding = shareholding;

  String? _propId;
  String? get propId => _$this._propId;
  set propId(String? propId) => _$this._propId = propId;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  LatLng? _location;
  LatLng? get location => _$this._location;
  set location(LatLng? location) => _$this._location = location;

  DocumentReference<Object?>? _form1Ref;
  DocumentReference<Object?>? get form1Ref => _$this._form1Ref;
  set form1Ref(DocumentReference<Object?>? form1Ref) =>
      _$this._form1Ref = form1Ref;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  String? _photoUrl;
  String? get photoUrl => _$this._photoUrl;
  set photoUrl(String? photoUrl) => _$this._photoUrl = photoUrl;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  PropertyForm2RecordBuilder() {
    PropertyForm2Record._initializeBuilder(this);
  }

  PropertyForm2RecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _submitted = $v.submitted;
      _passportSizePhoto = $v.passportSizePhoto;
      _pan = $v.pan;
      _panCard = $v.panCard;
      _addressProofType = $v.addressProofType;
      _addressProof = $v.addressProof;
      _biddingAs = $v.biddingAs;
      _transactionDate = $v.transactionDate;
      _transactionTime = $v.transactionTime;
      _paymentMethod = $v.paymentMethod;
      _eMDCurrency = $v.eMDCurrency;
      _transactionAmount = $v.transactionAmount;
      _transactionRefNumber = $v.transactionRefNumber;
      _eMDPaymentProof = $v.eMDPaymentProof;
      _bankAccount = $v.bankAccount;
      _nameAsInBank = $v.nameAsInBank;
      _ifsc = $v.ifsc;
      _date = $v.date;
      _createdTime = $v.createdTime;
      _updatedTime = $v.updatedTime;
      _shareholding = $v.shareholding;
      _propId = $v.propId;
      _userId = $v.userId;
      _location = $v.location;
      _form1Ref = $v.form1Ref;
      _email = $v.email;
      _displayName = $v.displayName;
      _photoUrl = $v.photoUrl;
      _uid = $v.uid;
      _phoneNumber = $v.phoneNumber;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PropertyForm2Record other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PropertyForm2Record;
  }

  @override
  void update(void Function(PropertyForm2RecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PropertyForm2Record build() => _build();

  _$PropertyForm2Record _build() {
    final _$result = _$v ??
        new _$PropertyForm2Record._(
            submitted: submitted,
            passportSizePhoto: passportSizePhoto,
            pan: pan,
            panCard: panCard,
            addressProofType: addressProofType,
            addressProof: addressProof,
            biddingAs: biddingAs,
            transactionDate: transactionDate,
            transactionTime: transactionTime,
            paymentMethod: paymentMethod,
            eMDCurrency: eMDCurrency,
            transactionAmount: transactionAmount,
            transactionRefNumber: transactionRefNumber,
            eMDPaymentProof: eMDPaymentProof,
            bankAccount: bankAccount,
            nameAsInBank: nameAsInBank,
            ifsc: ifsc,
            date: date,
            createdTime: createdTime,
            updatedTime: updatedTime,
            shareholding: shareholding,
            propId: propId,
            userId: userId,
            location: location,
            form1Ref: form1Ref,
            email: email,
            displayName: displayName,
            photoUrl: photoUrl,
            uid: uid,
            phoneNumber: phoneNumber,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
