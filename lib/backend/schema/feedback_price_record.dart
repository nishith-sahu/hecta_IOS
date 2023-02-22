import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'feedback_price_record.g.dart';

abstract class FeedbackPriceRecord
    implements Built<FeedbackPriceRecord, FeedbackPriceRecordBuilder> {
  static Serializer<FeedbackPriceRecord> get serializer =>
      _$feedbackPriceRecordSerializer;

  int? get price;

  @BuiltValueField(wireName: 'user_id')
  String? get userId;

  @BuiltValueField(wireName: 'property_id')
  String? get propertyId;

  @BuiltValueField(wireName: 'reserve_price')
  int? get reservePrice;

  @BuiltValueField(wireName: 'created_time')
  DateTime? get createdTime;

  LatLng? get location;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(FeedbackPriceRecordBuilder builder) => builder
    ..price = 0
    ..userId = ''
    ..propertyId = ''
    ..reservePrice = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('feedback_price');

  static Stream<FeedbackPriceRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<FeedbackPriceRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  FeedbackPriceRecord._();
  factory FeedbackPriceRecord(
          [void Function(FeedbackPriceRecordBuilder) updates]) =
      _$FeedbackPriceRecord;

  static FeedbackPriceRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createFeedbackPriceRecordData({
  int? price,
  String? userId,
  String? propertyId,
  int? reservePrice,
  DateTime? createdTime,
  LatLng? location,
}) {
  final firestoreData = serializers.toFirestore(
    FeedbackPriceRecord.serializer,
    FeedbackPriceRecord(
      (f) => f
        ..price = price
        ..userId = userId
        ..propertyId = propertyId
        ..reservePrice = reservePrice
        ..createdTime = createdTime
        ..location = location,
    ),
  );

  return firestoreData;
}
