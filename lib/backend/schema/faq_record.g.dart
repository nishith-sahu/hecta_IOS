// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'faq_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<FaqRecord> _$faqRecordSerializer = new _$FaqRecordSerializer();

class _$FaqRecordSerializer implements StructuredSerializer<FaqRecord> {
  @override
  final Iterable<Type> types = const [FaqRecord, _$FaqRecord];
  @override
  final String wireName = 'FaqRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, FaqRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.categories;
    if (value != null) {
      result
        ..add('categories')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.content;
    if (value != null) {
      result
        ..add('content')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  FaqRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FaqRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'categories':
          result.categories = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'content':
          result.content = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$FaqRecord extends FaqRecord {
  @override
  final String? uid;
  @override
  final String? categories;
  @override
  final String? content;
  @override
  final String? title;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$FaqRecord([void Function(FaqRecordBuilder)? updates]) =>
      (new FaqRecordBuilder()..update(updates))._build();

  _$FaqRecord._(
      {this.uid, this.categories, this.content, this.title, this.ffRef})
      : super._();

  @override
  FaqRecord rebuild(void Function(FaqRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FaqRecordBuilder toBuilder() => new FaqRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FaqRecord &&
        uid == other.uid &&
        categories == other.categories &&
        content == other.content &&
        title == other.title &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, uid.hashCode), categories.hashCode),
                content.hashCode),
            title.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FaqRecord')
          ..add('uid', uid)
          ..add('categories', categories)
          ..add('content', content)
          ..add('title', title)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class FaqRecordBuilder implements Builder<FaqRecord, FaqRecordBuilder> {
  _$FaqRecord? _$v;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  String? _categories;
  String? get categories => _$this._categories;
  set categories(String? categories) => _$this._categories = categories;

  String? _content;
  String? get content => _$this._content;
  set content(String? content) => _$this._content = content;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  FaqRecordBuilder() {
    FaqRecord._initializeBuilder(this);
  }

  FaqRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _uid = $v.uid;
      _categories = $v.categories;
      _content = $v.content;
      _title = $v.title;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FaqRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FaqRecord;
  }

  @override
  void update(void Function(FaqRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FaqRecord build() => _build();

  _$FaqRecord _build() {
    final _$result = _$v ??
        new _$FaqRecord._(
            uid: uid,
            categories: categories,
            content: content,
            title: title,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
