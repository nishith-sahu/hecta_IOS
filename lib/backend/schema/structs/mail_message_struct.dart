import 'dart:async';

import '../index.dart';
import '../serializers.dart';
import 'package:built_value/built_value.dart';

part 'mail_message_struct.g.dart';

abstract class MailMessageStruct
    implements Built<MailMessageStruct, MailMessageStructBuilder> {
  static Serializer<MailMessageStruct> get serializer =>
      _$mailMessageStructSerializer;

  String? get subject;

  String? get text;

  String? get html;

  /// Utility class for Firestore updates
  FirestoreUtilData get firestoreUtilData;

  static void _initializeBuilder(MailMessageStructBuilder builder) => builder
    ..subject = ''
    ..text = ''
    ..html = ''
    ..firestoreUtilData = FirestoreUtilData();

  MailMessageStruct._();
  factory MailMessageStruct([void Function(MailMessageStructBuilder) updates]) =
      _$MailMessageStruct;
}

MailMessageStruct createMailMessageStruct({
  String? subject,
  String? text,
  String? html,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    MailMessageStruct(
      (m) => m
        ..subject = subject
        ..text = text
        ..html = html
        ..firestoreUtilData = FirestoreUtilData(
          clearUnsetFields: clearUnsetFields,
          create: create,
          delete: delete,
          fieldValues: fieldValues,
        ),
    );

MailMessageStruct? updateMailMessageStruct(
  MailMessageStruct? mailMessage, {
  bool clearUnsetFields = true,
}) =>
    mailMessage != null
        ? (mailMessage.toBuilder()
              ..firestoreUtilData =
                  FirestoreUtilData(clearUnsetFields: clearUnsetFields))
            .build()
        : null;

void addMailMessageStructData(
  Map<String, dynamic> firestoreData,
  MailMessageStruct? mailMessage,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (mailMessage == null) {
    return;
  }
  if (mailMessage.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && mailMessage.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final mailMessageData =
      getMailMessageFirestoreData(mailMessage, forFieldValue);
  final nestedData =
      mailMessageData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = mailMessage.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);

  return;
}

Map<String, dynamic> getMailMessageFirestoreData(
  MailMessageStruct? mailMessage, [
  bool forFieldValue = false,
]) {
  if (mailMessage == null) {
    return {};
  }
  final firestoreData =
      serializers.toFirestore(MailMessageStruct.serializer, mailMessage);

  // Add any Firestore field values
  mailMessage.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getMailMessageListFirestoreData(
  List<MailMessageStruct>? mailMessages,
) =>
    mailMessages?.map((m) => getMailMessageFirestoreData(m, true)).toList() ??
    [];
