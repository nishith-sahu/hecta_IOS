// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feedback_price_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<FeedbackPriceRecord> _$feedbackPriceRecordSerializer =
    new _$FeedbackPriceRecordSerializer();

class _$FeedbackPriceRecordSerializer
    implements StructuredSerializer<FeedbackPriceRecord> {
  @override
  final Iterable<Type> types = const [
    FeedbackPriceRecord,
    _$FeedbackPriceRecord
  ];
  @override
  final String wireName = 'FeedbackPriceRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, FeedbackPriceRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.price;
    if (value != null) {
      result
        ..add('price')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.userId;
    if (value != null) {
      result
        ..add('user_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.propertyId;
    if (value != null) {
      result
        ..add('property_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.reservePrice;
    if (value != null) {
      result
        ..add('reserve_price')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.createdTime;
    if (value != null) {
      result
        ..add('created_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.location;
    if (value != null) {
      result
        ..add('location')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LatLng)));
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
  FeedbackPriceRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FeedbackPriceRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'user_id':
          result.userId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'property_id':
          result.propertyId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'reserve_price':
          result.reservePrice = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'location':
          result.location = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng?;
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

class _$FeedbackPriceRecord extends FeedbackPriceRecord {
  @override
  final int? price;
  @override
  final String? userId;
  @override
  final String? propertyId;
  @override
  final int? reservePrice;
  @override
  final DateTime? createdTime;
  @override
  final LatLng? location;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$FeedbackPriceRecord(
          [void Function(FeedbackPriceRecordBuilder)? updates]) =>
      (new FeedbackPriceRecordBuilder()..update(updates))._build();

  _$FeedbackPriceRecord._(
      {this.price,
      this.userId,
      this.propertyId,
      this.reservePrice,
      this.createdTime,
      this.location,
      this.ffRef})
      : super._();

  @override
  FeedbackPriceRecord rebuild(
          void Function(FeedbackPriceRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FeedbackPriceRecordBuilder toBuilder() =>
      new FeedbackPriceRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FeedbackPriceRecord &&
        price == other.price &&
        userId == other.userId &&
        propertyId == other.propertyId &&
        reservePrice == other.reservePrice &&
        createdTime == other.createdTime &&
        location == other.location &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, price.hashCode), userId.hashCode),
                        propertyId.hashCode),
                    reservePrice.hashCode),
                createdTime.hashCode),
            location.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FeedbackPriceRecord')
          ..add('price', price)
          ..add('userId', userId)
          ..add('propertyId', propertyId)
          ..add('reservePrice', reservePrice)
          ..add('createdTime', createdTime)
          ..add('location', location)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class FeedbackPriceRecordBuilder
    implements Builder<FeedbackPriceRecord, FeedbackPriceRecordBuilder> {
  _$FeedbackPriceRecord? _$v;

  int? _price;
  int? get price => _$this._price;
  set price(int? price) => _$this._price = price;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  String? _propertyId;
  String? get propertyId => _$this._propertyId;
  set propertyId(String? propertyId) => _$this._propertyId = propertyId;

  int? _reservePrice;
  int? get reservePrice => _$this._reservePrice;
  set reservePrice(int? reservePrice) => _$this._reservePrice = reservePrice;

  DateTime? _createdTime;
  DateTime? get createdTime => _$this._createdTime;
  set createdTime(DateTime? createdTime) => _$this._createdTime = createdTime;

  LatLng? _location;
  LatLng? get location => _$this._location;
  set location(LatLng? location) => _$this._location = location;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  FeedbackPriceRecordBuilder() {
    FeedbackPriceRecord._initializeBuilder(this);
  }

  FeedbackPriceRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _price = $v.price;
      _userId = $v.userId;
      _propertyId = $v.propertyId;
      _reservePrice = $v.reservePrice;
      _createdTime = $v.createdTime;
      _location = $v.location;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FeedbackPriceRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FeedbackPriceRecord;
  }

  @override
  void update(void Function(FeedbackPriceRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FeedbackPriceRecord build() => _build();

  _$FeedbackPriceRecord _build() {
    final _$result = _$v ??
        new _$FeedbackPriceRecord._(
            price: price,
            userId: userId,
            propertyId: propertyId,
            reservePrice: reservePrice,
            createdTime: createdTime,
            location: location,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
