import 'dart:async';

import '../index.dart';
import '../serializers.dart';
import 'package:built_value/built_value.dart';

part 'req_struct.g.dart';

abstract class ReqStruct implements Built<ReqStruct, ReqStructBuilder> {
  static Serializer<ReqStruct> get serializer => _$reqStructSerializer;

  BuiltList<String>? get city;

  BuiltList<String>? get state;

  BuiltList<String>? get area;

  /// Utility class for Firestore updates
  FirestoreUtilData get firestoreUtilData;

  static void _initializeBuilder(ReqStructBuilder builder) => builder
    ..city = ListBuilder()
    ..state = ListBuilder()
    ..area = ListBuilder()
    ..firestoreUtilData = FirestoreUtilData();

  ReqStruct._();
  factory ReqStruct([void Function(ReqStructBuilder) updates]) = _$ReqStruct;
}

ReqStruct createReqStruct({
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ReqStruct(
      (r) => r
        ..city = null
        ..state = null
        ..area = null
        ..firestoreUtilData = FirestoreUtilData(
          clearUnsetFields: clearUnsetFields,
          create: create,
          delete: delete,
          fieldValues: fieldValues,
        ),
    );

ReqStruct? updateReqStruct(
  ReqStruct? req, {
  bool clearUnsetFields = true,
}) =>
    req != null
        ? (req.toBuilder()
              ..firestoreUtilData =
                  FirestoreUtilData(clearUnsetFields: clearUnsetFields))
            .build()
        : null;

void addReqStructData(
  Map<String, dynamic> firestoreData,
  ReqStruct? req,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (req == null) {
    return;
  }
  if (req.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && req.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final reqData = getReqFirestoreData(req, forFieldValue);
  final nestedData = reqData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = req.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);

  return;
}

Map<String, dynamic> getReqFirestoreData(
  ReqStruct? req, [
  bool forFieldValue = false,
]) {
  if (req == null) {
    return {};
  }
  final firestoreData = serializers.toFirestore(ReqStruct.serializer, req);

  // Add any Firestore field values
  req.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getReqListFirestoreData(
  List<ReqStruct>? reqs,
) =>
    reqs?.map((r) => getReqFirestoreData(r, true)).toList() ?? [];
