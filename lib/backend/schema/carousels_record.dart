import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'carousels_record.g.dart';

abstract class CarouselsRecord
    implements Built<CarouselsRecord, CarouselsRecordBuilder> {
  static Serializer<CarouselsRecord> get serializer =>
      _$carouselsRecordSerializer;

  String? get title;

  @BuiltValueField(wireName: 'property_id')
  BuiltList<int>? get propertyId;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(CarouselsRecordBuilder builder) => builder
    ..title = ''
    ..propertyId = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('carousels');

  static Stream<CarouselsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<CarouselsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  CarouselsRecord._();
  factory CarouselsRecord([void Function(CarouselsRecordBuilder) updates]) =
      _$CarouselsRecord;

  static CarouselsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createCarouselsRecordData({
  String? title,
}) {
  final firestoreData = serializers.toFirestore(
    CarouselsRecord.serializer,
    CarouselsRecord(
      (c) => c
        ..title = title
        ..propertyId = null,
    ),
  );

  return firestoreData;
}
