import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'property_form1_record.g.dart';

abstract class PropertyForm1Record
    implements Built<PropertyForm1Record, PropertyForm1RecordBuilder> {
  static Serializer<PropertyForm1Record> get serializer =>
      _$propertyForm1RecordSerializer;

  bool? get submitted;

  @BuiltValueField(wireName: 'first_name')
  String? get firstName;

  @BuiltValueField(wireName: 'middle_name')
  String? get middleName;

  @BuiltValueField(wireName: 'last_name')
  String? get lastName;

  @BuiltValueField(wireName: 'father_spouse_name')
  String? get fatherSpouseName;

  String? get dob;

  String? get email;

  String? get phone;

  String? get status;

  @BuiltValueField(wireName: 'perm_add_1')
  String? get permAdd1;

  @BuiltValueField(wireName: 'curr_add_1')
  String? get currAdd1;

  String? get domicile;

  @BuiltValueField(wireName: 'created_time')
  DateTime? get createdTime;

  @BuiltValueField(wireName: 'updated_time')
  DateTime? get updatedTime;

  @BuiltValueField(wireName: 'user_id')
  String? get userId;

  @BuiltValueField(wireName: 'prop_id')
  String? get propId;

  LatLng? get location;

  bool? get form;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(PropertyForm1RecordBuilder builder) => builder
    ..submitted = false
    ..firstName = ''
    ..middleName = ''
    ..lastName = ''
    ..fatherSpouseName = ''
    ..dob = ''
    ..email = ''
    ..phone = ''
    ..status = ''
    ..permAdd1 = ''
    ..currAdd1 = ''
    ..domicile = ''
    ..userId = ''
    ..propId = ''
    ..form = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('property_form1');

  static Stream<PropertyForm1Record> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<PropertyForm1Record> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  PropertyForm1Record._();
  factory PropertyForm1Record(
          [void Function(PropertyForm1RecordBuilder) updates]) =
      _$PropertyForm1Record;

  static PropertyForm1Record getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createPropertyForm1RecordData({
  bool? submitted,
  String? firstName,
  String? middleName,
  String? lastName,
  String? fatherSpouseName,
  String? dob,
  String? email,
  String? phone,
  String? status,
  String? permAdd1,
  String? currAdd1,
  String? domicile,
  DateTime? createdTime,
  DateTime? updatedTime,
  String? userId,
  String? propId,
  LatLng? location,
  bool? form,
}) {
  final firestoreData = serializers.toFirestore(
    PropertyForm1Record.serializer,
    PropertyForm1Record(
      (p) => p
        ..submitted = submitted
        ..firstName = firstName
        ..middleName = middleName
        ..lastName = lastName
        ..fatherSpouseName = fatherSpouseName
        ..dob = dob
        ..email = email
        ..phone = phone
        ..status = status
        ..permAdd1 = permAdd1
        ..currAdd1 = currAdd1
        ..domicile = domicile
        ..createdTime = createdTime
        ..updatedTime = updatedTime
        ..userId = userId
        ..propId = propId
        ..location = location
        ..form = form,
    ),
  );

  return firestoreData;
}
