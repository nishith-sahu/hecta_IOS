import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'invoices_record.g.dart';

abstract class InvoicesRecord
    implements Built<InvoicesRecord, InvoicesRecordBuilder> {
  static Serializer<InvoicesRecord> get serializer =>
      _$invoicesRecordSerializer;

  String? get email;

  String? get userid;

  double? get amount;

  BuiltList<String>? get uids;

  String? get status;

  @BuiltValueField(wireName: 'UserRef')
  DocumentReference? get userRef;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(InvoicesRecordBuilder builder) => builder
    ..email = ''
    ..userid = ''
    ..amount = 0.0
    ..uids = ListBuilder()
    ..status = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('invoices');

  static Stream<InvoicesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<InvoicesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  InvoicesRecord._();
  factory InvoicesRecord([void Function(InvoicesRecordBuilder) updates]) =
      _$InvoicesRecord;

  static InvoicesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createInvoicesRecordData({
  String? email,
  String? userid,
  double? amount,
  String? status,
  DocumentReference? userRef,
}) {
  final firestoreData = serializers.toFirestore(
    InvoicesRecord.serializer,
    InvoicesRecord(
      (i) => i
        ..email = email
        ..userid = userid
        ..amount = amount
        ..uids = null
        ..status = status
        ..userRef = userRef,
    ),
  );

  return firestoreData;
}
