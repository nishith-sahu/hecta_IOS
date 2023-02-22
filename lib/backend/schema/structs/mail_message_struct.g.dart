// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mail_message_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MailMessageStruct> _$mailMessageStructSerializer =
    new _$MailMessageStructSerializer();

class _$MailMessageStructSerializer
    implements StructuredSerializer<MailMessageStruct> {
  @override
  final Iterable<Type> types = const [MailMessageStruct, _$MailMessageStruct];
  @override
  final String wireName = 'MailMessageStruct';

  @override
  Iterable<Object?> serialize(Serializers serializers, MailMessageStruct object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'firestoreUtilData',
      serializers.serialize(object.firestoreUtilData,
          specifiedType: const FullType(FirestoreUtilData)),
    ];
    Object? value;
    value = object.subject;
    if (value != null) {
      result
        ..add('subject')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.text;
    if (value != null) {
      result
        ..add('text')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.html;
    if (value != null) {
      result
        ..add('html')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  MailMessageStruct deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MailMessageStructBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'subject':
          result.subject = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'text':
          result.text = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'html':
          result.html = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'firestoreUtilData':
          result.firestoreUtilData = serializers.deserialize(value,
                  specifiedType: const FullType(FirestoreUtilData))!
              as FirestoreUtilData;
          break;
      }
    }

    return result.build();
  }
}

class _$MailMessageStruct extends MailMessageStruct {
  @override
  final String? subject;
  @override
  final String? text;
  @override
  final String? html;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$MailMessageStruct(
          [void Function(MailMessageStructBuilder)? updates]) =>
      (new MailMessageStructBuilder()..update(updates))._build();

  _$MailMessageStruct._(
      {this.subject, this.text, this.html, required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'MailMessageStruct', 'firestoreUtilData');
  }

  @override
  MailMessageStruct rebuild(void Function(MailMessageStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MailMessageStructBuilder toBuilder() =>
      new MailMessageStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MailMessageStruct &&
        subject == other.subject &&
        text == other.text &&
        html == other.html &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, subject.hashCode), text.hashCode), html.hashCode),
        firestoreUtilData.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MailMessageStruct')
          ..add('subject', subject)
          ..add('text', text)
          ..add('html', html)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class MailMessageStructBuilder
    implements Builder<MailMessageStruct, MailMessageStructBuilder> {
  _$MailMessageStruct? _$v;

  String? _subject;
  String? get subject => _$this._subject;
  set subject(String? subject) => _$this._subject = subject;

  String? _text;
  String? get text => _$this._text;
  set text(String? text) => _$this._text = text;

  String? _html;
  String? get html => _$this._html;
  set html(String? html) => _$this._html = html;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  MailMessageStructBuilder() {
    MailMessageStruct._initializeBuilder(this);
  }

  MailMessageStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _subject = $v.subject;
      _text = $v.text;
      _html = $v.html;
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MailMessageStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MailMessageStruct;
  }

  @override
  void update(void Function(MailMessageStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MailMessageStruct build() => _build();

  _$MailMessageStruct _build() {
    final _$result = _$v ??
        new _$MailMessageStruct._(
            subject: subject,
            text: text,
            html: html,
            firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                firestoreUtilData, r'MailMessageStruct', 'firestoreUtilData'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
