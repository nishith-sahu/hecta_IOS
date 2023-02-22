import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'order_details_record.g.dart';

abstract class OrderDetailsRecord
    implements Built<OrderDetailsRecord, OrderDetailsRecordBuilder> {
  static Serializer<OrderDetailsRecord> get serializer =>
      _$orderDetailsRecordSerializer;

  @BuiltValueField(wireName: 'prop_id')
  String? get propId;

  int? get amount;

  @BuiltValueField(wireName: 'visit_report')
  bool? get visitReport;

  @BuiltValueField(wireName: 'encum_report')
  bool? get encumReport;

  @BuiltValueField(wireName: 'due_dilligence_report')
  bool? get dueDilligenceReport;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(OrderDetailsRecordBuilder builder) => builder
    ..propId = ''
    ..amount = 0
    ..visitReport = false
    ..encumReport = false
    ..dueDilligenceReport = false;

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('order_details')
          : FirebaseFirestore.instance.collectionGroup('order_details');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('order_details').doc();

  static Stream<OrderDetailsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<OrderDetailsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  OrderDetailsRecord._();
  factory OrderDetailsRecord(
          [void Function(OrderDetailsRecordBuilder) updates]) =
      _$OrderDetailsRecord;

  static OrderDetailsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createOrderDetailsRecordData({
  String? propId,
  int? amount,
  bool? visitReport,
  bool? encumReport,
  bool? dueDilligenceReport,
}) {
  final firestoreData = serializers.toFirestore(
    OrderDetailsRecord.serializer,
    OrderDetailsRecord(
      (o) => o
        ..propId = propId
        ..amount = amount
        ..visitReport = visitReport
        ..encumReport = encumReport
        ..dueDilligenceReport = dueDilligenceReport,
    ),
  );

  return firestoreData;
}
