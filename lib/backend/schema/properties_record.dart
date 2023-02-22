import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'properties_record.g.dart';

abstract class PropertiesRecord
    implements Built<PropertiesRecord, PropertiesRecordBuilder> {
  static Serializer<PropertiesRecord> get serializer =>
      _$propertiesRecordSerializer;

  String? get address;

  @BuiltValueField(wireName: 'approximate_location')
  String? get approximateLocation;

  String? get area;

  @BuiltValueField(wireName: 'area_builtup')
  String? get areaBuiltup;

  @BuiltValueField(wireName: 'area_total')
  String? get areaTotal;

  @BuiltValueField(wireName: 'auction_end_time')
  String? get auctionEndTime;

  @BuiltValueField(wireName: 'auction_reserve_price')
  int? get auctionReservePrice;

  @BuiltValueField(wireName: 'auction_start_time')
  String? get auctionStartTime;

  @BuiltValueField(wireName: 'auction_time_extension')
  String? get auctionTimeExtension;

  @BuiltValueField(wireName: 'auction_portal')
  String? get auctionPortal;

  @BuiltValueField(wireName: 'boundary_north')
  String? get boundaryNorth;

  @BuiltValueField(wireName: 'boundary_south')
  String? get boundarySouth;

  @BuiltValueField(wireName: 'boundary_east')
  String? get boundaryEast;

  @BuiltValueField(wireName: 'boundary_west')
  String? get boundaryWest;

  @BuiltValueField(wireName: 'boundary_text')
  String? get boundaryText;

  String? get city;

  @BuiltValueField(wireName: 'created_time')
  String? get createdTime;

  String? get description;

  @BuiltValueField(wireName: 'encum_report_price')
  int? get encumReportPrice;

  @BuiltValueField(wireName: 'institution_branch')
  String? get institutionBranch;

  @BuiltValueField(wireName: 'institution_contact_name')
  String? get institutionContactName;

  @BuiltValueField(wireName: 'institution_logo')
  String? get institutionLogo;

  @BuiltValueField(wireName: 'institution_name')
  String? get institutionName;

  String? get instock;

  @BuiltValueField(wireName: 'notice_english')
  String? get noticeEnglish;

  @BuiltValueField(wireName: 'notice_regional')
  String? get noticeRegional;

  @BuiltValueField(wireName: 'panoramic_photo')
  String? get panoramicPhoto;

  int? get pincode;

  @BuiltValueField(wireName: 'possession_status')
  String? get possessionStatus;

  @BuiltValueField(wireName: 'product_categories')
  String? get productCategories;

  @BuiltValueField(wireName: 'regular_photo')
  String? get regularPhoto;

  @BuiltValueField(wireName: 'regular_price')
  int? get regularPrice;

  @BuiltValueField(wireName: 'sale_price')
  int? get salePrice;

  @BuiltValueField(wireName: 'seo_tags')
  String? get seoTags;

  String? get sku;

  @BuiltValueField(wireName: 'sro_office')
  String? get sroOffice;

  @BuiltValueField(wireName: 'stamp_duty')
  String? get stampDuty;

  String? get state;

  String? get title;

  String? get type;

  String? get uid;

  String? get video;

  @BuiltValueField(wireName: 'visit_report_price')
  int? get visitReportPrice;

  @BuiltValueField(wireName: 'institution_contact_number')
  String? get institutionContactNumber;

  double? get latitude;

  double? get longitude;

  bool? get isActive;

  @BuiltValueField(wireName: 'auction_minimum_increament')
  String? get auctionMinimumIncreament;

  @BuiltValueField(wireName: 'application_end_date')
  String? get applicationEndDate;

  @BuiltValueField(wireName: 'property_id')
  int? get propertyId;

  @BuiltValueField(wireName: 'due_dilligence_report_price')
  int? get dueDilligenceReportPrice;

  @BuiltValueField(wireName: 'post_modified')
  String? get postModified;

  String? get location;

  @BuiltValueField(wireName: 'additional_detail')
  String? get additionalDetail;

  @BuiltValueField(wireName: 'per_unit_rate')
  String? get perUnitRate;

  @BuiltValueField(wireName: 'estimated_value')
  String? get estimatedValue;

  @BuiltValueField(wireName: 'property_url')
  String? get propertyUrl;

  @BuiltValueField(wireName: 'auction_discount')
  String? get auctionDiscount;

  String? get emd;

  @BuiltValueField(wireName: 'Street')
  String? get street;

  String? get borrower;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(PropertiesRecordBuilder builder) => builder
    ..address = ''
    ..approximateLocation = ''
    ..area = ''
    ..areaBuiltup = ''
    ..areaTotal = ''
    ..auctionEndTime = ''
    ..auctionReservePrice = 0
    ..auctionStartTime = ''
    ..auctionTimeExtension = ''
    ..auctionPortal = ''
    ..boundaryNorth = ''
    ..boundarySouth = ''
    ..boundaryEast = ''
    ..boundaryWest = ''
    ..boundaryText = ''
    ..city = ''
    ..createdTime = ''
    ..description = ''
    ..encumReportPrice = 0
    ..institutionBranch = ''
    ..institutionContactName = ''
    ..institutionLogo = ''
    ..institutionName = ''
    ..instock = ''
    ..noticeEnglish = ''
    ..noticeRegional = ''
    ..panoramicPhoto = ''
    ..pincode = 0
    ..possessionStatus = ''
    ..productCategories = ''
    ..regularPhoto = ''
    ..regularPrice = 0
    ..salePrice = 0
    ..seoTags = ''
    ..sku = ''
    ..sroOffice = ''
    ..stampDuty = ''
    ..state = ''
    ..title = ''
    ..type = ''
    ..uid = ''
    ..video = ''
    ..visitReportPrice = 0
    ..institutionContactNumber = ''
    ..latitude = 0.0
    ..longitude = 0.0
    ..isActive = false
    ..auctionMinimumIncreament = ''
    ..applicationEndDate = ''
    ..propertyId = 0
    ..dueDilligenceReportPrice = 0
    ..postModified = ''
    ..location = ''
    ..additionalDetail = ''
    ..perUnitRate = ''
    ..estimatedValue = ''
    ..propertyUrl = ''
    ..auctionDiscount = ''
    ..emd = ''
    ..street = ''
    ..borrower = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Properties');

  static Stream<PropertiesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<PropertiesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  PropertiesRecord._();
  factory PropertiesRecord([void Function(PropertiesRecordBuilder) updates]) =
      _$PropertiesRecord;

  static PropertiesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createPropertiesRecordData({
  String? address,
  String? approximateLocation,
  String? area,
  String? areaBuiltup,
  String? areaTotal,
  String? auctionEndTime,
  int? auctionReservePrice,
  String? auctionStartTime,
  String? auctionTimeExtension,
  String? auctionPortal,
  String? boundaryNorth,
  String? boundarySouth,
  String? boundaryEast,
  String? boundaryWest,
  String? boundaryText,
  String? city,
  String? createdTime,
  String? description,
  int? encumReportPrice,
  String? institutionBranch,
  String? institutionContactName,
  String? institutionLogo,
  String? institutionName,
  String? instock,
  String? noticeEnglish,
  String? noticeRegional,
  String? panoramicPhoto,
  int? pincode,
  String? possessionStatus,
  String? productCategories,
  String? regularPhoto,
  int? regularPrice,
  int? salePrice,
  String? seoTags,
  String? sku,
  String? sroOffice,
  String? stampDuty,
  String? state,
  String? title,
  String? type,
  String? uid,
  String? video,
  int? visitReportPrice,
  String? institutionContactNumber,
  double? latitude,
  double? longitude,
  bool? isActive,
  String? auctionMinimumIncreament,
  String? applicationEndDate,
  int? propertyId,
  int? dueDilligenceReportPrice,
  String? postModified,
  String? location,
  String? additionalDetail,
  String? perUnitRate,
  String? estimatedValue,
  String? propertyUrl,
  String? auctionDiscount,
  String? emd,
  String? street,
  String? borrower,
}) {
  final firestoreData = serializers.toFirestore(
    PropertiesRecord.serializer,
    PropertiesRecord(
      (p) => p
        ..address = address
        ..approximateLocation = approximateLocation
        ..area = area
        ..areaBuiltup = areaBuiltup
        ..areaTotal = areaTotal
        ..auctionEndTime = auctionEndTime
        ..auctionReservePrice = auctionReservePrice
        ..auctionStartTime = auctionStartTime
        ..auctionTimeExtension = auctionTimeExtension
        ..auctionPortal = auctionPortal
        ..boundaryNorth = boundaryNorth
        ..boundarySouth = boundarySouth
        ..boundaryEast = boundaryEast
        ..boundaryWest = boundaryWest
        ..boundaryText = boundaryText
        ..city = city
        ..createdTime = createdTime
        ..description = description
        ..encumReportPrice = encumReportPrice
        ..institutionBranch = institutionBranch
        ..institutionContactName = institutionContactName
        ..institutionLogo = institutionLogo
        ..institutionName = institutionName
        ..instock = instock
        ..noticeEnglish = noticeEnglish
        ..noticeRegional = noticeRegional
        ..panoramicPhoto = panoramicPhoto
        ..pincode = pincode
        ..possessionStatus = possessionStatus
        ..productCategories = productCategories
        ..regularPhoto = regularPhoto
        ..regularPrice = regularPrice
        ..salePrice = salePrice
        ..seoTags = seoTags
        ..sku = sku
        ..sroOffice = sroOffice
        ..stampDuty = stampDuty
        ..state = state
        ..title = title
        ..type = type
        ..uid = uid
        ..video = video
        ..visitReportPrice = visitReportPrice
        ..institutionContactNumber = institutionContactNumber
        ..latitude = latitude
        ..longitude = longitude
        ..isActive = isActive
        ..auctionMinimumIncreament = auctionMinimumIncreament
        ..applicationEndDate = applicationEndDate
        ..propertyId = propertyId
        ..dueDilligenceReportPrice = dueDilligenceReportPrice
        ..postModified = postModified
        ..location = location
        ..additionalDetail = additionalDetail
        ..perUnitRate = perUnitRate
        ..estimatedValue = estimatedValue
        ..propertyUrl = propertyUrl
        ..auctionDiscount = auctionDiscount
        ..emd = emd
        ..street = street
        ..borrower = borrower,
    ),
  );

  return firestoreData;
}
