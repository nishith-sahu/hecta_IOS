import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'cart_record.g.dart';

abstract class CartRecord implements Built<CartRecord, CartRecordBuilder> {
  static Serializer<CartRecord> get serializer => _$cartRecordSerializer;

  @BuiltValueField(wireName: 'user_id')
  String? get userId;

  @BuiltValueField(wireName: 'visit_report')
  BuiltList<String>? get visitReport;

  @BuiltValueField(wireName: 'ProdRef')
  DocumentReference? get prodRef;

  @BuiltValueField(wireName: 'total_amount')
  double? get totalAmount;

  @BuiltValueField(wireName: 'PropertyRef')
  BuiltList<DocumentReference>? get propertyRef;

  DocumentReference? get userRef;

  int? get quantity;

  String? get status;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(CartRecordBuilder builder) => builder
    ..userId = ''
    ..visitReport = ListBuilder()
    ..totalAmount = 0.0
    ..propertyRef = ListBuilder()
    ..quantity = 0
    ..status = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('cart');

  static Stream<CartRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<CartRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  CartRecord._();
  factory CartRecord([void Function(CartRecordBuilder) updates]) = _$CartRecord;

  static CartRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createCartRecordData({
  String? userId,
  DocumentReference? prodRef,
  double? totalAmount,
  DocumentReference? userRef,
  int? quantity,
  String? status,
}) {
  final firestoreData = serializers.toFirestore(
    CartRecord.serializer,
    CartRecord(
      (c) => c
        ..userId = userId
        ..visitReport = null
        ..prodRef = prodRef
        ..totalAmount = totalAmount
        ..propertyRef = null
        ..userRef = userRef
        ..quantity = quantity
        ..status = status,
    ),
  );

  return firestoreData;
}
