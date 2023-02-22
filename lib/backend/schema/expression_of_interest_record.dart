import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'expression_of_interest_record.g.dart';

abstract class ExpressionOfInterestRecord
    implements
        Built<ExpressionOfInterestRecord, ExpressionOfInterestRecordBuilder> {
  static Serializer<ExpressionOfInterestRecord> get serializer =>
      _$expressionOfInterestRecordSerializer;

  String? get name;

  String? get address;

  @BuiltValueField(wireName: 'phone_number')
  String? get phoneNumber;

  String? get email;

  @BuiltValueField(wireName: 'user_id')
  String? get userId;

  LatLng? get location;

  @BuiltValueField(wireName: 'created_time')
  DateTime? get createdTime;

  String? get message;

  int? get propID;

  int? get rprice;

  String? get title;

  String? get employed;

  String? get loan;

  @BuiltValueField(wireName: 'aadhar_card')
  String? get aadharCard;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ExpressionOfInterestRecordBuilder builder) =>
      builder
        ..name = ''
        ..address = ''
        ..phoneNumber = ''
        ..email = ''
        ..userId = ''
        ..message = ''
        ..propID = 0
        ..rprice = 0
        ..title = ''
        ..employed = ''
        ..loan = ''
        ..aadharCard = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('expression_of_interest');

  static Stream<ExpressionOfInterestRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ExpressionOfInterestRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ExpressionOfInterestRecord._();
  factory ExpressionOfInterestRecord(
          [void Function(ExpressionOfInterestRecordBuilder) updates]) =
      _$ExpressionOfInterestRecord;

  static ExpressionOfInterestRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createExpressionOfInterestRecordData({
  String? name,
  String? address,
  String? phoneNumber,
  String? email,
  String? userId,
  LatLng? location,
  DateTime? createdTime,
  String? message,
  int? propID,
  int? rprice,
  String? title,
  String? employed,
  String? loan,
  String? aadharCard,
}) {
  final firestoreData = serializers.toFirestore(
    ExpressionOfInterestRecord.serializer,
    ExpressionOfInterestRecord(
      (e) => e
        ..name = name
        ..address = address
        ..phoneNumber = phoneNumber
        ..email = email
        ..userId = userId
        ..location = location
        ..createdTime = createdTime
        ..message = message
        ..propID = propID
        ..rprice = rprice
        ..title = title
        ..employed = employed
        ..loan = loan
        ..aadharCard = aadharCard,
    ),
  );

  return firestoreData;
}
