import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'faq_record.g.dart';

abstract class FaqRecord implements Built<FaqRecord, FaqRecordBuilder> {
  static Serializer<FaqRecord> get serializer => _$faqRecordSerializer;

  String? get uid;

  String? get categories;

  String? get content;

  String? get title;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(FaqRecordBuilder builder) => builder
    ..uid = ''
    ..categories = ''
    ..content = ''
    ..title = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('faq');

  static Stream<FaqRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<FaqRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  FaqRecord._();
  factory FaqRecord([void Function(FaqRecordBuilder) updates]) = _$FaqRecord;

  static FaqRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createFaqRecordData({
  String? uid,
  String? categories,
  String? content,
  String? title,
}) {
  final firestoreData = serializers.toFirestore(
    FaqRecord.serializer,
    FaqRecord(
      (f) => f
        ..uid = uid
        ..categories = categories
        ..content = content
        ..title = title,
    ),
  );

  return firestoreData;
}
