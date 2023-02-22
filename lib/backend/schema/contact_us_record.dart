import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'contact_us_record.g.dart';

abstract class ContactUsRecord
    implements Built<ContactUsRecord, ContactUsRecordBuilder> {
  static Serializer<ContactUsRecord> get serializer =>
      _$contactUsRecordSerializer;

  String? get name;

  String? get email;

  String? get msg;

  String? get phone;

  @BuiltValueField(wireName: 'user_id')
  String? get userId;

  LatLng? get location;

  @BuiltValueField(wireName: 'created_time')
  DateTime? get createdTime;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ContactUsRecordBuilder builder) => builder
    ..name = ''
    ..email = ''
    ..msg = ''
    ..phone = ''
    ..userId = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('contact_us');

  static Stream<ContactUsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ContactUsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ContactUsRecord._();
  factory ContactUsRecord([void Function(ContactUsRecordBuilder) updates]) =
      _$ContactUsRecord;

  static ContactUsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createContactUsRecordData({
  String? name,
  String? email,
  String? msg,
  String? phone,
  String? userId,
  LatLng? location,
  DateTime? createdTime,
}) {
  final firestoreData = serializers.toFirestore(
    ContactUsRecord.serializer,
    ContactUsRecord(
      (c) => c
        ..name = name
        ..email = email
        ..msg = msg
        ..phone = phone
        ..userId = userId
        ..location = location
        ..createdTime = createdTime,
    ),
  );

  return firestoreData;
}
