// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<NotificationStruct> _$notificationStructSerializer =
    new _$NotificationStructSerializer();

class _$NotificationStructSerializer
    implements StructuredSerializer<NotificationStruct> {
  @override
  final Iterable<Type> types = const [NotificationStruct, _$NotificationStruct];
  @override
  final String wireName = 'NotificationStruct';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, NotificationStruct object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'firestoreUtilData',
      serializers.serialize(object.firestoreUtilData,
          specifiedType: const FullType(FirestoreUtilData)),
    ];
    Object? value;
    value = object.text;
    if (value != null) {
      result
        ..add('text')
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
    value = object.time;
    if (value != null) {
      result
        ..add('time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    return result;
  }

  @override
  NotificationStruct deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NotificationStructBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'text':
          result.text = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'time':
          result.time = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
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

class _$NotificationStruct extends NotificationStruct {
  @override
  final String? text;
  @override
  final String? title;
  @override
  final DateTime? time;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$NotificationStruct(
          [void Function(NotificationStructBuilder)? updates]) =>
      (new NotificationStructBuilder()..update(updates))._build();

  _$NotificationStruct._(
      {this.text, this.title, this.time, required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'NotificationStruct', 'firestoreUtilData');
  }

  @override
  NotificationStruct rebuild(
          void Function(NotificationStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NotificationStructBuilder toBuilder() =>
      new NotificationStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NotificationStruct &&
        text == other.text &&
        title == other.title &&
        time == other.time &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, text.hashCode), title.hashCode), time.hashCode),
        firestoreUtilData.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NotificationStruct')
          ..add('text', text)
          ..add('title', title)
          ..add('time', time)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class NotificationStructBuilder
    implements Builder<NotificationStruct, NotificationStructBuilder> {
  _$NotificationStruct? _$v;

  String? _text;
  String? get text => _$this._text;
  set text(String? text) => _$this._text = text;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  DateTime? _time;
  DateTime? get time => _$this._time;
  set time(DateTime? time) => _$this._time = time;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  NotificationStructBuilder() {
    NotificationStruct._initializeBuilder(this);
  }

  NotificationStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _text = $v.text;
      _title = $v.title;
      _time = $v.time;
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NotificationStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NotificationStruct;
  }

  @override
  void update(void Function(NotificationStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NotificationStruct build() => _build();

  _$NotificationStruct _build() {
    final _$result = _$v ??
        new _$NotificationStruct._(
            text: text,
            title: title,
            time: time,
            firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                firestoreUtilData, r'NotificationStruct', 'firestoreUtilData'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
