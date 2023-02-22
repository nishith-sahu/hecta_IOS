import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'loan_record.g.dart';

abstract class LoanRecord implements Built<LoanRecord, LoanRecordBuilder> {
  static Serializer<LoanRecord> get serializer => _$loanRecordSerializer;

  String? get name;

  int? get phone;

  String? get bank;

  @BuiltValueField(wireName: 'user_id')
  String? get userId;

  @BuiltValueField(wireName: 'created_time')
  DateTime? get createdTime;

  LatLng? get location;

  int? get propID;

  String? get rprice;

  String? get title;

  String? get email;

  String? get msg;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(LoanRecordBuilder builder) => builder
    ..name = ''
    ..phone = 0
    ..bank = ''
    ..userId = ''
    ..propID = 0
    ..rprice = ''
    ..title = ''
    ..email = ''
    ..msg = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('loan');

  static Stream<LoanRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<LoanRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  LoanRecord._();
  factory LoanRecord([void Function(LoanRecordBuilder) updates]) = _$LoanRecord;

  static LoanRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createLoanRecordData({
  String? name,
  int? phone,
  String? bank,
  String? userId,
  DateTime? createdTime,
  LatLng? location,
  int? propID,
  String? rprice,
  String? title,
  String? email,
  String? msg,
}) {
  final firestoreData = serializers.toFirestore(
    LoanRecord.serializer,
    LoanRecord(
      (l) => l
        ..name = name
        ..phone = phone
        ..bank = bank
        ..userId = userId
        ..createdTime = createdTime
        ..location = location
        ..propID = propID
        ..rprice = rprice
        ..title = title
        ..email = email
        ..msg = msg,
    ),
  );

  return firestoreData;
}
