// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoices_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InvoicesRecord> _$invoicesRecordSerializer =
    new _$InvoicesRecordSerializer();

class _$InvoicesRecordSerializer
    implements StructuredSerializer<InvoicesRecord> {
  @override
  final Iterable<Type> types = const [InvoicesRecord, _$InvoicesRecord];
  @override
  final String wireName = 'InvoicesRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, InvoicesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.userid;
    if (value != null) {
      result
        ..add('userid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.amount;
    if (value != null) {
      result
        ..add('amount')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.uids;
    if (value != null) {
      result
        ..add('uids')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.userRef;
    if (value != null) {
      result
        ..add('UserRef')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
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
  InvoicesRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InvoicesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'userid':
          result.userid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'amount':
          result.amount = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'uids':
          result.uids.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'UserRef':
          result.userRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
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

class _$InvoicesRecord extends InvoicesRecord {
  @override
  final String? email;
  @override
  final String? userid;
  @override
  final double? amount;
  @override
  final BuiltList<String>? uids;
  @override
  final String? status;
  @override
  final DocumentReference<Object?>? userRef;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$InvoicesRecord([void Function(InvoicesRecordBuilder)? updates]) =>
      (new InvoicesRecordBuilder()..update(updates))._build();

  _$InvoicesRecord._(
      {this.email,
      this.userid,
      this.amount,
      this.uids,
      this.status,
      this.userRef,
      this.ffRef})
      : super._();

  @override
  InvoicesRecord rebuild(void Function(InvoicesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InvoicesRecordBuilder toBuilder() =>
      new InvoicesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InvoicesRecord &&
        email == other.email &&
        userid == other.userid &&
        amount == other.amount &&
        uids == other.uids &&
        status == other.status &&
        userRef == other.userRef &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, email.hashCode), userid.hashCode),
                        amount.hashCode),
                    uids.hashCode),
                status.hashCode),
            userRef.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'InvoicesRecord')
          ..add('email', email)
          ..add('userid', userid)
          ..add('amount', amount)
          ..add('uids', uids)
          ..add('status', status)
          ..add('userRef', userRef)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class InvoicesRecordBuilder
    implements Builder<InvoicesRecord, InvoicesRecordBuilder> {
  _$InvoicesRecord? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _userid;
  String? get userid => _$this._userid;
  set userid(String? userid) => _$this._userid = userid;

  double? _amount;
  double? get amount => _$this._amount;
  set amount(double? amount) => _$this._amount = amount;

  ListBuilder<String>? _uids;
  ListBuilder<String> get uids => _$this._uids ??= new ListBuilder<String>();
  set uids(ListBuilder<String>? uids) => _$this._uids = uids;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  DocumentReference<Object?>? _userRef;
  DocumentReference<Object?>? get userRef => _$this._userRef;
  set userRef(DocumentReference<Object?>? userRef) => _$this._userRef = userRef;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  InvoicesRecordBuilder() {
    InvoicesRecord._initializeBuilder(this);
  }

  InvoicesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _userid = $v.userid;
      _amount = $v.amount;
      _uids = $v.uids?.toBuilder();
      _status = $v.status;
      _userRef = $v.userRef;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InvoicesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InvoicesRecord;
  }

  @override
  void update(void Function(InvoicesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InvoicesRecord build() => _build();

  _$InvoicesRecord _build() {
    _$InvoicesRecord _$result;
    try {
      _$result = _$v ??
          new _$InvoicesRecord._(
              email: email,
              userid: userid,
              amount: amount,
              uids: _uids?.build(),
              status: status,
              userRef: userRef,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'uids';
        _uids?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'InvoicesRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
