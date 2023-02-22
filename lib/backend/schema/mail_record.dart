import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'mail_record.g.dart';

abstract class MailRecord implements Built<MailRecord, MailRecordBuilder> {
  static Serializer<MailRecord> get serializer => _$mailRecordSerializer;

  BuiltList<String>? get to;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(MailRecordBuilder builder) =>
      builder..to = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('mail');

  static Stream<MailRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<MailRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  MailRecord._();
  factory MailRecord([void Function(MailRecordBuilder) updates]) = _$MailRecord;

  static MailRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createMailRecordData() {
  final firestoreData = serializers.toFirestore(
    MailRecord.serializer,
    MailRecord(
      (m) => m..to = null,
    ),
  );

  return firestoreData;
}
