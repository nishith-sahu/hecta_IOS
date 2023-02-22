import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'articles_record.g.dart';

abstract class ArticlesRecord
    implements Built<ArticlesRecord, ArticlesRecordBuilder> {
  static Serializer<ArticlesRecord> get serializer =>
      _$articlesRecordSerializer;

  String? get link;

  String? get thumbnail;

  String? get title;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ArticlesRecordBuilder builder) => builder
    ..link = ''
    ..thumbnail = ''
    ..title = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('articles');

  static Stream<ArticlesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ArticlesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ArticlesRecord._();
  factory ArticlesRecord([void Function(ArticlesRecordBuilder) updates]) =
      _$ArticlesRecord;

  static ArticlesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createArticlesRecordData({
  String? link,
  String? thumbnail,
  String? title,
}) {
  final firestoreData = serializers.toFirestore(
    ArticlesRecord.serializer,
    ArticlesRecord(
      (a) => a
        ..link = link
        ..thumbnail = thumbnail
        ..title = title,
    ),
  );

  return firestoreData;
}
