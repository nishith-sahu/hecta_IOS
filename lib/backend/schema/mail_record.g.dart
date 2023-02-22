// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mail_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MailRecord> _$mailRecordSerializer = new _$MailRecordSerializer();

class _$MailRecordSerializer implements StructuredSerializer<MailRecord> {
  @override
  final Iterable<Type> types = const [MailRecord, _$MailRecord];
  @override
  final String wireName = 'MailRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, MailRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.to;
    if (value != null) {
      result
        ..add('to')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
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
  MailRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MailRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'to':
          result.to.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
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

class _$MailRecord extends MailRecord {
  @override
  final BuiltList<String>? to;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$MailRecord([void Function(MailRecordBuilder)? updates]) =>
      (new MailRecordBuilder()..update(updates))._build();

  _$MailRecord._({this.to, this.ffRef}) : super._();

  @override
  MailRecord rebuild(void Function(MailRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MailRecordBuilder toBuilder() => new MailRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MailRecord && to == other.to && ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, to.hashCode), ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MailRecord')
          ..add('to', to)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class MailRecordBuilder implements Builder<MailRecord, MailRecordBuilder> {
  _$MailRecord? _$v;

  ListBuilder<String>? _to;
  ListBuilder<String> get to => _$this._to ??= new ListBuilder<String>();
  set to(ListBuilder<String>? to) => _$this._to = to;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  MailRecordBuilder() {
    MailRecord._initializeBuilder(this);
  }

  MailRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _to = $v.to?.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MailRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MailRecord;
  }

  @override
  void update(void Function(MailRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MailRecord build() => _build();

  _$MailRecord _build() {
    _$MailRecord _$result;
    try {
      _$result = _$v ?? new _$MailRecord._(to: _to?.build(), ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'to';
        _to?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'MailRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
