import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'encum_report_record.g.dart';

abstract class EncumReportRecord
    implements Built<EncumReportRecord, EncumReportRecordBuilder> {
  static Serializer<EncumReportRecord> get serializer =>
      _$encumReportRecordSerializer;

  @BuiltValueField(wireName: 'State')
  String? get state;

  String? get uid;

  String? get url;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(EncumReportRecordBuilder builder) => builder
    ..state = ''
    ..uid = ''
    ..url = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('encum_report');

  static Stream<EncumReportRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<EncumReportRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  EncumReportRecord._();
  factory EncumReportRecord([void Function(EncumReportRecordBuilder) updates]) =
      _$EncumReportRecord;

  static EncumReportRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createEncumReportRecordData({
  String? state,
  String? uid,
  String? url,
}) {
  final firestoreData = serializers.toFirestore(
    EncumReportRecord.serializer,
    EncumReportRecord(
      (e) => e
        ..state = state
        ..uid = uid
        ..url = url,
    ),
  );

  return firestoreData;
}
