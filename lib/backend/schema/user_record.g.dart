// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UserRecord> _$userRecordSerializer = new _$UserRecordSerializer();

class _$UserRecordSerializer implements StructuredSerializer<UserRecord> {
  @override
  final Iterable<Type> types = const [UserRecord, _$UserRecord];
  @override
  final String wireName = 'UserRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, UserRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.password;
    if (value != null) {
      result
        ..add('password')
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
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phone_number')
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
    value = object.displayName;
    if (value != null) {
      result
        ..add('display_name')
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
    value = object.likedProperties;
    if (value != null) {
      result
        ..add('liked_properties')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.currentLocation;
    if (value != null) {
      result
        ..add('current_location')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LatLng)));
    }
    value = object.loginAttempts;
    if (value != null) {
      result
        ..add('login_attempts')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.android;
    if (value != null) {
      result
        ..add('android')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.ios;
    if (value != null) {
      result
        ..add('ios')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.prefGiven;
    if (value != null) {
      result
        ..add('pref_given')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.emailConsent;
    if (value != null) {
      result
        ..add('email_consent')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.whatsappConsent;
    if (value != null) {
      result
        ..add('whatsapp_consent')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.photoUrl;
    if (value != null) {
      result
        ..add('photo_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
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
    value = object.phoneVerified;
    if (value != null) {
      result
        ..add('phone_verified')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.pincode;
    if (value != null) {
      result
        ..add('pincode')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.cart;
    if (value != null) {
      result
        ..add('cart')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.eoiExpressed;
    if (value != null) {
      result
        ..add('eoi_expressed')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(int)])));
    }
    value = object.cartAmt;
    if (value != null) {
      result
        ..add('cart_amt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.status;
    if (value != null) {
      result
        ..add('status')
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
  UserRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'phone_number':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'display_name':
          result.displayName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'liked_properties':
          result.likedProperties.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'current_location':
          result.currentLocation = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng?;
          break;
        case 'login_attempts':
          result.loginAttempts = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'android':
          result.android = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'ios':
          result.ios = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'pref_given':
          result.prefGiven = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'email_consent':
          result.emailConsent = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'whatsapp_consent':
          result.whatsappConsent = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'photo_url':
          result.photoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
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
        case 'budgetFrom':
          result.budgetFrom = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'budgetTo':
          result.budgetTo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'phone_verified':
          result.phoneVerified = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'pincode':
          result.pincode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'cart':
          result.cart.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'eoi_expressed':
          result.eoiExpressed.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(int)]))!
              as BuiltList<Object?>);
          break;
        case 'cart_amt':
          result.cartAmt = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
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

class _$UserRecord extends UserRecord {
  @override
  final String? password;
  @override
  final String? email;
  @override
  final String? phoneNumber;
  @override
  final DateTime? createdTime;
  @override
  final String? displayName;
  @override
  final String? uid;
  @override
  final BuiltList<String>? likedProperties;
  @override
  final LatLng? currentLocation;
  @override
  final int? loginAttempts;
  @override
  final bool? android;
  @override
  final bool? ios;
  @override
  final bool? prefGiven;
  @override
  final bool? emailConsent;
  @override
  final bool? whatsappConsent;
  @override
  final String? photoUrl;
  @override
  final BuiltList<String>? cities;
  @override
  final BuiltList<String>? propertyType;
  @override
  final String? budgetFrom;
  @override
  final String? budgetTo;
  @override
  final bool? phoneVerified;
  @override
  final String? pincode;
  @override
  final BuiltList<String>? cart;
  @override
  final BuiltList<int>? eoiExpressed;
  @override
  final double? cartAmt;
  @override
  final String? status;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$UserRecord([void Function(UserRecordBuilder)? updates]) =>
      (new UserRecordBuilder()..update(updates))._build();

  _$UserRecord._(
      {this.password,
      this.email,
      this.phoneNumber,
      this.createdTime,
      this.displayName,
      this.uid,
      this.likedProperties,
      this.currentLocation,
      this.loginAttempts,
      this.android,
      this.ios,
      this.prefGiven,
      this.emailConsent,
      this.whatsappConsent,
      this.photoUrl,
      this.cities,
      this.propertyType,
      this.budgetFrom,
      this.budgetTo,
      this.phoneVerified,
      this.pincode,
      this.cart,
      this.eoiExpressed,
      this.cartAmt,
      this.status,
      this.ffRef})
      : super._();

  @override
  UserRecord rebuild(void Function(UserRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserRecordBuilder toBuilder() => new UserRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserRecord &&
        password == other.password &&
        email == other.email &&
        phoneNumber == other.phoneNumber &&
        createdTime == other.createdTime &&
        displayName == other.displayName &&
        uid == other.uid &&
        likedProperties == other.likedProperties &&
        currentLocation == other.currentLocation &&
        loginAttempts == other.loginAttempts &&
        android == other.android &&
        ios == other.ios &&
        prefGiven == other.prefGiven &&
        emailConsent == other.emailConsent &&
        whatsappConsent == other.whatsappConsent &&
        photoUrl == other.photoUrl &&
        cities == other.cities &&
        propertyType == other.propertyType &&
        budgetFrom == other.budgetFrom &&
        budgetTo == other.budgetTo &&
        phoneVerified == other.phoneVerified &&
        pincode == other.pincode &&
        cart == other.cart &&
        eoiExpressed == other.eoiExpressed &&
        cartAmt == other.cartAmt &&
        status == other.status &&
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
                                                                            $jc($jc($jc($jc($jc($jc($jc($jc(0, password.hashCode), email.hashCode), phoneNumber.hashCode), createdTime.hashCode), displayName.hashCode), uid.hashCode), likedProperties.hashCode),
                                                                                currentLocation.hashCode),
                                                                            loginAttempts.hashCode),
                                                                        android.hashCode),
                                                                    ios.hashCode),
                                                                prefGiven.hashCode),
                                                            emailConsent.hashCode),
                                                        whatsappConsent.hashCode),
                                                    photoUrl.hashCode),
                                                cities.hashCode),
                                            propertyType.hashCode),
                                        budgetFrom.hashCode),
                                    budgetTo.hashCode),
                                phoneVerified.hashCode),
                            pincode.hashCode),
                        cart.hashCode),
                    eoiExpressed.hashCode),
                cartAmt.hashCode),
            status.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserRecord')
          ..add('password', password)
          ..add('email', email)
          ..add('phoneNumber', phoneNumber)
          ..add('createdTime', createdTime)
          ..add('displayName', displayName)
          ..add('uid', uid)
          ..add('likedProperties', likedProperties)
          ..add('currentLocation', currentLocation)
          ..add('loginAttempts', loginAttempts)
          ..add('android', android)
          ..add('ios', ios)
          ..add('prefGiven', prefGiven)
          ..add('emailConsent', emailConsent)
          ..add('whatsappConsent', whatsappConsent)
          ..add('photoUrl', photoUrl)
          ..add('cities', cities)
          ..add('propertyType', propertyType)
          ..add('budgetFrom', budgetFrom)
          ..add('budgetTo', budgetTo)
          ..add('phoneVerified', phoneVerified)
          ..add('pincode', pincode)
          ..add('cart', cart)
          ..add('eoiExpressed', eoiExpressed)
          ..add('cartAmt', cartAmt)
          ..add('status', status)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class UserRecordBuilder implements Builder<UserRecord, UserRecordBuilder> {
  _$UserRecord? _$v;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  DateTime? _createdTime;
  DateTime? get createdTime => _$this._createdTime;
  set createdTime(DateTime? createdTime) => _$this._createdTime = createdTime;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  ListBuilder<String>? _likedProperties;
  ListBuilder<String> get likedProperties =>
      _$this._likedProperties ??= new ListBuilder<String>();
  set likedProperties(ListBuilder<String>? likedProperties) =>
      _$this._likedProperties = likedProperties;

  LatLng? _currentLocation;
  LatLng? get currentLocation => _$this._currentLocation;
  set currentLocation(LatLng? currentLocation) =>
      _$this._currentLocation = currentLocation;

  int? _loginAttempts;
  int? get loginAttempts => _$this._loginAttempts;
  set loginAttempts(int? loginAttempts) =>
      _$this._loginAttempts = loginAttempts;

  bool? _android;
  bool? get android => _$this._android;
  set android(bool? android) => _$this._android = android;

  bool? _ios;
  bool? get ios => _$this._ios;
  set ios(bool? ios) => _$this._ios = ios;

  bool? _prefGiven;
  bool? get prefGiven => _$this._prefGiven;
  set prefGiven(bool? prefGiven) => _$this._prefGiven = prefGiven;

  bool? _emailConsent;
  bool? get emailConsent => _$this._emailConsent;
  set emailConsent(bool? emailConsent) => _$this._emailConsent = emailConsent;

  bool? _whatsappConsent;
  bool? get whatsappConsent => _$this._whatsappConsent;
  set whatsappConsent(bool? whatsappConsent) =>
      _$this._whatsappConsent = whatsappConsent;

  String? _photoUrl;
  String? get photoUrl => _$this._photoUrl;
  set photoUrl(String? photoUrl) => _$this._photoUrl = photoUrl;

  ListBuilder<String>? _cities;
  ListBuilder<String> get cities =>
      _$this._cities ??= new ListBuilder<String>();
  set cities(ListBuilder<String>? cities) => _$this._cities = cities;

  ListBuilder<String>? _propertyType;
  ListBuilder<String> get propertyType =>
      _$this._propertyType ??= new ListBuilder<String>();
  set propertyType(ListBuilder<String>? propertyType) =>
      _$this._propertyType = propertyType;

  String? _budgetFrom;
  String? get budgetFrom => _$this._budgetFrom;
  set budgetFrom(String? budgetFrom) => _$this._budgetFrom = budgetFrom;

  String? _budgetTo;
  String? get budgetTo => _$this._budgetTo;
  set budgetTo(String? budgetTo) => _$this._budgetTo = budgetTo;

  bool? _phoneVerified;
  bool? get phoneVerified => _$this._phoneVerified;
  set phoneVerified(bool? phoneVerified) =>
      _$this._phoneVerified = phoneVerified;

  String? _pincode;
  String? get pincode => _$this._pincode;
  set pincode(String? pincode) => _$this._pincode = pincode;

  ListBuilder<String>? _cart;
  ListBuilder<String> get cart => _$this._cart ??= new ListBuilder<String>();
  set cart(ListBuilder<String>? cart) => _$this._cart = cart;

  ListBuilder<int>? _eoiExpressed;
  ListBuilder<int> get eoiExpressed =>
      _$this._eoiExpressed ??= new ListBuilder<int>();
  set eoiExpressed(ListBuilder<int>? eoiExpressed) =>
      _$this._eoiExpressed = eoiExpressed;

  double? _cartAmt;
  double? get cartAmt => _$this._cartAmt;
  set cartAmt(double? cartAmt) => _$this._cartAmt = cartAmt;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  UserRecordBuilder() {
    UserRecord._initializeBuilder(this);
  }

  UserRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _password = $v.password;
      _email = $v.email;
      _phoneNumber = $v.phoneNumber;
      _createdTime = $v.createdTime;
      _displayName = $v.displayName;
      _uid = $v.uid;
      _likedProperties = $v.likedProperties?.toBuilder();
      _currentLocation = $v.currentLocation;
      _loginAttempts = $v.loginAttempts;
      _android = $v.android;
      _ios = $v.ios;
      _prefGiven = $v.prefGiven;
      _emailConsent = $v.emailConsent;
      _whatsappConsent = $v.whatsappConsent;
      _photoUrl = $v.photoUrl;
      _cities = $v.cities?.toBuilder();
      _propertyType = $v.propertyType?.toBuilder();
      _budgetFrom = $v.budgetFrom;
      _budgetTo = $v.budgetTo;
      _phoneVerified = $v.phoneVerified;
      _pincode = $v.pincode;
      _cart = $v.cart?.toBuilder();
      _eoiExpressed = $v.eoiExpressed?.toBuilder();
      _cartAmt = $v.cartAmt;
      _status = $v.status;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserRecord;
  }

  @override
  void update(void Function(UserRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserRecord build() => _build();

  _$UserRecord _build() {
    _$UserRecord _$result;
    try {
      _$result = _$v ??
          new _$UserRecord._(
              password: password,
              email: email,
              phoneNumber: phoneNumber,
              createdTime: createdTime,
              displayName: displayName,
              uid: uid,
              likedProperties: _likedProperties?.build(),
              currentLocation: currentLocation,
              loginAttempts: loginAttempts,
              android: android,
              ios: ios,
              prefGiven: prefGiven,
              emailConsent: emailConsent,
              whatsappConsent: whatsappConsent,
              photoUrl: photoUrl,
              cities: _cities?.build(),
              propertyType: _propertyType?.build(),
              budgetFrom: budgetFrom,
              budgetTo: budgetTo,
              phoneVerified: phoneVerified,
              pincode: pincode,
              cart: _cart?.build(),
              eoiExpressed: _eoiExpressed?.build(),
              cartAmt: cartAmt,
              status: status,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'likedProperties';
        _likedProperties?.build();

        _$failedField = 'cities';
        _cities?.build();
        _$failedField = 'propertyType';
        _propertyType?.build();

        _$failedField = 'cart';
        _cart?.build();
        _$failedField = 'eoiExpressed';
        _eoiExpressed?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UserRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
