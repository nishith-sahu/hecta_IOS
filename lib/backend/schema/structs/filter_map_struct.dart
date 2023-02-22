import 'dart:async';

import '../index.dart';
import '../serializers.dart';
import 'package:built_value/built_value.dart';

part 'filter_map_struct.g.dart';

abstract class FilterMapStruct
    implements Built<FilterMapStruct, FilterMapStructBuilder> {
  static Serializer<FilterMapStruct> get serializer =>
      _$filterMapStructSerializer;

  String? get filterValue;

  String? get filterType;

  /// Utility class for Firestore updates
  FirestoreUtilData get firestoreUtilData;

  static void _initializeBuilder(FilterMapStructBuilder builder) => builder
    ..filterValue = ''
    ..filterType = ''
    ..firestoreUtilData = FirestoreUtilData();

  FilterMapStruct._();
  factory FilterMapStruct([void Function(FilterMapStructBuilder) updates]) =
      _$FilterMapStruct;
}

FilterMapStruct createFilterMapStruct({
  String? filterValue,
  String? filterType,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    FilterMapStruct(
      (f) => f
        ..filterValue = filterValue
        ..filterType = filterType
        ..firestoreUtilData = FirestoreUtilData(
          clearUnsetFields: clearUnsetFields,
          create: create,
          delete: delete,
          fieldValues: fieldValues,
        ),
    );

FilterMapStruct? updateFilterMapStruct(
  FilterMapStruct? filterMap, {
  bool clearUnsetFields = true,
}) =>
    filterMap != null
        ? (filterMap.toBuilder()
              ..firestoreUtilData =
                  FirestoreUtilData(clearUnsetFields: clearUnsetFields))
            .build()
        : null;

void addFilterMapStructData(
  Map<String, dynamic> firestoreData,
  FilterMapStruct? filterMap,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (filterMap == null) {
    return;
  }
  if (filterMap.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && filterMap.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final filterMapData = getFilterMapFirestoreData(filterMap, forFieldValue);
  final nestedData = filterMapData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = filterMap.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);

  return;
}

Map<String, dynamic> getFilterMapFirestoreData(
  FilterMapStruct? filterMap, [
  bool forFieldValue = false,
]) {
  if (filterMap == null) {
    return {};
  }
  final firestoreData =
      serializers.toFirestore(FilterMapStruct.serializer, filterMap);

  // Add any Firestore field values
  filterMap.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getFilterMapListFirestoreData(
  List<FilterMapStruct>? filterMaps,
) =>
    filterMaps?.map((f) => getFilterMapFirestoreData(f, true)).toList() ?? [];
