import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'test_record.g.dart';

abstract class TestRecord implements Built<TestRecord, TestRecordBuilder> {
  static Serializer<TestRecord> get serializer => _$testRecordSerializer;

  Prop1Struct get map;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(TestRecordBuilder builder) =>
      builder..map = Prop1StructBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('test');

  static Stream<TestRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<TestRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  TestRecord._();
  factory TestRecord([void Function(TestRecordBuilder) updates]) = _$TestRecord;

  static TestRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createTestRecordData({
  Prop1Struct? map,
}) {
  final firestoreData = serializers.toFirestore(
    TestRecord.serializer,
    TestRecord(
      (t) => t..map = Prop1StructBuilder(),
    ),
  );

  // Handle nested data for "map" field.
  addProp1StructData(firestoreData, map, 'map');

  return firestoreData;
}
