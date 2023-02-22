import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'application_form_record.g.dart';

abstract class ApplicationFormRecord
    implements Built<ApplicationFormRecord, ApplicationFormRecordBuilder> {
  static Serializer<ApplicationFormRecord> get serializer =>
      _$applicationFormRecordSerializer;

  @BuiltValueField(wireName: 'prop_id')
  int? get propId;

  @BuiltValueField(wireName: 'reserve_price')
  String? get reservePrice;

  String? get title;

  String? get seller;

  @BuiltValueField(wireName: 'first_name')
  String? get firstName;

  @BuiltValueField(wireName: 'middle_name')
  String? get middleName;

  @BuiltValueField(wireName: 'last_name')
  String? get lastName;

  @BuiltValueField(wireName: 'father_name')
  String? get fatherName;

  String? get dob;

  @BuiltValueField(wireName: 'phone_number')
  String? get phoneNumber;

  String? get email;

  String? get status;

  @BuiltValueField(wireName: 'perm_add1')
  String? get permAdd1;

  @BuiltValueField(wireName: 'perm_add2')
  String? get permAdd2;

  @BuiltValueField(wireName: 'curr_add1')
  String? get currAdd1;

  @BuiltValueField(wireName: 'curr_add2')
  String? get currAdd2;

  String? get domicile;

  String? get pan;

  @BuiltValueField(wireName: 'address_proof')
  String? get addressProof;

  @BuiltValueField(wireName: 'bidding_as')
  String? get biddingAs;

  String? get shareholding;

  @BuiltValueField(wireName: 'transaction_time')
  String? get transactionTime;

  @BuiltValueField(wireName: 'payment_method')
  String? get paymentMethod;

  String? get amount;

  @BuiltValueField(wireName: 'ref_number')
  String? get refNumber;

  @BuiltValueField(wireName: 'emd_proof')
  String? get emdProof;

  @BuiltValueField(wireName: 'passport_size_photo')
  String? get passportSizePhoto;

  String? get pancard;

  @BuiltValueField(wireName: 'address_proof_file')
  String? get addressProofFile;

  @BuiltValueField(wireName: 'bank_account')
  String? get bankAccount;

  @BuiltValueField(wireName: 'name_in_bank')
  String? get nameInBank;

  String? get ifsc;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ApplicationFormRecordBuilder builder) =>
      builder
        ..propId = 0
        ..reservePrice = ''
        ..title = ''
        ..seller = ''
        ..firstName = ''
        ..middleName = ''
        ..lastName = ''
        ..fatherName = ''
        ..dob = ''
        ..phoneNumber = ''
        ..email = ''
        ..status = ''
        ..permAdd1 = ''
        ..permAdd2 = ''
        ..currAdd1 = ''
        ..currAdd2 = ''
        ..domicile = ''
        ..pan = ''
        ..addressProof = ''
        ..biddingAs = ''
        ..shareholding = ''
        ..transactionTime = ''
        ..paymentMethod = ''
        ..amount = ''
        ..refNumber = ''
        ..emdProof = ''
        ..passportSizePhoto = ''
        ..pancard = ''
        ..addressProofFile = ''
        ..bankAccount = ''
        ..nameInBank = ''
        ..ifsc = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('application_form');

  static Stream<ApplicationFormRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ApplicationFormRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ApplicationFormRecord._();
  factory ApplicationFormRecord(
          [void Function(ApplicationFormRecordBuilder) updates]) =
      _$ApplicationFormRecord;

  static ApplicationFormRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createApplicationFormRecordData({
  int? propId,
  String? reservePrice,
  String? title,
  String? seller,
  String? firstName,
  String? middleName,
  String? lastName,
  String? fatherName,
  String? dob,
  String? phoneNumber,
  String? email,
  String? status,
  String? permAdd1,
  String? permAdd2,
  String? currAdd1,
  String? currAdd2,
  String? domicile,
  String? pan,
  String? addressProof,
  String? biddingAs,
  String? shareholding,
  String? transactionTime,
  String? paymentMethod,
  String? amount,
  String? refNumber,
  String? emdProof,
  String? passportSizePhoto,
  String? pancard,
  String? addressProofFile,
  String? bankAccount,
  String? nameInBank,
  String? ifsc,
}) {
  final firestoreData = serializers.toFirestore(
    ApplicationFormRecord.serializer,
    ApplicationFormRecord(
      (a) => a
        ..propId = propId
        ..reservePrice = reservePrice
        ..title = title
        ..seller = seller
        ..firstName = firstName
        ..middleName = middleName
        ..lastName = lastName
        ..fatherName = fatherName
        ..dob = dob
        ..phoneNumber = phoneNumber
        ..email = email
        ..status = status
        ..permAdd1 = permAdd1
        ..permAdd2 = permAdd2
        ..currAdd1 = currAdd1
        ..currAdd2 = currAdd2
        ..domicile = domicile
        ..pan = pan
        ..addressProof = addressProof
        ..biddingAs = biddingAs
        ..shareholding = shareholding
        ..transactionTime = transactionTime
        ..paymentMethod = paymentMethod
        ..amount = amount
        ..refNumber = refNumber
        ..emdProof = emdProof
        ..passportSizePhoto = passportSizePhoto
        ..pancard = pancard
        ..addressProofFile = addressProofFile
        ..bankAccount = bankAccount
        ..nameInBank = nameInBank
        ..ifsc = ifsc,
    ),
  );

  return firestoreData;
}
