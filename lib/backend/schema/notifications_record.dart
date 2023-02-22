import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'notifications_record.g.dart';

abstract class NotificationsRecord
    implements Built<NotificationsRecord, NotificationsRecordBuilder> {
  static Serializer<NotificationsRecord> get serializer =>
      _$notificationsRecordSerializer;

  String? get notificationImageUrl;

  DateTime? get timestamp;

  String? get targetAudience;

  String? get numSent;

  String? get parameterData;

  String? get notificationTitle;

  String? get initialPageName;

  String? get notificationText;

  String? get notificationSound;

  String? get error;

  String? get status;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(NotificationsRecordBuilder builder) => builder
    ..notificationImageUrl = ''
    ..targetAudience = ''
    ..numSent = ''
    ..parameterData = ''
    ..notificationTitle = ''
    ..initialPageName = ''
    ..notificationText = ''
    ..notificationSound = ''
    ..error = ''
    ..status = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Notifications');

  static Stream<NotificationsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<NotificationsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  NotificationsRecord._();
  factory NotificationsRecord(
          [void Function(NotificationsRecordBuilder) updates]) =
      _$NotificationsRecord;

  static NotificationsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createNotificationsRecordData({
  String? notificationImageUrl,
  DateTime? timestamp,
  String? targetAudience,
  String? numSent,
  String? parameterData,
  String? notificationTitle,
  String? initialPageName,
  String? notificationText,
  String? notificationSound,
  String? error,
  String? status,
}) {
  final firestoreData = serializers.toFirestore(
    NotificationsRecord.serializer,
    NotificationsRecord(
      (n) => n
        ..notificationImageUrl = notificationImageUrl
        ..timestamp = timestamp
        ..targetAudience = targetAudience
        ..numSent = numSent
        ..parameterData = parameterData
        ..notificationTitle = notificationTitle
        ..initialPageName = initialPageName
        ..notificationText = notificationText
        ..notificationSound = notificationSound
        ..error = error
        ..status = status,
    ),
  );

  return firestoreData;
}
