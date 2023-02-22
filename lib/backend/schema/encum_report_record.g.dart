// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'encum_report_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<EncumReportRecord> _$encumReportRecordSerializer =
    new _$EncumReportRecordSerializer();

class _$EncumReportRecordSerializer
    implements StructuredSerializer<EncumReportRecord> {
  @override
  final Iterable<Type> types = const [EncumReportRecord, _$EncumReportRecord];
  @override
  final String wireName = 'EncumReportRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, EncumReportRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.state;
    if (value != null) {
      result
        ..add('State')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.url;
    if (value != null) {
      result
        ..add('url')
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
  EncumReportRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new EncumReportRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'State':
          result.state = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
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

class _$EncumReportRecord extends EncumReportRecord {
  @override
  final String? state;
  @override
  final String? uid;
  @override
  final String? url;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$EncumReportRecord(
          [void Function(EncumReportRecordBuilder)? updates]) =>
      (new EncumReportRecordBuilder()..update(updates))._build();

  _$EncumReportRecord._({this.state, this.uid, this.url, this.ffRef})
      : super._();

  @override
  EncumReportRecord rebuild(void Function(EncumReportRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EncumReportRecordBuilder toBuilder() =>
      new EncumReportRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EncumReportRecord &&
        state == other.state &&
        uid == other.uid &&
        url == other.url &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc($jc(0, state.hashCode), uid.hashCode), url.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EncumReportRecord')
          ..add('state', state)
          ..add('uid', uid)
          ..add('url', url)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class EncumReportRecordBuilder
    implements Builder<EncumReportRecord, EncumReportRecordBuilder> {
  _$EncumReportRecord? _$v;

  String? _state;
  String? get state => _$this._state;
  set state(String? state) => _$this._state = state;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  EncumReportRecordBuilder() {
    EncumReportRecord._initializeBuilder(this);
  }

  EncumReportRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _state = $v.state;
      _uid = $v.uid;
      _url = $v.url;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EncumReportRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EncumReportRecord;
  }

  @override
  void update(void Function(EncumReportRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EncumReportRecord build() => _build();

  _$EncumReportRecord _build() {
    final _$result = _$v ??
        new _$EncumReportRecord._(
            state: state, uid: uid, url: url, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
