import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'user_record.g.dart';

abstract class UserRecord implements Built<UserRecord, UserRecordBuilder> {
  static Serializer<UserRecord> get serializer => _$userRecordSerializer;

  String? get password;

  String? get email;

  @BuiltValueField(wireName: 'phone_number')
  String? get phoneNumber;

  @BuiltValueField(wireName: 'created_time')
  DateTime? get createdTime;

  @BuiltValueField(wireName: 'display_name')
  String? get displayName;

  String? get uid;

  @BuiltValueField(wireName: 'liked_properties')
  BuiltList<String>? get likedProperties;

  @BuiltValueField(wireName: 'current_location')
  LatLng? get currentLocation;

  @BuiltValueField(wireName: 'login_attempts')
  int? get loginAttempts;

  bool? get android;

  bool? get ios;

  @BuiltValueField(wireName: 'pref_given')
  bool? get prefGiven;

  @BuiltValueField(wireName: 'email_consent')
  bool? get emailConsent;

  @BuiltValueField(wireName: 'whatsapp_consent')
  bool? get whatsappConsent;

  @BuiltValueField(wireName: 'photo_url')
  String? get photoUrl;

  BuiltList<String>? get cities;

  @BuiltValueField(wireName: 'property_type')
  BuiltList<String>? get propertyType;

  String? get budgetFrom;

  String? get budgetTo;

  @BuiltValueField(wireName: 'phone_verified')
  bool? get phoneVerified;

  String? get pincode;

  BuiltList<String>? get cart;

  @BuiltValueField(wireName: 'eoi_expressed')
  BuiltList<int>? get eoiExpressed;

  @BuiltValueField(wireName: 'cart_amt')
  double? get cartAmt;

  String? get status;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(UserRecordBuilder builder) => builder
    ..password = ''
    ..email = ''
    ..phoneNumber = ''
    ..displayName = ''
    ..uid = ''
    ..likedProperties = ListBuilder()
    ..loginAttempts = 0
    ..android = false
    ..ios = false
    ..prefGiven = false
    ..emailConsent = false
    ..whatsappConsent = false
    ..photoUrl = ''
    ..cities = ListBuilder()
    ..propertyType = ListBuilder()
    ..budgetFrom = ''
    ..budgetTo = ''
    ..phoneVerified = false
    ..pincode = ''
    ..cart = ListBuilder()
    ..eoiExpressed = ListBuilder()
    ..cartAmt = 0.0
    ..status = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('User');

  static Stream<UserRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<UserRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  UserRecord._();
  factory UserRecord([void Function(UserRecordBuilder) updates]) = _$UserRecord;

  static UserRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createUserRecordData({
  String? password,
  String? email,
  String? phoneNumber,
  DateTime? createdTime,
  String? displayName,
  String? uid,
  LatLng? currentLocation,
  int? loginAttempts,
  bool? android,
  bool? ios,
  bool? prefGiven,
  bool? emailConsent,
  bool? whatsappConsent,
  String? photoUrl,
  String? budgetFrom,
  String? budgetTo,
  bool? phoneVerified,
  String? pincode,
  double? cartAmt,
  String? status,
}) {
  final firestoreData = serializers.toFirestore(
    UserRecord.serializer,
    UserRecord(
      (u) => u
        ..password = password
        ..email = email
        ..phoneNumber = phoneNumber
        ..createdTime = createdTime
        ..displayName = displayName
        ..uid = uid
        ..likedProperties = null
        ..currentLocation = currentLocation
        ..loginAttempts = loginAttempts
        ..android = android
        ..ios = ios
        ..prefGiven = prefGiven
        ..emailConsent = emailConsent
        ..whatsappConsent = whatsappConsent
        ..photoUrl = photoUrl
        ..cities = null
        ..propertyType = null
        ..budgetFrom = budgetFrom
        ..budgetTo = budgetTo
        ..phoneVerified = phoneVerified
        ..pincode = pincode
        ..cart = null
        ..eoiExpressed = null
        ..cartAmt = cartAmt
        ..status = status,
    ),
  );

  return firestoreData;
}
