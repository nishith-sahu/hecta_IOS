// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notifications_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<NotificationsRecord> _$notificationsRecordSerializer =
    new _$NotificationsRecordSerializer();

class _$NotificationsRecordSerializer
    implements StructuredSerializer<NotificationsRecord> {
  @override
  final Iterable<Type> types = const [
    NotificationsRecord,
    _$NotificationsRecord
  ];
  @override
  final String wireName = 'NotificationsRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, NotificationsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.notificationImageUrl;
    if (value != null) {
      result
        ..add('notificationImageUrl')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.timestamp;
    if (value != null) {
      result
        ..add('timestamp')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.targetAudience;
    if (value != null) {
      result
        ..add('targetAudience')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.numSent;
    if (value != null) {
      result
        ..add('numSent')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.parameterData;
    if (value != null) {
      result
        ..add('parameterData')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.notificationTitle;
    if (value != null) {
      result
        ..add('notificationTitle')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.initialPageName;
    if (value != null) {
      result
        ..add('initialPageName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.notificationText;
    if (value != null) {
      result
        ..add('notificationText')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.notificationSound;
    if (value != null) {
      result
        ..add('notificationSound')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.error;
    if (value != null) {
      result
        ..add('error')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.status;
    if (value != null) {
      result
        ..add('status')
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
  NotificationsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NotificationsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'notificationImageUrl':
          result.notificationImageUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'timestamp':
          result.timestamp = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'targetAudience':
          result.targetAudience = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'numSent':
          result.numSent = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'parameterData':
          result.parameterData = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'notificationTitle':
          result.notificationTitle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'initialPageName':
          result.initialPageName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'notificationText':
          result.notificationText = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'notificationSound':
          result.notificationSound = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'error':
          result.error = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
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

class _$NotificationsRecord extends NotificationsRecord {
  @override
  final String? notificationImageUrl;
  @override
  final DateTime? timestamp;
  @override
  final String? targetAudience;
  @override
  final String? numSent;
  @override
  final String? parameterData;
  @override
  final String? notificationTitle;
  @override
  final String? initialPageName;
  @override
  final String? notificationText;
  @override
  final String? notificationSound;
  @override
  final String? error;
  @override
  final String? status;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$NotificationsRecord(
          [void Function(NotificationsRecordBuilder)? updates]) =>
      (new NotificationsRecordBuilder()..update(updates))._build();

  _$NotificationsRecord._(
      {this.notificationImageUrl,
      this.timestamp,
      this.targetAudience,
      this.numSent,
      this.parameterData,
      this.notificationTitle,
      this.initialPageName,
      this.notificationText,
      this.notificationSound,
      this.error,
      this.status,
      this.ffRef})
      : super._();

  @override
  NotificationsRecord rebuild(
          void Function(NotificationsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NotificationsRecordBuilder toBuilder() =>
      new NotificationsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NotificationsRecord &&
        notificationImageUrl == other.notificationImageUrl &&
        timestamp == other.timestamp &&
        targetAudience == other.targetAudience &&
        numSent == other.numSent &&
        parameterData == other.parameterData &&
        notificationTitle == other.notificationTitle &&
        initialPageName == other.initialPageName &&
        notificationText == other.notificationText &&
        notificationSound == other.notificationSound &&
        error == other.error &&
        status == other.status &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    0,
                                                    notificationImageUrl
                                                        .hashCode),
                                                timestamp.hashCode),
                                            targetAudience.hashCode),
                                        numSent.hashCode),
                                    parameterData.hashCode),
                                notificationTitle.hashCode),
                            initialPageName.hashCode),
                        notificationText.hashCode),
                    notificationSound.hashCode),
                error.hashCode),
            status.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NotificationsRecord')
          ..add('notificationImageUrl', notificationImageUrl)
          ..add('timestamp', timestamp)
          ..add('targetAudience', targetAudience)
          ..add('numSent', numSent)
          ..add('parameterData', parameterData)
          ..add('notificationTitle', notificationTitle)
          ..add('initialPageName', initialPageName)
          ..add('notificationText', notificationText)
          ..add('notificationSound', notificationSound)
          ..add('error', error)
          ..add('status', status)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class NotificationsRecordBuilder
    implements Builder<NotificationsRecord, NotificationsRecordBuilder> {
  _$NotificationsRecord? _$v;

  String? _notificationImageUrl;
  String? get notificationImageUrl => _$this._notificationImageUrl;
  set notificationImageUrl(String? notificationImageUrl) =>
      _$this._notificationImageUrl = notificationImageUrl;

  DateTime? _timestamp;
  DateTime? get timestamp => _$this._timestamp;
  set timestamp(DateTime? timestamp) => _$this._timestamp = timestamp;

  String? _targetAudience;
  String? get targetAudience => _$this._targetAudience;
  set targetAudience(String? targetAudience) =>
      _$this._targetAudience = targetAudience;

  String? _numSent;
  String? get numSent => _$this._numSent;
  set numSent(String? numSent) => _$this._numSent = numSent;

  String? _parameterData;
  String? get parameterData => _$this._parameterData;
  set parameterData(String? parameterData) =>
      _$this._parameterData = parameterData;

  String? _notificationTitle;
  String? get notificationTitle => _$this._notificationTitle;
  set notificationTitle(String? notificationTitle) =>
      _$this._notificationTitle = notificationTitle;

  String? _initialPageName;
  String? get initialPageName => _$this._initialPageName;
  set initialPageName(String? initialPageName) =>
      _$this._initialPageName = initialPageName;

  String? _notificationText;
  String? get notificationText => _$this._notificationText;
  set notificationText(String? notificationText) =>
      _$this._notificationText = notificationText;

  String? _notificationSound;
  String? get notificationSound => _$this._notificationSound;
  set notificationSound(String? notificationSound) =>
      _$this._notificationSound = notificationSound;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  NotificationsRecordBuilder() {
    NotificationsRecord._initializeBuilder(this);
  }

  NotificationsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _notificationImageUrl = $v.notificationImageUrl;
      _timestamp = $v.timestamp;
      _targetAudience = $v.targetAudience;
      _numSent = $v.numSent;
      _parameterData = $v.parameterData;
      _notificationTitle = $v.notificationTitle;
      _initialPageName = $v.initialPageName;
      _notificationText = $v.notificationText;
      _notificationSound = $v.notificationSound;
      _error = $v.error;
      _status = $v.status;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NotificationsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NotificationsRecord;
  }

  @override
  void update(void Function(NotificationsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NotificationsRecord build() => _build();

  _$NotificationsRecord _build() {
    final _$result = _$v ??
        new _$NotificationsRecord._(
            notificationImageUrl: notificationImageUrl,
            timestamp: timestamp,
            targetAudience: targetAudience,
            numSent: numSent,
            parameterData: parameterData,
            notificationTitle: notificationTitle,
            initialPageName: initialPageName,
            notificationText: notificationText,
            notificationSound: notificationSound,
            error: error,
            status: status,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
