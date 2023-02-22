import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'prefrences_record.g.dart';

abstract class PrefrencesRecord
    implements Built<PrefrencesRecord, PrefrencesRecordBuilder> {
  static Serializer<PrefrencesRecord> get serializer =>
      _$prefrencesRecordSerializer;

  BuiltList<String>? get cities;

  @BuiltValueField(wireName: 'property_type')
  BuiltList<String>? get propertyType;

  @BuiltValueField(wireName: 'creation_time')
  DateTime? get creationTime;

  String? get budgetFrom;

  String? get budgetTo;

  @BuiltValueField(wireName: 'user_id')
  String? get userId;

  LatLng? get location;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(PrefrencesRecordBuilder builder) => builder
    ..cities = ListBuilder()
    ..propertyType = ListBuilder()
    ..budgetFrom = ''
    ..budgetTo = ''
    ..userId = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('prefrences');

  static Stream<PrefrencesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<PrefrencesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  PrefrencesRecord._();
  factory PrefrencesRecord([void Function(PrefrencesRecordBuilder) updates]) =
      _$PrefrencesRecord;

  static PrefrencesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createPrefrencesRecordData({
  DateTime? creationTime,
  String? budgetFrom,
  String? budgetTo,
  String? userId,
  LatLng? location,
}) {
  final firestoreData = serializers.toFirestore(
    PrefrencesRecord.serializer,
    PrefrencesRecord(
      (p) => p
        ..cities = null
        ..propertyType = null
        ..creationTime = creationTime
        ..budgetFrom = budgetFrom
        ..budgetTo = budgetTo
        ..userId = userId
        ..location = location,
    ),
  );

  return firestoreData;
}
