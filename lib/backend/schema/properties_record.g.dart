// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'properties_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PropertiesRecord> _$propertiesRecordSerializer =
    new _$PropertiesRecordSerializer();

class _$PropertiesRecordSerializer
    implements StructuredSerializer<PropertiesRecord> {
  @override
  final Iterable<Type> types = const [PropertiesRecord, _$PropertiesRecord];
  @override
  final String wireName = 'PropertiesRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, PropertiesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.address;
    if (value != null) {
      result
        ..add('address')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.approximateLocation;
    if (value != null) {
      result
        ..add('approximate_location')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.area;
    if (value != null) {
      result
        ..add('area')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.areaBuiltup;
    if (value != null) {
      result
        ..add('area_builtup')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.areaTotal;
    if (value != null) {
      result
        ..add('area_total')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.auctionEndTime;
    if (value != null) {
      result
        ..add('auction_end_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.auctionReservePrice;
    if (value != null) {
      result
        ..add('auction_reserve_price')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.auctionStartTime;
    if (value != null) {
      result
        ..add('auction_start_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.auctionTimeExtension;
    if (value != null) {
      result
        ..add('auction_time_extension')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.auctionPortal;
    if (value != null) {
      result
        ..add('auction_portal')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.boundaryNorth;
    if (value != null) {
      result
        ..add('boundary_north')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.boundarySouth;
    if (value != null) {
      result
        ..add('boundary_south')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.boundaryEast;
    if (value != null) {
      result
        ..add('boundary_east')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.boundaryWest;
    if (value != null) {
      result
        ..add('boundary_west')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.boundaryText;
    if (value != null) {
      result
        ..add('boundary_text')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.city;
    if (value != null) {
      result
        ..add('city')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdTime;
    if (value != null) {
      result
        ..add('created_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.encumReportPrice;
    if (value != null) {
      result
        ..add('encum_report_price')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.institutionBranch;
    if (value != null) {
      result
        ..add('institution_branch')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.institutionContactName;
    if (value != null) {
      result
        ..add('institution_contact_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.institutionLogo;
    if (value != null) {
      result
        ..add('institution_logo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.institutionName;
    if (value != null) {
      result
        ..add('institution_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.instock;
    if (value != null) {
      result
        ..add('instock')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.noticeEnglish;
    if (value != null) {
      result
        ..add('notice_english')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.noticeRegional;
    if (value != null) {
      result
        ..add('notice_regional')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.panoramicPhoto;
    if (value != null) {
      result
        ..add('panoramic_photo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.pincode;
    if (value != null) {
      result
        ..add('pincode')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.possessionStatus;
    if (value != null) {
      result
        ..add('possession_status')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.productCategories;
    if (value != null) {
      result
        ..add('product_categories')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.regularPhoto;
    if (value != null) {
      result
        ..add('regular_photo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.regularPrice;
    if (value != null) {
      result
        ..add('regular_price')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.salePrice;
    if (value != null) {
      result
        ..add('sale_price')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.seoTags;
    if (value != null) {
      result
        ..add('seo_tags')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.sku;
    if (value != null) {
      result
        ..add('sku')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.sroOffice;
    if (value != null) {
      result
        ..add('sro_office')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.stampDuty;
    if (value != null) {
      result
        ..add('stamp_duty')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.state;
    if (value != null) {
      result
        ..add('state')
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
    value = object.type;
    if (value != null) {
      result
        ..add('type')
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
    value = object.video;
    if (value != null) {
      result
        ..add('video')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.visitReportPrice;
    if (value != null) {
      result
        ..add('visit_report_price')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.institutionContactNumber;
    if (value != null) {
      result
        ..add('institution_contact_number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.latitude;
    if (value != null) {
      result
        ..add('latitude')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.longitude;
    if (value != null) {
      result
        ..add('longitude')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.isActive;
    if (value != null) {
      result
        ..add('isActive')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.auctionMinimumIncreament;
    if (value != null) {
      result
        ..add('auction_minimum_increament')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.applicationEndDate;
    if (value != null) {
      result
        ..add('application_end_date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.propertyId;
    if (value != null) {
      result
        ..add('property_id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.dueDilligenceReportPrice;
    if (value != null) {
      result
        ..add('due_dilligence_report_price')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.postModified;
    if (value != null) {
      result
        ..add('post_modified')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.location;
    if (value != null) {
      result
        ..add('location')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.additionalDetail;
    if (value != null) {
      result
        ..add('additional_detail')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.perUnitRate;
    if (value != null) {
      result
        ..add('per_unit_rate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.estimatedValue;
    if (value != null) {
      result
        ..add('estimated_value')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.propertyUrl;
    if (value != null) {
      result
        ..add('property_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.auctionDiscount;
    if (value != null) {
      result
        ..add('auction_discount')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.emd;
    if (value != null) {
      result
        ..add('emd')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.street;
    if (value != null) {
      result
        ..add('Street')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.borrower;
    if (value != null) {
      result
        ..add('borrower')
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
  PropertiesRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PropertiesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'address':
          result.address = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'approximate_location':
          result.approximateLocation = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'area':
          result.area = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'area_builtup':
          result.areaBuiltup = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'area_total':
          result.areaTotal = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'auction_end_time':
          result.auctionEndTime = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'auction_reserve_price':
          result.auctionReservePrice = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'auction_start_time':
          result.auctionStartTime = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'auction_time_extension':
          result.auctionTimeExtension = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'auction_portal':
          result.auctionPortal = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'boundary_north':
          result.boundaryNorth = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'boundary_south':
          result.boundarySouth = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'boundary_east':
          result.boundaryEast = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'boundary_west':
          result.boundaryWest = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'boundary_text':
          result.boundaryText = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'city':
          result.city = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'encum_report_price':
          result.encumReportPrice = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'institution_branch':
          result.institutionBranch = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'institution_contact_name':
          result.institutionContactName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'institution_logo':
          result.institutionLogo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'institution_name':
          result.institutionName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'instock':
          result.instock = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'notice_english':
          result.noticeEnglish = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'notice_regional':
          result.noticeRegional = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'panoramic_photo':
          result.panoramicPhoto = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'pincode':
          result.pincode = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'possession_status':
          result.possessionStatus = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'product_categories':
          result.productCategories = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'regular_photo':
          result.regularPhoto = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'regular_price':
          result.regularPrice = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'sale_price':
          result.salePrice = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'seo_tags':
          result.seoTags = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'sku':
          result.sku = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'sro_office':
          result.sroOffice = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'stamp_duty':
          result.stampDuty = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'state':
          result.state = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'video':
          result.video = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'visit_report_price':
          result.visitReportPrice = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'institution_contact_number':
          result.institutionContactNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'latitude':
          result.latitude = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'longitude':
          result.longitude = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'isActive':
          result.isActive = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'auction_minimum_increament':
          result.auctionMinimumIncreament = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'application_end_date':
          result.applicationEndDate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'property_id':
          result.propertyId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'due_dilligence_report_price':
          result.dueDilligenceReportPrice = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'post_modified':
          result.postModified = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'location':
          result.location = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'additional_detail':
          result.additionalDetail = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'per_unit_rate':
          result.perUnitRate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'estimated_value':
          result.estimatedValue = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'property_url':
          result.propertyUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'auction_discount':
          result.auctionDiscount = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'emd':
          result.emd = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Street':
          result.street = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'borrower':
          result.borrower = serializers.deserialize(value,
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

class _$PropertiesRecord extends PropertiesRecord {
  @override
  final String? address;
  @override
  final String? approximateLocation;
  @override
  final String? area;
  @override
  final String? areaBuiltup;
  @override
  final String? areaTotal;
  @override
  final String? auctionEndTime;
  @override
  final int? auctionReservePrice;
  @override
  final String? auctionStartTime;
  @override
  final String? auctionTimeExtension;
  @override
  final String? auctionPortal;
  @override
  final String? boundaryNorth;
  @override
  final String? boundarySouth;
  @override
  final String? boundaryEast;
  @override
  final String? boundaryWest;
  @override
  final String? boundaryText;
  @override
  final String? city;
  @override
  final String? createdTime;
  @override
  final String? description;
  @override
  final int? encumReportPrice;
  @override
  final String? institutionBranch;
  @override
  final String? institutionContactName;
  @override
  final String? institutionLogo;
  @override
  final String? institutionName;
  @override
  final String? instock;
  @override
  final String? noticeEnglish;
  @override
  final String? noticeRegional;
  @override
  final String? panoramicPhoto;
  @override
  final int? pincode;
  @override
  final String? possessionStatus;
  @override
  final String? productCategories;
  @override
  final String? regularPhoto;
  @override
  final int? regularPrice;
  @override
  final int? salePrice;
  @override
  final String? seoTags;
  @override
  final String? sku;
  @override
  final String? sroOffice;
  @override
  final String? stampDuty;
  @override
  final String? state;
  @override
  final String? title;
  @override
  final String? type;
  @override
  final String? uid;
  @override
  final String? video;
  @override
  final int? visitReportPrice;
  @override
  final String? institutionContactNumber;
  @override
  final double? latitude;
  @override
  final double? longitude;
  @override
  final bool? isActive;
  @override
  final String? auctionMinimumIncreament;
  @override
  final String? applicationEndDate;
  @override
  final int? propertyId;
  @override
  final int? dueDilligenceReportPrice;
  @override
  final String? postModified;
  @override
  final String? location;
  @override
  final String? additionalDetail;
  @override
  final String? perUnitRate;
  @override
  final String? estimatedValue;
  @override
  final String? propertyUrl;
  @override
  final String? auctionDiscount;
  @override
  final String? emd;
  @override
  final String? street;
  @override
  final String? borrower;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$PropertiesRecord(
          [void Function(PropertiesRecordBuilder)? updates]) =>
      (new PropertiesRecordBuilder()..update(updates))._build();

  _$PropertiesRecord._(
      {this.address,
      this.approximateLocation,
      this.area,
      this.areaBuiltup,
      this.areaTotal,
      this.auctionEndTime,
      this.auctionReservePrice,
      this.auctionStartTime,
      this.auctionTimeExtension,
      this.auctionPortal,
      this.boundaryNorth,
      this.boundarySouth,
      this.boundaryEast,
      this.boundaryWest,
      this.boundaryText,
      this.city,
      this.createdTime,
      this.description,
      this.encumReportPrice,
      this.institutionBranch,
      this.institutionContactName,
      this.institutionLogo,
      this.institutionName,
      this.instock,
      this.noticeEnglish,
      this.noticeRegional,
      this.panoramicPhoto,
      this.pincode,
      this.possessionStatus,
      this.productCategories,
      this.regularPhoto,
      this.regularPrice,
      this.salePrice,
      this.seoTags,
      this.sku,
      this.sroOffice,
      this.stampDuty,
      this.state,
      this.title,
      this.type,
      this.uid,
      this.video,
      this.visitReportPrice,
      this.institutionContactNumber,
      this.latitude,
      this.longitude,
      this.isActive,
      this.auctionMinimumIncreament,
      this.applicationEndDate,
      this.propertyId,
      this.dueDilligenceReportPrice,
      this.postModified,
      this.location,
      this.additionalDetail,
      this.perUnitRate,
      this.estimatedValue,
      this.propertyUrl,
      this.auctionDiscount,
      this.emd,
      this.street,
      this.borrower,
      this.ffRef})
      : super._();

  @override
  PropertiesRecord rebuild(void Function(PropertiesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PropertiesRecordBuilder toBuilder() =>
      new PropertiesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PropertiesRecord &&
        address == other.address &&
        approximateLocation == other.approximateLocation &&
        area == other.area &&
        areaBuiltup == other.areaBuiltup &&
        areaTotal == other.areaTotal &&
        auctionEndTime == other.auctionEndTime &&
        auctionReservePrice == other.auctionReservePrice &&
        auctionStartTime == other.auctionStartTime &&
        auctionTimeExtension == other.auctionTimeExtension &&
        auctionPortal == other.auctionPortal &&
        boundaryNorth == other.boundaryNorth &&
        boundarySouth == other.boundarySouth &&
        boundaryEast == other.boundaryEast &&
        boundaryWest == other.boundaryWest &&
        boundaryText == other.boundaryText &&
        city == other.city &&
        createdTime == other.createdTime &&
        description == other.description &&
        encumReportPrice == other.encumReportPrice &&
        institutionBranch == other.institutionBranch &&
        institutionContactName == other.institutionContactName &&
        institutionLogo == other.institutionLogo &&
        institutionName == other.institutionName &&
        instock == other.instock &&
        noticeEnglish == other.noticeEnglish &&
        noticeRegional == other.noticeRegional &&
        panoramicPhoto == other.panoramicPhoto &&
        pincode == other.pincode &&
        possessionStatus == other.possessionStatus &&
        productCategories == other.productCategories &&
        regularPhoto == other.regularPhoto &&
        regularPrice == other.regularPrice &&
        salePrice == other.salePrice &&
        seoTags == other.seoTags &&
        sku == other.sku &&
        sroOffice == other.sroOffice &&
        stampDuty == other.stampDuty &&
        state == other.state &&
        title == other.title &&
        type == other.type &&
        uid == other.uid &&
        video == other.video &&
        visitReportPrice == other.visitReportPrice &&
        institutionContactNumber == other.institutionContactNumber &&
        latitude == other.latitude &&
        longitude == other.longitude &&
        isActive == other.isActive &&
        auctionMinimumIncreament == other.auctionMinimumIncreament &&
        applicationEndDate == other.applicationEndDate &&
        propertyId == other.propertyId &&
        dueDilligenceReportPrice == other.dueDilligenceReportPrice &&
        postModified == other.postModified &&
        location == other.location &&
        additionalDetail == other.additionalDetail &&
        perUnitRate == other.perUnitRate &&
        estimatedValue == other.estimatedValue &&
        propertyUrl == other.propertyUrl &&
        auctionDiscount == other.auctionDiscount &&
        emd == other.emd &&
        street == other.street &&
        borrower == other.borrower &&
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
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc(0, address.hashCode), approximateLocation.hashCode), area.hashCode), areaBuiltup.hashCode), areaTotal.hashCode), auctionEndTime.hashCode), auctionReservePrice.hashCode), auctionStartTime.hashCode), auctionTimeExtension.hashCode), auctionPortal.hashCode), boundaryNorth.hashCode), boundarySouth.hashCode), boundaryEast.hashCode), boundaryWest.hashCode), boundaryText.hashCode), city.hashCode), createdTime.hashCode), description.hashCode), encumReportPrice.hashCode), institutionBranch.hashCode), institutionContactName.hashCode), institutionLogo.hashCode), institutionName.hashCode), instock.hashCode), noticeEnglish.hashCode), noticeRegional.hashCode), panoramicPhoto.hashCode), pincode.hashCode), possessionStatus.hashCode), productCategories.hashCode), regularPhoto.hashCode), regularPrice.hashCode), salePrice.hashCode), seoTags.hashCode), sku.hashCode), sroOffice.hashCode), stampDuty.hashCode), state.hashCode), title.hashCode), type.hashCode), uid.hashCode), video.hashCode), visitReportPrice.hashCode),
                                                                                institutionContactNumber.hashCode),
                                                                            latitude.hashCode),
                                                                        longitude.hashCode),
                                                                    isActive.hashCode),
                                                                auctionMinimumIncreament.hashCode),
                                                            applicationEndDate.hashCode),
                                                        propertyId.hashCode),
                                                    dueDilligenceReportPrice.hashCode),
                                                postModified.hashCode),
                                            location.hashCode),
                                        additionalDetail.hashCode),
                                    perUnitRate.hashCode),
                                estimatedValue.hashCode),
                            propertyUrl.hashCode),
                        auctionDiscount.hashCode),
                    emd.hashCode),
                street.hashCode),
            borrower.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PropertiesRecord')
          ..add('address', address)
          ..add('approximateLocation', approximateLocation)
          ..add('area', area)
          ..add('areaBuiltup', areaBuiltup)
          ..add('areaTotal', areaTotal)
          ..add('auctionEndTime', auctionEndTime)
          ..add('auctionReservePrice', auctionReservePrice)
          ..add('auctionStartTime', auctionStartTime)
          ..add('auctionTimeExtension', auctionTimeExtension)
          ..add('auctionPortal', auctionPortal)
          ..add('boundaryNorth', boundaryNorth)
          ..add('boundarySouth', boundarySouth)
          ..add('boundaryEast', boundaryEast)
          ..add('boundaryWest', boundaryWest)
          ..add('boundaryText', boundaryText)
          ..add('city', city)
          ..add('createdTime', createdTime)
          ..add('description', description)
          ..add('encumReportPrice', encumReportPrice)
          ..add('institutionBranch', institutionBranch)
          ..add('institutionContactName', institutionContactName)
          ..add('institutionLogo', institutionLogo)
          ..add('institutionName', institutionName)
          ..add('instock', instock)
          ..add('noticeEnglish', noticeEnglish)
          ..add('noticeRegional', noticeRegional)
          ..add('panoramicPhoto', panoramicPhoto)
          ..add('pincode', pincode)
          ..add('possessionStatus', possessionStatus)
          ..add('productCategories', productCategories)
          ..add('regularPhoto', regularPhoto)
          ..add('regularPrice', regularPrice)
          ..add('salePrice', salePrice)
          ..add('seoTags', seoTags)
          ..add('sku', sku)
          ..add('sroOffice', sroOffice)
          ..add('stampDuty', stampDuty)
          ..add('state', state)
          ..add('title', title)
          ..add('type', type)
          ..add('uid', uid)
          ..add('video', video)
          ..add('visitReportPrice', visitReportPrice)
          ..add('institutionContactNumber', institutionContactNumber)
          ..add('latitude', latitude)
          ..add('longitude', longitude)
          ..add('isActive', isActive)
          ..add('auctionMinimumIncreament', auctionMinimumIncreament)
          ..add('applicationEndDate', applicationEndDate)
          ..add('propertyId', propertyId)
          ..add('dueDilligenceReportPrice', dueDilligenceReportPrice)
          ..add('postModified', postModified)
          ..add('location', location)
          ..add('additionalDetail', additionalDetail)
          ..add('perUnitRate', perUnitRate)
          ..add('estimatedValue', estimatedValue)
          ..add('propertyUrl', propertyUrl)
          ..add('auctionDiscount', auctionDiscount)
          ..add('emd', emd)
          ..add('street', street)
          ..add('borrower', borrower)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class PropertiesRecordBuilder
    implements Builder<PropertiesRecord, PropertiesRecordBuilder> {
  _$PropertiesRecord? _$v;

  String? _address;
  String? get address => _$this._address;
  set address(String? address) => _$this._address = address;

  String? _approximateLocation;
  String? get approximateLocation => _$this._approximateLocation;
  set approximateLocation(String? approximateLocation) =>
      _$this._approximateLocation = approximateLocation;

  String? _area;
  String? get area => _$this._area;
  set area(String? area) => _$this._area = area;

  String? _areaBuiltup;
  String? get areaBuiltup => _$this._areaBuiltup;
  set areaBuiltup(String? areaBuiltup) => _$this._areaBuiltup = areaBuiltup;

  String? _areaTotal;
  String? get areaTotal => _$this._areaTotal;
  set areaTotal(String? areaTotal) => _$this._areaTotal = areaTotal;

  String? _auctionEndTime;
  String? get auctionEndTime => _$this._auctionEndTime;
  set auctionEndTime(String? auctionEndTime) =>
      _$this._auctionEndTime = auctionEndTime;

  int? _auctionReservePrice;
  int? get auctionReservePrice => _$this._auctionReservePrice;
  set auctionReservePrice(int? auctionReservePrice) =>
      _$this._auctionReservePrice = auctionReservePrice;

  String? _auctionStartTime;
  String? get auctionStartTime => _$this._auctionStartTime;
  set auctionStartTime(String? auctionStartTime) =>
      _$this._auctionStartTime = auctionStartTime;

  String? _auctionTimeExtension;
  String? get auctionTimeExtension => _$this._auctionTimeExtension;
  set auctionTimeExtension(String? auctionTimeExtension) =>
      _$this._auctionTimeExtension = auctionTimeExtension;

  String? _auctionPortal;
  String? get auctionPortal => _$this._auctionPortal;
  set auctionPortal(String? auctionPortal) =>
      _$this._auctionPortal = auctionPortal;

  String? _boundaryNorth;
  String? get boundaryNorth => _$this._boundaryNorth;
  set boundaryNorth(String? boundaryNorth) =>
      _$this._boundaryNorth = boundaryNorth;

  String? _boundarySouth;
  String? get boundarySouth => _$this._boundarySouth;
  set boundarySouth(String? boundarySouth) =>
      _$this._boundarySouth = boundarySouth;

  String? _boundaryEast;
  String? get boundaryEast => _$this._boundaryEast;
  set boundaryEast(String? boundaryEast) => _$this._boundaryEast = boundaryEast;

  String? _boundaryWest;
  String? get boundaryWest => _$this._boundaryWest;
  set boundaryWest(String? boundaryWest) => _$this._boundaryWest = boundaryWest;

  String? _boundaryText;
  String? get boundaryText => _$this._boundaryText;
  set boundaryText(String? boundaryText) => _$this._boundaryText = boundaryText;

  String? _city;
  String? get city => _$this._city;
  set city(String? city) => _$this._city = city;

  String? _createdTime;
  String? get createdTime => _$this._createdTime;
  set createdTime(String? createdTime) => _$this._createdTime = createdTime;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  int? _encumReportPrice;
  int? get encumReportPrice => _$this._encumReportPrice;
  set encumReportPrice(int? encumReportPrice) =>
      _$this._encumReportPrice = encumReportPrice;

  String? _institutionBranch;
  String? get institutionBranch => _$this._institutionBranch;
  set institutionBranch(String? institutionBranch) =>
      _$this._institutionBranch = institutionBranch;

  String? _institutionContactName;
  String? get institutionContactName => _$this._institutionContactName;
  set institutionContactName(String? institutionContactName) =>
      _$this._institutionContactName = institutionContactName;

  String? _institutionLogo;
  String? get institutionLogo => _$this._institutionLogo;
  set institutionLogo(String? institutionLogo) =>
      _$this._institutionLogo = institutionLogo;

  String? _institutionName;
  String? get institutionName => _$this._institutionName;
  set institutionName(String? institutionName) =>
      _$this._institutionName = institutionName;

  String? _instock;
  String? get instock => _$this._instock;
  set instock(String? instock) => _$this._instock = instock;

  String? _noticeEnglish;
  String? get noticeEnglish => _$this._noticeEnglish;
  set noticeEnglish(String? noticeEnglish) =>
      _$this._noticeEnglish = noticeEnglish;

  String? _noticeRegional;
  String? get noticeRegional => _$this._noticeRegional;
  set noticeRegional(String? noticeRegional) =>
      _$this._noticeRegional = noticeRegional;

  String? _panoramicPhoto;
  String? get panoramicPhoto => _$this._panoramicPhoto;
  set panoramicPhoto(String? panoramicPhoto) =>
      _$this._panoramicPhoto = panoramicPhoto;

  int? _pincode;
  int? get pincode => _$this._pincode;
  set pincode(int? pincode) => _$this._pincode = pincode;

  String? _possessionStatus;
  String? get possessionStatus => _$this._possessionStatus;
  set possessionStatus(String? possessionStatus) =>
      _$this._possessionStatus = possessionStatus;

  String? _productCategories;
  String? get productCategories => _$this._productCategories;
  set productCategories(String? productCategories) =>
      _$this._productCategories = productCategories;

  String? _regularPhoto;
  String? get regularPhoto => _$this._regularPhoto;
  set regularPhoto(String? regularPhoto) => _$this._regularPhoto = regularPhoto;

  int? _regularPrice;
  int? get regularPrice => _$this._regularPrice;
  set regularPrice(int? regularPrice) => _$this._regularPrice = regularPrice;

  int? _salePrice;
  int? get salePrice => _$this._salePrice;
  set salePrice(int? salePrice) => _$this._salePrice = salePrice;

  String? _seoTags;
  String? get seoTags => _$this._seoTags;
  set seoTags(String? seoTags) => _$this._seoTags = seoTags;

  String? _sku;
  String? get sku => _$this._sku;
  set sku(String? sku) => _$this._sku = sku;

  String? _sroOffice;
  String? get sroOffice => _$this._sroOffice;
  set sroOffice(String? sroOffice) => _$this._sroOffice = sroOffice;

  String? _stampDuty;
  String? get stampDuty => _$this._stampDuty;
  set stampDuty(String? stampDuty) => _$this._stampDuty = stampDuty;

  String? _state;
  String? get state => _$this._state;
  set state(String? state) => _$this._state = state;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  String? _video;
  String? get video => _$this._video;
  set video(String? video) => _$this._video = video;

  int? _visitReportPrice;
  int? get visitReportPrice => _$this._visitReportPrice;
  set visitReportPrice(int? visitReportPrice) =>
      _$this._visitReportPrice = visitReportPrice;

  String? _institutionContactNumber;
  String? get institutionContactNumber => _$this._institutionContactNumber;
  set institutionContactNumber(String? institutionContactNumber) =>
      _$this._institutionContactNumber = institutionContactNumber;

  double? _latitude;
  double? get latitude => _$this._latitude;
  set latitude(double? latitude) => _$this._latitude = latitude;

  double? _longitude;
  double? get longitude => _$this._longitude;
  set longitude(double? longitude) => _$this._longitude = longitude;

  bool? _isActive;
  bool? get isActive => _$this._isActive;
  set isActive(bool? isActive) => _$this._isActive = isActive;

  String? _auctionMinimumIncreament;
  String? get auctionMinimumIncreament => _$this._auctionMinimumIncreament;
  set auctionMinimumIncreament(String? auctionMinimumIncreament) =>
      _$this._auctionMinimumIncreament = auctionMinimumIncreament;

  String? _applicationEndDate;
  String? get applicationEndDate => _$this._applicationEndDate;
  set applicationEndDate(String? applicationEndDate) =>
      _$this._applicationEndDate = applicationEndDate;

  int? _propertyId;
  int? get propertyId => _$this._propertyId;
  set propertyId(int? propertyId) => _$this._propertyId = propertyId;

  int? _dueDilligenceReportPrice;
  int? get dueDilligenceReportPrice => _$this._dueDilligenceReportPrice;
  set dueDilligenceReportPrice(int? dueDilligenceReportPrice) =>
      _$this._dueDilligenceReportPrice = dueDilligenceReportPrice;

  String? _postModified;
  String? get postModified => _$this._postModified;
  set postModified(String? postModified) => _$this._postModified = postModified;

  String? _location;
  String? get location => _$this._location;
  set location(String? location) => _$this._location = location;

  String? _additionalDetail;
  String? get additionalDetail => _$this._additionalDetail;
  set additionalDetail(String? additionalDetail) =>
      _$this._additionalDetail = additionalDetail;

  String? _perUnitRate;
  String? get perUnitRate => _$this._perUnitRate;
  set perUnitRate(String? perUnitRate) => _$this._perUnitRate = perUnitRate;

  String? _estimatedValue;
  String? get estimatedValue => _$this._estimatedValue;
  set estimatedValue(String? estimatedValue) =>
      _$this._estimatedValue = estimatedValue;

  String? _propertyUrl;
  String? get propertyUrl => _$this._propertyUrl;
  set propertyUrl(String? propertyUrl) => _$this._propertyUrl = propertyUrl;

  String? _auctionDiscount;
  String? get auctionDiscount => _$this._auctionDiscount;
  set auctionDiscount(String? auctionDiscount) =>
      _$this._auctionDiscount = auctionDiscount;

  String? _emd;
  String? get emd => _$this._emd;
  set emd(String? emd) => _$this._emd = emd;

  String? _street;
  String? get street => _$this._street;
  set street(String? street) => _$this._street = street;

  String? _borrower;
  String? get borrower => _$this._borrower;
  set borrower(String? borrower) => _$this._borrower = borrower;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  PropertiesRecordBuilder() {
    PropertiesRecord._initializeBuilder(this);
  }

  PropertiesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _address = $v.address;
      _approximateLocation = $v.approximateLocation;
      _area = $v.area;
      _areaBuiltup = $v.areaBuiltup;
      _areaTotal = $v.areaTotal;
      _auctionEndTime = $v.auctionEndTime;
      _auctionReservePrice = $v.auctionReservePrice;
      _auctionStartTime = $v.auctionStartTime;
      _auctionTimeExtension = $v.auctionTimeExtension;
      _auctionPortal = $v.auctionPortal;
      _boundaryNorth = $v.boundaryNorth;
      _boundarySouth = $v.boundarySouth;
      _boundaryEast = $v.boundaryEast;
      _boundaryWest = $v.boundaryWest;
      _boundaryText = $v.boundaryText;
      _city = $v.city;
      _createdTime = $v.createdTime;
      _description = $v.description;
      _encumReportPrice = $v.encumReportPrice;
      _institutionBranch = $v.institutionBranch;
      _institutionContactName = $v.institutionContactName;
      _institutionLogo = $v.institutionLogo;
      _institutionName = $v.institutionName;
      _instock = $v.instock;
      _noticeEnglish = $v.noticeEnglish;
      _noticeRegional = $v.noticeRegional;
      _panoramicPhoto = $v.panoramicPhoto;
      _pincode = $v.pincode;
      _possessionStatus = $v.possessionStatus;
      _productCategories = $v.productCategories;
      _regularPhoto = $v.regularPhoto;
      _regularPrice = $v.regularPrice;
      _salePrice = $v.salePrice;
      _seoTags = $v.seoTags;
      _sku = $v.sku;
      _sroOffice = $v.sroOffice;
      _stampDuty = $v.stampDuty;
      _state = $v.state;
      _title = $v.title;
      _type = $v.type;
      _uid = $v.uid;
      _video = $v.video;
      _visitReportPrice = $v.visitReportPrice;
      _institutionContactNumber = $v.institutionContactNumber;
      _latitude = $v.latitude;
      _longitude = $v.longitude;
      _isActive = $v.isActive;
      _auctionMinimumIncreament = $v.auctionMinimumIncreament;
      _applicationEndDate = $v.applicationEndDate;
      _propertyId = $v.propertyId;
      _dueDilligenceReportPrice = $v.dueDilligenceReportPrice;
      _postModified = $v.postModified;
      _location = $v.location;
      _additionalDetail = $v.additionalDetail;
      _perUnitRate = $v.perUnitRate;
      _estimatedValue = $v.estimatedValue;
      _propertyUrl = $v.propertyUrl;
      _auctionDiscount = $v.auctionDiscount;
      _emd = $v.emd;
      _street = $v.street;
      _borrower = $v.borrower;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PropertiesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PropertiesRecord;
  }

  @override
  void update(void Function(PropertiesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PropertiesRecord build() => _build();

  _$PropertiesRecord _build() {
    final _$result = _$v ??
        new _$PropertiesRecord._(
            address: address,
            approximateLocation: approximateLocation,
            area: area,
            areaBuiltup: areaBuiltup,
            areaTotal: areaTotal,
            auctionEndTime: auctionEndTime,
            auctionReservePrice: auctionReservePrice,
            auctionStartTime: auctionStartTime,
            auctionTimeExtension: auctionTimeExtension,
            auctionPortal: auctionPortal,
            boundaryNorth: boundaryNorth,
            boundarySouth: boundarySouth,
            boundaryEast: boundaryEast,
            boundaryWest: boundaryWest,
            boundaryText: boundaryText,
            city: city,
            createdTime: createdTime,
            description: description,
            encumReportPrice: encumReportPrice,
            institutionBranch: institutionBranch,
            institutionContactName: institutionContactName,
            institutionLogo: institutionLogo,
            institutionName: institutionName,
            instock: instock,
            noticeEnglish: noticeEnglish,
            noticeRegional: noticeRegional,
            panoramicPhoto: panoramicPhoto,
            pincode: pincode,
            possessionStatus: possessionStatus,
            productCategories: productCategories,
            regularPhoto: regularPhoto,
            regularPrice: regularPrice,
            salePrice: salePrice,
            seoTags: seoTags,
            sku: sku,
            sroOffice: sroOffice,
            stampDuty: stampDuty,
            state: state,
            title: title,
            type: type,
            uid: uid,
            video: video,
            visitReportPrice: visitReportPrice,
            institutionContactNumber: institutionContactNumber,
            latitude: latitude,
            longitude: longitude,
            isActive: isActive,
            auctionMinimumIncreament: auctionMinimumIncreament,
            applicationEndDate: applicationEndDate,
            propertyId: propertyId,
            dueDilligenceReportPrice: dueDilligenceReportPrice,
            postModified: postModified,
            location: location,
            additionalDetail: additionalDetail,
            perUnitRate: perUnitRate,
            estimatedValue: estimatedValue,
            propertyUrl: propertyUrl,
            auctionDiscount: auctionDiscount,
            emd: emd,
            street: street,
            borrower: borrower,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
