import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'property_form2_record.g.dart';

abstract class PropertyForm2Record
    implements Built<PropertyForm2Record, PropertyForm2RecordBuilder> {
  static Serializer<PropertyForm2Record> get serializer =>
      _$propertyForm2RecordSerializer;

  bool? get submitted;

  @BuiltValueField(wireName: 'passport_size_photo')
  String? get passportSizePhoto;

  String? get pan;

  @BuiltValueField(wireName: 'pan_card')
  String? get panCard;

  @BuiltValueField(wireName: 'address_proof_type')
  String? get addressProofType;

  @BuiltValueField(wireName: 'address_proof')
  String? get addressProof;

  @BuiltValueField(wireName: 'bidding_as')
  String? get biddingAs;

  @BuiltValueField(wireName: 'transaction_date')
  String? get transactionDate;

  @BuiltValueField(wireName: 'transaction_time')
  String? get transactionTime;

  @BuiltValueField(wireName: 'payment_method')
  String? get paymentMethod;

  @BuiltValueField(wireName: 'EMD_currency')
  String? get eMDCurrency;

  @BuiltValueField(wireName: 'transaction_amount')
  String? get transactionAmount;

  @BuiltValueField(wireName: 'transaction_ref_number')
  String? get transactionRefNumber;

  @BuiltValueField(wireName: 'EMD_payment_proof')
  String? get eMDPaymentProof;

  @BuiltValueField(wireName: 'bank_account')
  String? get bankAccount;

  @BuiltValueField(wireName: 'name_as_in_bank')
  String? get nameAsInBank;

  @BuiltValueField(wireName: 'IFSC')
  String? get ifsc;

  String? get date;

  @BuiltValueField(wireName: 'created_time')
  DateTime? get createdTime;

  @BuiltValueField(wireName: 'updated_time')
  DateTime? get updatedTime;

  String? get shareholding;

  @BuiltValueField(wireName: 'prop_id')
  String? get propId;

  @BuiltValueField(wireName: 'user_id')
  String? get userId;

  LatLng? get location;

  DocumentReference? get form1Ref;

  String? get email;

  @BuiltValueField(wireName: 'display_name')
  String? get displayName;

  @BuiltValueField(wireName: 'photo_url')
  String? get photoUrl;

  String? get uid;

  @BuiltValueField(wireName: 'phone_number')
  String? get phoneNumber;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(PropertyForm2RecordBuilder builder) => builder
    ..submitted = false
    ..passportSizePhoto = ''
    ..pan = ''
    ..panCard = ''
    ..addressProofType = ''
    ..addressProof = ''
    ..biddingAs = ''
    ..transactionDate = ''
    ..transactionTime = ''
    ..paymentMethod = ''
    ..eMDCurrency = ''
    ..transactionAmount = ''
    ..transactionRefNumber = ''
    ..eMDPaymentProof = ''
    ..bankAccount = ''
    ..nameAsInBank = ''
    ..ifsc = ''
    ..date = ''
    ..shareholding = ''
    ..propId = ''
    ..userId = ''
    ..email = ''
    ..displayName = ''
    ..photoUrl = ''
    ..uid = ''
    ..phoneNumber = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('property_form2');

  static Stream<PropertyForm2Record> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<PropertyForm2Record> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  PropertyForm2Record._();
  factory PropertyForm2Record(
          [void Function(PropertyForm2RecordBuilder) updates]) =
      _$PropertyForm2Record;

  static PropertyForm2Record getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createPropertyForm2RecordData({
  bool? submitted,
  String? passportSizePhoto,
  String? pan,
  String? panCard,
  String? addressProofType,
  String? addressProof,
  String? biddingAs,
  String? transactionDate,
  String? transactionTime,
  String? paymentMethod,
  String? eMDCurrency,
  String? transactionAmount,
  String? transactionRefNumber,
  String? eMDPaymentProof,
  String? bankAccount,
  String? nameAsInBank,
  String? ifsc,
  String? date,
  DateTime? createdTime,
  DateTime? updatedTime,
  String? shareholding,
  String? propId,
  String? userId,
  LatLng? location,
  DocumentReference? form1Ref,
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  String? phoneNumber,
}) {
  final firestoreData = serializers.toFirestore(
    PropertyForm2Record.serializer,
    PropertyForm2Record(
      (p) => p
        ..submitted = submitted
        ..passportSizePhoto = passportSizePhoto
        ..pan = pan
        ..panCard = panCard
        ..addressProofType = addressProofType
        ..addressProof = addressProof
        ..biddingAs = biddingAs
        ..transactionDate = transactionDate
        ..transactionTime = transactionTime
        ..paymentMethod = paymentMethod
        ..eMDCurrency = eMDCurrency
        ..transactionAmount = transactionAmount
        ..transactionRefNumber = transactionRefNumber
        ..eMDPaymentProof = eMDPaymentProof
        ..bankAccount = bankAccount
        ..nameAsInBank = nameAsInBank
        ..ifsc = ifsc
        ..date = date
        ..createdTime = createdTime
        ..updatedTime = updatedTime
        ..shareholding = shareholding
        ..propId = propId
        ..userId = userId
        ..location = location
        ..form1Ref = form1Ref
        ..email = email
        ..displayName = displayName
        ..photoUrl = photoUrl
        ..uid = uid
        ..phoneNumber = phoneNumber,
    ),
  );

  return firestoreData;
}
