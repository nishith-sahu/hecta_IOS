import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'loan2_record.g.dart';

abstract class Loan2Record implements Built<Loan2Record, Loan2RecordBuilder> {
  static Serializer<Loan2Record> get serializer => _$loan2RecordSerializer;

  String? get name;

  int? get phone;

  String? get bank;

  @BuiltValueField(wireName: 'user_id')
  String? get userId;

  @BuiltValueField(wireName: 'created_time')
  DateTime? get createdTime;

  LatLng? get location;

  @BuiltValueField(wireName: 'current_device')
  String? get currentDevice;

  String? get email;

  String? get msg;

  @BuiltValueField(wireName: 'loan_amt')
  String? get loanAmt;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(Loan2RecordBuilder builder) => builder
    ..name = ''
    ..phone = 0
    ..bank = ''
    ..userId = ''
    ..currentDevice = ''
    ..email = ''
    ..msg = ''
    ..loanAmt = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('loan2');

  static Stream<Loan2Record> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<Loan2Record> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  Loan2Record._();
  factory Loan2Record([void Function(Loan2RecordBuilder) updates]) =
      _$Loan2Record;

  static Loan2Record getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createLoan2RecordData({
  String? name,
  int? phone,
  String? bank,
  String? userId,
  DateTime? createdTime,
  LatLng? location,
  String? currentDevice,
  String? email,
  String? msg,
  String? loanAmt,
}) {
  final firestoreData = serializers.toFirestore(
    Loan2Record.serializer,
    Loan2Record(
      (l) => l
        ..name = name
        ..phone = phone
        ..bank = bank
        ..userId = userId
        ..createdTime = createdTime
        ..location = location
        ..currentDevice = currentDevice
        ..email = email
        ..msg = msg
        ..loanAmt = loanAmt,
    ),
  );

  return firestoreData;
}
