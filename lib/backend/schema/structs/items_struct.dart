import 'dart:async';

import '../index.dart';
import '../serializers.dart';
import 'package:built_value/built_value.dart';

part 'items_struct.g.dart';

abstract class ItemsStruct implements Built<ItemsStruct, ItemsStructBuilder> {
  static Serializer<ItemsStruct> get serializer => _$itemsStructSerializer;

  @BuiltValueField(wireName: 'prop_id')
  String? get propId;

  @BuiltValueField(wireName: 'visit_report')
  bool? get visitReport;

  @BuiltValueField(wireName: 'encum_report')
  bool? get encumReport;

  @BuiltValueField(wireName: 'due_dilligence_report')
  bool? get dueDilligenceReport;

  /// Utility class for Firestore updates
  FirestoreUtilData get firestoreUtilData;

  static void _initializeBuilder(ItemsStructBuilder builder) => builder
    ..propId = ''
    ..visitReport = false
    ..encumReport = false
    ..dueDilligenceReport = false
    ..firestoreUtilData = FirestoreUtilData();

  ItemsStruct._();
  factory ItemsStruct([void Function(ItemsStructBuilder) updates]) =
      _$ItemsStruct;
}

ItemsStruct createItemsStruct({
  String? propId,
  bool? visitReport,
  bool? encumReport,
  bool? dueDilligenceReport,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ItemsStruct(
      (i) => i
        ..propId = propId
        ..visitReport = visitReport
        ..encumReport = encumReport
        ..dueDilligenceReport = dueDilligenceReport
        ..firestoreUtilData = FirestoreUtilData(
          clearUnsetFields: clearUnsetFields,
          create: create,
          delete: delete,
          fieldValues: fieldValues,
        ),
    );

ItemsStruct? updateItemsStruct(
  ItemsStruct? items, {
  bool clearUnsetFields = true,
}) =>
    items != null
        ? (items.toBuilder()
              ..firestoreUtilData =
                  FirestoreUtilData(clearUnsetFields: clearUnsetFields))
            .build()
        : null;

void addItemsStructData(
  Map<String, dynamic> firestoreData,
  ItemsStruct? items,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (items == null) {
    return;
  }
  if (items.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && items.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final itemsData = getItemsFirestoreData(items, forFieldValue);
  final nestedData = itemsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = items.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);

  return;
}

Map<String, dynamic> getItemsFirestoreData(
  ItemsStruct? items, [
  bool forFieldValue = false,
]) {
  if (items == null) {
    return {};
  }
  final firestoreData = serializers.toFirestore(ItemsStruct.serializer, items);

  // Add any Firestore field values
  items.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getItemsListFirestoreData(
  List<ItemsStruct>? itemss,
) =>
    itemss?.map((i) => getItemsFirestoreData(i, true)).toList() ?? [];
