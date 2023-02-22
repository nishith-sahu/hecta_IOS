import 'dart:async';

import '../index.dart';
import '../serializers.dart';
import 'package:built_value/built_value.dart';

part 'prop1_struct.g.dart';

abstract class Prop1Struct implements Built<Prop1Struct, Prop1StructBuilder> {
  static Serializer<Prop1Struct> get serializer => _$prop1StructSerializer;

  BuiltList<String>? get doc;

  /// Utility class for Firestore updates
  FirestoreUtilData get firestoreUtilData;

  static void _initializeBuilder(Prop1StructBuilder builder) => builder
    ..doc = ListBuilder()
    ..firestoreUtilData = FirestoreUtilData();

  Prop1Struct._();
  factory Prop1Struct([void Function(Prop1StructBuilder) updates]) =
      _$Prop1Struct;
}

Prop1Struct createProp1Struct({
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    Prop1Struct(
      (p) => p
        ..doc = null
        ..firestoreUtilData = FirestoreUtilData(
          clearUnsetFields: clearUnsetFields,
          create: create,
          delete: delete,
          fieldValues: fieldValues,
        ),
    );

Prop1Struct? updateProp1Struct(
  Prop1Struct? prop1, {
  bool clearUnsetFields = true,
}) =>
    prop1 != null
        ? (prop1.toBuilder()
              ..firestoreUtilData =
                  FirestoreUtilData(clearUnsetFields: clearUnsetFields))
            .build()
        : null;

void addProp1StructData(
  Map<String, dynamic> firestoreData,
  Prop1Struct? prop1,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (prop1 == null) {
    return;
  }
  if (prop1.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && prop1.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final prop1Data = getProp1FirestoreData(prop1, forFieldValue);
  final nestedData = prop1Data.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = prop1.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);

  return;
}

Map<String, dynamic> getProp1FirestoreData(
  Prop1Struct? prop1, [
  bool forFieldValue = false,
]) {
  if (prop1 == null) {
    return {};
  }
  final firestoreData = serializers.toFirestore(Prop1Struct.serializer, prop1);

  // Add any Firestore field values
  prop1.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getProp1ListFirestoreData(
  List<Prop1Struct>? prop1s,
) =>
    prop1s?.map((p) => getProp1FirestoreData(p, true)).toList() ?? [];
