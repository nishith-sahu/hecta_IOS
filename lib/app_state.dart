import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:csv/csv.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'flutter_flow/lat_lng.dart';
import 'dart:convert';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    secureStorage = FlutterSecureStorage();
    _userRef = (await secureStorage.getString('ff_userRef'))?.ref ?? _userRef;
    _homePageRef =
        (await secureStorage.getString('ff_homePageRef'))?.ref ?? _homePageRef;
    _firstTimeUser =
        await secureStorage.getBool('ff_firstTimeUser') ?? _firstTimeUser;
    _delhi = await secureStorage.getBool('ff_delhi') ?? _delhi;
    _gurgaon = await secureStorage.getBool('ff_gurgaon') ?? _gurgaon;
    _noida = await secureStorage.getBool('ff_noida') ?? _noida;
    _pune = await secureStorage.getBool('ff_pune') ?? _pune;
    _bangalore = await secureStorage.getBool('ff_bangalore') ?? _bangalore;
    _mumbai = await secureStorage.getBool('ff_mumbai') ?? _mumbai;
    _chennai = await secureStorage.getBool('ff_chennai') ?? _chennai;
    _hyderabad = await secureStorage.getBool('ff_hyderabad') ?? _hyderabad;
    _surat = await secureStorage.getBool('ff_surat') ?? _surat;
    _agriLandPref =
        await secureStorage.getBool('ff_agriLandPref') ?? _agriLandPref;
    _propTypePref =
        await secureStorage.getStringList('ff_propTypePref') ?? _propTypePref;
    _email = await secureStorage.getString('ff_email') ?? _email;
    _email11 = (await secureStorage.getStringList('ff_email11'))
            ?.map((path) => path.ref)
            .toList() ??
        _email11;
    _enc = (await secureStorage.getStringList('ff_enc'))?.map((x) {
          try {
            return jsonDecode(x);
          } catch (e) {
            print("Can't decode persisted json. Error: $e.");
            return {};
          }
        }).toList() ??
        _enc;
    _reqType = await secureStorage.getStringList('ff_reqType') ?? _reqType;
    _locationPref =
        await secureStorage.getStringList('ff_locationPref') ?? _locationPref;
    _citiesPref =
        await secureStorage.getStringList('ff_citiesPref') ?? _citiesPref;
    _citiesPrefPerm = await secureStorage.getStringList('ff_citiesPrefPerm') ??
        _citiesPrefPerm;
    _reqTypeTemp =
        await secureStorage.getStringList('ff_reqTypeTemp') ?? _reqTypeTemp;
    _Tru = await secureStorage.getBool('ff_Tru') ?? _Tru;
    _Fals = await secureStorage.getBool('ff_Fals') ?? _Fals;
    _reqState = await secureStorage.getStringList('ff_reqState') ?? _reqState;
    _reqArea = await secureStorage.getStringList('ff_reqArea') ?? _reqArea;
    _reqCity = await secureStorage.getStringList('ff_reqCity') ?? _reqCity;
    _goa = await secureStorage.getBool('ff_goa') ?? _goa;
    _ludhiana = await secureStorage.getBool('ff_ludhiana') ?? _ludhiana;
    _dehradun = await secureStorage.getBool('ff_dehradun') ?? _dehradun;
    _propertyTypes =
        await secureStorage.getStringList('ff_propertyTypes') ?? _propertyTypes;
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late FlutterSecureStorage secureStorage;

  String _EMDpaymentProof = '';
  String get EMDpaymentProof => _EMDpaymentProof;
  set EMDpaymentProof(String _value) {
    _EMDpaymentProof = _value;
  }

  String _passportsizePhoto = '';
  String get passportsizePhoto => _passportsizePhoto;
  set passportsizePhoto(String _value) {
    _passportsizePhoto = _value;
  }

  String _addressProof = '';
  String get addressProof => _addressProof;
  set addressProof(String _value) {
    _addressProof = _value;
  }

  String _pancard = '';
  String get pancard => _pancard;
  set pancard(String _value) {
    _pancard = _value;
  }

  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  set userRef(DocumentReference? _value) {
    _userRef = _value;
    _value != null
        ? secureStorage.setString('ff_userRef', _value.path)
        : secureStorage.remove('ff_userRef');
  }

  void deleteUserRef() {
    secureStorage.delete(key: 'ff_userRef');
  }

  String _searchtextField = '';
  String get searchtextField => _searchtextField;
  set searchtextField(String _value) {
    _searchtextField = _value;
  }

  DocumentReference? _homePageRef =
      FirebaseFirestore.instance.doc('/home_page/\nKzDVPBZ9G4lOQqBmpRsB');
  DocumentReference? get homePageRef => _homePageRef;
  set homePageRef(DocumentReference? _value) {
    _homePageRef = _value;
    _value != null
        ? secureStorage.setString('ff_homePageRef', _value.path)
        : secureStorage.remove('ff_homePageRef');
  }

  void deleteHomePageRef() {
    secureStorage.delete(key: 'ff_homePageRef');
  }

  bool _firstTimeUser = true;
  bool get firstTimeUser => _firstTimeUser;
  set firstTimeUser(bool _value) {
    _firstTimeUser = _value;
    secureStorage.setBool('ff_firstTimeUser', _value);
  }

  void deleteFirstTimeUser() {
    secureStorage.delete(key: 'ff_firstTimeUser');
  }

  bool _delhi = true;
  bool get delhi => _delhi;
  set delhi(bool _value) {
    _delhi = _value;
    secureStorage.setBool('ff_delhi', _value);
  }

  void deleteDelhi() {
    secureStorage.delete(key: 'ff_delhi');
  }

  bool _gurgaon = true;
  bool get gurgaon => _gurgaon;
  set gurgaon(bool _value) {
    _gurgaon = _value;
    secureStorage.setBool('ff_gurgaon', _value);
  }

  void deleteGurgaon() {
    secureStorage.delete(key: 'ff_gurgaon');
  }

  bool _noida = true;
  bool get noida => _noida;
  set noida(bool _value) {
    _noida = _value;
    secureStorage.setBool('ff_noida', _value);
  }

  void deleteNoida() {
    secureStorage.delete(key: 'ff_noida');
  }

  bool _pune = true;
  bool get pune => _pune;
  set pune(bool _value) {
    _pune = _value;
    secureStorage.setBool('ff_pune', _value);
  }

  void deletePune() {
    secureStorage.delete(key: 'ff_pune');
  }

  bool _bangalore = true;
  bool get bangalore => _bangalore;
  set bangalore(bool _value) {
    _bangalore = _value;
    secureStorage.setBool('ff_bangalore', _value);
  }

  void deleteBangalore() {
    secureStorage.delete(key: 'ff_bangalore');
  }

  bool _mumbai = true;
  bool get mumbai => _mumbai;
  set mumbai(bool _value) {
    _mumbai = _value;
    secureStorage.setBool('ff_mumbai', _value);
  }

  void deleteMumbai() {
    secureStorage.delete(key: 'ff_mumbai');
  }

  bool _chennai = true;
  bool get chennai => _chennai;
  set chennai(bool _value) {
    _chennai = _value;
    secureStorage.setBool('ff_chennai', _value);
  }

  void deleteChennai() {
    secureStorage.delete(key: 'ff_chennai');
  }

  bool _hyderabad = true;
  bool get hyderabad => _hyderabad;
  set hyderabad(bool _value) {
    _hyderabad = _value;
    secureStorage.setBool('ff_hyderabad', _value);
  }

  void deleteHyderabad() {
    secureStorage.delete(key: 'ff_hyderabad');
  }

  bool _surat = true;
  bool get surat => _surat;
  set surat(bool _value) {
    _surat = _value;
    secureStorage.setBool('ff_surat', _value);
  }

  void deleteSurat() {
    secureStorage.delete(key: 'ff_surat');
  }

  List<String> _filterPropType = [];
  List<String> get filterPropType => _filterPropType;
  set filterPropType(List<String> _value) {
    _filterPropType = _value;
  }

  void addToFilterPropType(String _value) {
    _filterPropType.add(_value);
  }

  void removeFromFilterPropType(String _value) {
    _filterPropType.remove(_value);
  }

  void removeAtIndexFromFilterPropType(int _index) {
    _filterPropType.removeAt(_index);
  }

  DocumentReference? _prop1ref =
      FirebaseFirestore.instance.doc('/property_form1/OzfUhJSwrDMFeUngt9wZ');
  DocumentReference? get prop1ref => _prop1ref;
  set prop1ref(DocumentReference? _value) {
    _prop1ref = _value;
  }

  bool _agriLandPref = true;
  bool get agriLandPref => _agriLandPref;
  set agriLandPref(bool _value) {
    _agriLandPref = _value;
    secureStorage.setBool('ff_agriLandPref', _value);
  }

  void deleteAgriLandPref() {
    secureStorage.delete(key: 'ff_agriLandPref');
  }

  List<String> _propTypePref = [];
  List<String> get propTypePref => _propTypePref;
  set propTypePref(List<String> _value) {
    _propTypePref = _value;
    secureStorage.setStringList('ff_propTypePref', _value);
  }

  void deletePropTypePref() {
    secureStorage.delete(key: 'ff_propTypePref');
  }

  void addToPropTypePref(String _value) {
    _propTypePref.add(_value);
    secureStorage.setStringList('ff_propTypePref', _propTypePref);
  }

  void removeFromPropTypePref(String _value) {
    _propTypePref.remove(_value);
    secureStorage.setStringList('ff_propTypePref', _propTypePref);
  }

  void removeAtIndexFromPropTypePref(int _index) {
    _propTypePref.removeAt(_index);
    secureStorage.setStringList('ff_propTypePref', _propTypePref);
  }

  String _email = '';
  String get email => _email;
  set email(String _value) {
    _email = _value;
    secureStorage.setString('ff_email', _value);
  }

  void deleteEmail() {
    secureStorage.delete(key: 'ff_email');
  }

  List<DocumentReference> _email11 = [
    FirebaseFirestore.instance.doc('/User/AX4UZcH5VpQVka4GLl3xvs84mpm2')
  ];
  List<DocumentReference> get email11 => _email11;
  set email11(List<DocumentReference> _value) {
    _email11 = _value;
    secureStorage.setStringList(
        'ff_email11', _value.map((x) => x.path).toList());
  }

  void deleteEmail11() {
    secureStorage.delete(key: 'ff_email11');
  }

  void addToEmail11(DocumentReference _value) {
    _email11.add(_value);
    secureStorage.setStringList(
        'ff_email11', _email11.map((x) => x.path).toList());
  }

  void removeFromEmail11(DocumentReference _value) {
    _email11.remove(_value);
    secureStorage.setStringList(
        'ff_email11', _email11.map((x) => x.path).toList());
  }

  void removeAtIndexFromEmail11(int _index) {
    _email11.removeAt(_index);
    secureStorage.setStringList(
        'ff_email11', _email11.map((x) => x.path).toList());
  }

  List<int> _list12 = [];
  List<int> get list12 => _list12;
  set list12(List<int> _value) {
    _list12 = _value;
  }

  void addToList12(int _value) {
    _list12.add(_value);
  }

  void removeFromList12(int _value) {
    _list12.remove(_value);
  }

  void removeAtIndexFromList12(int _index) {
    _list12.removeAt(_index);
  }

  int _fprop = 0;
  int get fprop => _fprop;
  set fprop(int _value) {
    _fprop = _value;
  }

  double _Ans = 0;
  double get Ans => _Ans;
  set Ans(double _value) {
    _Ans = _value;
  }

  List<DocumentReference> _listProp = [];
  List<DocumentReference> get listProp => _listProp;
  set listProp(List<DocumentReference> _value) {
    _listProp = _value;
  }

  void addToListProp(DocumentReference _value) {
    _listProp.add(_value);
  }

  void removeFromListProp(DocumentReference _value) {
    _listProp.remove(_value);
  }

  void removeAtIndexFromListProp(int _index) {
    _listProp.removeAt(_index);
  }

  List<int> _demolist = [];
  List<int> get demolist => _demolist;
  set demolist(List<int> _value) {
    _demolist = _value;
  }

  void addToDemolist(int _value) {
    _demolist.add(_value);
  }

  void removeFromDemolist(int _value) {
    _demolist.remove(_value);
  }

  void removeAtIndexFromDemolist(int _index) {
    _demolist.removeAt(_index);
  }

  int _splashText = 1;
  int get splashText => _splashText;
  set splashText(int _value) {
    _splashText = _value;
  }

  List<String> _searchResCity = [];
  List<String> get searchResCity => _searchResCity;
  set searchResCity(List<String> _value) {
    _searchResCity = _value;
  }

  void addToSearchResCity(String _value) {
    _searchResCity.add(_value);
  }

  void removeFromSearchResCity(String _value) {
    _searchResCity.remove(_value);
  }

  void removeAtIndexFromSearchResCity(int _index) {
    _searchResCity.removeAt(_index);
  }

  List<dynamic> _enc = [jsonDecode('{\"state\":\"xyz\",\"link\":\"xyz\"}')];
  List<dynamic> get enc => _enc;
  set enc(List<dynamic> _value) {
    _enc = _value;
    secureStorage.setStringList(
        'ff_enc', _value.map((x) => jsonEncode(x)).toList());
  }

  void deleteEnc() {
    secureStorage.delete(key: 'ff_enc');
  }

  void addToEnc(dynamic _value) {
    _enc.add(_value);
    secureStorage.setStringList(
        'ff_enc', _enc.map((x) => jsonEncode(x)).toList());
  }

  void removeFromEnc(dynamic _value) {
    _enc.remove(_value);
    secureStorage.setStringList(
        'ff_enc', _enc.map((x) => jsonEncode(x)).toList());
  }

  void removeAtIndexFromEnc(int _index) {
    _enc.removeAt(_index);
    secureStorage.setStringList(
        'ff_enc', _enc.map((x) => jsonEncode(x)).toList());
  }

  String _searchKeywordReq = '';
  String get searchKeywordReq => _searchKeywordReq;
  set searchKeywordReq(String _value) {
    _searchKeywordReq = _value;
  }

  DocumentReference? _prefRef;
  DocumentReference? get prefRef => _prefRef;
  set prefRef(DocumentReference? _value) {
    _prefRef = _value;
  }

  bool _exists = false;
  bool get exists => _exists;
  set exists(bool _value) {
    _exists = _value;
  }

  String _userID = '';
  String get userID => _userID;
  set userID(String _value) {
    _userID = _value;
  }

  List<String> _filterCity = [];
  List<String> get filterCity => _filterCity;
  set filterCity(List<String> _value) {
    _filterCity = _value;
  }

  void addToFilterCity(String _value) {
    _filterCity.add(_value);
  }

  void removeFromFilterCity(String _value) {
    _filterCity.remove(_value);
  }

  void removeAtIndexFromFilterCity(int _index) {
    _filterCity.removeAt(_index);
  }

  List<String> _filterType = [];
  List<String> get filterType => _filterType;
  set filterType(List<String> _value) {
    _filterType = _value;
  }

  void addToFilterType(String _value) {
    _filterType.add(_value);
  }

  void removeFromFilterType(String _value) {
    _filterType.remove(_value);
  }

  void removeAtIndexFromFilterType(int _index) {
    _filterType.removeAt(_index);
  }

  String _filterMaxBudget = '';
  String get filterMaxBudget => _filterMaxBudget;
  set filterMaxBudget(String _value) {
    _filterMaxBudget = _value;
  }

  String _filterMinBudget = '';
  String get filterMinBudget => _filterMinBudget;
  set filterMinBudget(String _value) {
    _filterMinBudget = _value;
  }

  bool _filtersApplied = false;
  bool get filtersApplied => _filtersApplied;
  set filtersApplied(bool _value) {
    _filtersApplied = _value;
  }

  List<String> _filterCityTemp = [];
  List<String> get filterCityTemp => _filterCityTemp;
  set filterCityTemp(List<String> _value) {
    _filterCityTemp = _value;
  }

  void addToFilterCityTemp(String _value) {
    _filterCityTemp.add(_value);
  }

  void removeFromFilterCityTemp(String _value) {
    _filterCityTemp.remove(_value);
  }

  void removeAtIndexFromFilterCityTemp(int _index) {
    _filterCityTemp.removeAt(_index);
  }

  List<String> _filterTypeTemp = [];
  List<String> get filterTypeTemp => _filterTypeTemp;
  set filterTypeTemp(List<String> _value) {
    _filterTypeTemp = _value;
  }

  void addToFilterTypeTemp(String _value) {
    _filterTypeTemp.add(_value);
  }

  void removeFromFilterTypeTemp(String _value) {
    _filterTypeTemp.remove(_value);
  }

  void removeAtIndexFromFilterTypeTemp(int _index) {
    _filterTypeTemp.removeAt(_index);
  }

  String _filterMinBudgetTemp = '';
  String get filterMinBudgetTemp => _filterMinBudgetTemp;
  set filterMinBudgetTemp(String _value) {
    _filterMinBudgetTemp = _value;
  }

  String _filterMaxBudgetTemp = '';
  String get filterMaxBudgetTemp => _filterMaxBudgetTemp;
  set filterMaxBudgetTemp(String _value) {
    _filterMaxBudgetTemp = _value;
  }

  List<String> _outref = [];
  List<String> get outref => _outref;
  set outref(List<String> _value) {
    _outref = _value;
  }

  void addToOutref(String _value) {
    _outref.add(_value);
  }

  void removeFromOutref(String _value) {
    _outref.remove(_value);
  }

  void removeAtIndexFromOutref(int _index) {
    _outref.removeAt(_index);
  }

  List<String> _emptyList = [];
  List<String> get emptyList => _emptyList;
  set emptyList(List<String> _value) {
    _emptyList = _value;
  }

  void addToEmptyList(String _value) {
    _emptyList.add(_value);
  }

  void removeFromEmptyList(String _value) {
    _emptyList.remove(_value);
  }

  void removeAtIndexFromEmptyList(int _index) {
    _emptyList.removeAt(_index);
  }

  List<String> _SearchResults = [];
  List<String> get SearchResults => _SearchResults;
  set SearchResults(List<String> _value) {
    _SearchResults = _value;
  }

  void addToSearchResults(String _value) {
    _SearchResults.add(_value);
  }

  void removeFromSearchResults(String _value) {
    _SearchResults.remove(_value);
  }

  void removeAtIndexFromSearchResults(int _index) {
    _SearchResults.removeAt(_index);
  }

  List<String> _favprop = [];
  List<String> get favprop => _favprop;
  set favprop(List<String> _value) {
    _favprop = _value;
  }

  void addToFavprop(String _value) {
    _favprop.add(_value);
  }

  void removeFromFavprop(String _value) {
    _favprop.remove(_value);
  }

  void removeAtIndexFromFavprop(int _index) {
    _favprop.removeAt(_index);
  }

  List<String> _notifList = [];
  List<String> get notifList => _notifList;
  set notifList(List<String> _value) {
    _notifList = _value;
  }

  void addToNotifList(String _value) {
    _notifList.add(_value);
  }

  void removeFromNotifList(String _value) {
    _notifList.remove(_value);
  }

  void removeAtIndexFromNotifList(int _index) {
    _notifList.removeAt(_index);
  }

  List<String> _reqType = ['Commercial Property', 'Office'];
  List<String> get reqType => _reqType;
  set reqType(List<String> _value) {
    _reqType = _value;
    secureStorage.setStringList('ff_reqType', _value);
  }

  void deleteReqType() {
    secureStorage.delete(key: 'ff_reqType');
  }

  void addToReqType(String _value) {
    _reqType.add(_value);
    secureStorage.setStringList('ff_reqType', _reqType);
  }

  void removeFromReqType(String _value) {
    _reqType.remove(_value);
    secureStorage.setStringList('ff_reqType', _reqType);
  }

  void removeAtIndexFromReqType(int _index) {
    _reqType.removeAt(_index);
    secureStorage.setStringList('ff_reqType', _reqType);
  }

  int _num = 0;
  int get num => _num;
  set num(int _value) {
    _num = _value;
  }

  List<String> _locationPref = [];
  List<String> get locationPref => _locationPref;
  set locationPref(List<String> _value) {
    _locationPref = _value;
    secureStorage.setStringList('ff_locationPref', _value);
  }

  void deleteLocationPref() {
    secureStorage.delete(key: 'ff_locationPref');
  }

  void addToLocationPref(String _value) {
    _locationPref.add(_value);
    secureStorage.setStringList('ff_locationPref', _locationPref);
  }

  void removeFromLocationPref(String _value) {
    _locationPref.remove(_value);
    secureStorage.setStringList('ff_locationPref', _locationPref);
  }

  void removeAtIndexFromLocationPref(int _index) {
    _locationPref.removeAt(_index);
    secureStorage.setStringList('ff_locationPref', _locationPref);
  }

  List<String> _locationPrefTemp = [];
  List<String> get locationPrefTemp => _locationPrefTemp;
  set locationPrefTemp(List<String> _value) {
    _locationPrefTemp = _value;
  }

  void addToLocationPrefTemp(String _value) {
    _locationPrefTemp.add(_value);
  }

  void removeFromLocationPrefTemp(String _value) {
    _locationPrefTemp.remove(_value);
  }

  void removeAtIndexFromLocationPrefTemp(int _index) {
    _locationPrefTemp.removeAt(_index);
  }

  List<String> _citiesPref = [];
  List<String> get citiesPref => _citiesPref;
  set citiesPref(List<String> _value) {
    _citiesPref = _value;
    secureStorage.setStringList('ff_citiesPref', _value);
  }

  void deleteCitiesPref() {
    secureStorage.delete(key: 'ff_citiesPref');
  }

  void addToCitiesPref(String _value) {
    _citiesPref.add(_value);
    secureStorage.setStringList('ff_citiesPref', _citiesPref);
  }

  void removeFromCitiesPref(String _value) {
    _citiesPref.remove(_value);
    secureStorage.setStringList('ff_citiesPref', _citiesPref);
  }

  void removeAtIndexFromCitiesPref(int _index) {
    _citiesPref.removeAt(_index);
    secureStorage.setStringList('ff_citiesPref', _citiesPref);
  }

  List<String> _citiesPrefPerm = [];
  List<String> get citiesPrefPerm => _citiesPrefPerm;
  set citiesPrefPerm(List<String> _value) {
    _citiesPrefPerm = _value;
    secureStorage.setStringList('ff_citiesPrefPerm', _value);
  }

  void deleteCitiesPrefPerm() {
    secureStorage.delete(key: 'ff_citiesPrefPerm');
  }

  void addToCitiesPrefPerm(String _value) {
    _citiesPrefPerm.add(_value);
    secureStorage.setStringList('ff_citiesPrefPerm', _citiesPrefPerm);
  }

  void removeFromCitiesPrefPerm(String _value) {
    _citiesPrefPerm.remove(_value);
    secureStorage.setStringList('ff_citiesPrefPerm', _citiesPrefPerm);
  }

  void removeAtIndexFromCitiesPrefPerm(int _index) {
    _citiesPrefPerm.removeAt(_index);
    secureStorage.setStringList('ff_citiesPrefPerm', _citiesPrefPerm);
  }

  List<String> _reqTypeTemp = ['Commercial Property'];
  List<String> get reqTypeTemp => _reqTypeTemp;
  set reqTypeTemp(List<String> _value) {
    _reqTypeTemp = _value;
    secureStorage.setStringList('ff_reqTypeTemp', _value);
  }

  void deleteReqTypeTemp() {
    secureStorage.delete(key: 'ff_reqTypeTemp');
  }

  void addToReqTypeTemp(String _value) {
    _reqTypeTemp.add(_value);
    secureStorage.setStringList('ff_reqTypeTemp', _reqTypeTemp);
  }

  void removeFromReqTypeTemp(String _value) {
    _reqTypeTemp.remove(_value);
    secureStorage.setStringList('ff_reqTypeTemp', _reqTypeTemp);
  }

  void removeAtIndexFromReqTypeTemp(int _index) {
    _reqTypeTemp.removeAt(_index);
    secureStorage.setStringList('ff_reqTypeTemp', _reqTypeTemp);
  }

  bool _cp = false;
  bool get cp => _cp;
  set cp(bool _value) {
    _cp = _value;
  }

  bool _cs = false;
  bool get cs => _cs;
  set cs(bool _value) {
    _cs = _value;
  }

  bool _ih = false;
  bool get ih => _ih;
  set ih(bool _value) {
    _ih = _value;
  }

  bool _al = false;
  bool get al => _al;
  set al(bool _value) {
    _al = _value;
  }

  bool _lnb = false;
  bool get lnb => _lnb;
  set lnb(bool _value) {
    _lnb = _value;
  }

  bool _off = false;
  bool get off => _off;
  set off(bool _value) {
    _off = _value;
  }

  bool _rl = false;
  bool get rl => _rl;
  set rl(bool _value) {
    _rl = _value;
  }

  bool _rp = false;
  bool get rp => _rp;
  set rp(bool _value) {
    _rp = _value;
  }

  bool _rf = false;
  bool get rf => _rf;
  set rf(bool _value) {
    _rf = _value;
  }

  bool _il = false;
  bool get il => _il;
  set il(bool _value) {
    _il = _value;
  }

  bool _ip = false;
  bool get ip => _ip;
  set ip(bool _value) {
    _ip = _value;
  }

  bool _sh = false;
  bool get sh => _sh;
  set sh(bool _value) {
    _sh = _value;
  }

  bool _cpFil = false;
  bool get cpFil => _cpFil;
  set cpFil(bool _value) {
    _cpFil = _value;
  }

  bool _csFil = false;
  bool get csFil => _csFil;
  set csFil(bool _value) {
    _csFil = _value;
  }

  bool _ihFil = false;
  bool get ihFil => _ihFil;
  set ihFil(bool _value) {
    _ihFil = _value;
  }

  bool _alFil = false;
  bool get alFil => _alFil;
  set alFil(bool _value) {
    _alFil = _value;
  }

  bool _lnbFil = false;
  bool get lnbFil => _lnbFil;
  set lnbFil(bool _value) {
    _lnbFil = _value;
  }

  bool _offFil = false;
  bool get offFil => _offFil;
  set offFil(bool _value) {
    _offFil = _value;
  }

  bool _rlFil = false;
  bool get rlFil => _rlFil;
  set rlFil(bool _value) {
    _rlFil = _value;
  }

  bool _rpFil = false;
  bool get rpFil => _rpFil;
  set rpFil(bool _value) {
    _rpFil = _value;
  }

  bool _rfFil = false;
  bool get rfFil => _rfFil;
  set rfFil(bool _value) {
    _rfFil = _value;
  }

  bool _ilFil = false;
  bool get ilFil => _ilFil;
  set ilFil(bool _value) {
    _ilFil = _value;
  }

  bool _ipFil = false;
  bool get ipFil => _ipFil;
  set ipFil(bool _value) {
    _ipFil = _value;
  }

  bool _shFil = false;
  bool get shFil => _shFil;
  set shFil(bool _value) {
    _shFil = _value;
  }

  int _attempts = 0;
  int get attempts => _attempts;
  set attempts(int _value) {
    _attempts = _value;
  }

  int _pageViewIndex = 0;
  int get pageViewIndex => _pageViewIndex;
  set pageViewIndex(int _value) {
    _pageViewIndex = _value;
  }

  bool _Tru = true;
  bool get Tru => _Tru;
  set Tru(bool _value) {
    _Tru = _value;
    secureStorage.setBool('ff_Tru', _value);
  }

  void deleteTru() {
    secureStorage.delete(key: 'ff_Tru');
  }

  bool _Fals = false;
  bool get Fals => _Fals;
  set Fals(bool _value) {
    _Fals = _value;
    secureStorage.setBool('ff_Fals', _value);
  }

  void deleteFals() {
    secureStorage.delete(key: 'ff_Fals');
  }

  List<String> _resPropList = [];
  List<String> get resPropList => _resPropList;
  set resPropList(List<String> _value) {
    _resPropList = _value;
  }

  void addToResPropList(String _value) {
    _resPropList.add(_value);
  }

  void removeFromResPropList(String _value) {
    _resPropList.remove(_value);
  }

  void removeAtIndexFromResPropList(int _index) {
    _resPropList.removeAt(_index);
  }

  int _currPage = 0;
  int get currPage => _currPage;
  set currPage(int _value) {
    _currPage = _value;
  }

  List<String> _searchUIDs = [];
  List<String> get searchUIDs => _searchUIDs;
  set searchUIDs(List<String> _value) {
    _searchUIDs = _value;
  }

  void addToSearchUIDs(String _value) {
    _searchUIDs.add(_value);
  }

  void removeFromSearchUIDs(String _value) {
    _searchUIDs.remove(_value);
  }

  void removeAtIndexFromSearchUIDs(int _index) {
    _searchUIDs.removeAt(_index);
  }

  List<String> _reqState = [];
  List<String> get reqState => _reqState;
  set reqState(List<String> _value) {
    _reqState = _value;
    secureStorage.setStringList('ff_reqState', _value);
  }

  void deleteReqState() {
    secureStorage.delete(key: 'ff_reqState');
  }

  void addToReqState(String _value) {
    _reqState.add(_value);
    secureStorage.setStringList('ff_reqState', _reqState);
  }

  void removeFromReqState(String _value) {
    _reqState.remove(_value);
    secureStorage.setStringList('ff_reqState', _reqState);
  }

  void removeAtIndexFromReqState(int _index) {
    _reqState.removeAt(_index);
    secureStorage.setStringList('ff_reqState', _reqState);
  }

  List<String> _reqArea = [];
  List<String> get reqArea => _reqArea;
  set reqArea(List<String> _value) {
    _reqArea = _value;
    secureStorage.setStringList('ff_reqArea', _value);
  }

  void deleteReqArea() {
    secureStorage.delete(key: 'ff_reqArea');
  }

  void addToReqArea(String _value) {
    _reqArea.add(_value);
    secureStorage.setStringList('ff_reqArea', _reqArea);
  }

  void removeFromReqArea(String _value) {
    _reqArea.remove(_value);
    secureStorage.setStringList('ff_reqArea', _reqArea);
  }

  void removeAtIndexFromReqArea(int _index) {
    _reqArea.removeAt(_index);
    secureStorage.setStringList('ff_reqArea', _reqArea);
  }

  List<String> _reqCity = [];
  List<String> get reqCity => _reqCity;
  set reqCity(List<String> _value) {
    _reqCity = _value;
    secureStorage.setStringList('ff_reqCity', _value);
  }

  void deleteReqCity() {
    secureStorage.delete(key: 'ff_reqCity');
  }

  void addToReqCity(String _value) {
    _reqCity.add(_value);
    secureStorage.setStringList('ff_reqCity', _reqCity);
  }

  void removeFromReqCity(String _value) {
    _reqCity.remove(_value);
    secureStorage.setStringList('ff_reqCity', _reqCity);
  }

  void removeAtIndexFromReqCity(int _index) {
    _reqCity.removeAt(_index);
    secureStorage.setStringList('ff_reqCity', _reqCity);
  }

  bool _pubBank = false;
  bool get pubBank => _pubBank;
  set pubBank(bool _value) {
    _pubBank = _value;
  }

  bool _privBank = false;
  bool get privBank => _privBank;
  set privBank(bool _value) {
    _privBank = _value;
  }

  bool _nbfc = false;
  bool get nbfc => _nbfc;
  set nbfc(bool _value) {
    _nbfc = _value;
  }

  bool _coopBank = false;
  bool get coopBank => _coopBank;
  set coopBank(bool _value) {
    _coopBank = _value;
  }

  bool _physPoss = false;
  bool get physPoss => _physPoss;
  set physPoss(bool _value) {
    _physPoss = _value;
  }

  bool _symPoss = false;
  bool get symPoss => _symPoss;
  set symPoss(bool _value) {
    _symPoss = _value;
  }

  bool _loansAvail = false;
  bool get loansAvail => _loansAvail;
  set loansAvail(bool _value) {
    _loansAvail = _value;
  }

  bool _visitRptAvail = false;
  bool get visitRptAvail => _visitRptAvail;
  set visitRptAvail(bool _value) {
    _visitRptAvail = _value;
  }

  bool _encumAvail = false;
  bool get encumAvail => _encumAvail;
  set encumAvail(bool _value) {
    _encumAvail = _value;
  }

  bool _droneFeedAvail = false;
  bool get droneFeedAvail => _droneFeedAvail;
  set droneFeedAvail(bool _value) {
    _droneFeedAvail = _value;
  }

  List<String> _locationFil = [];
  List<String> get locationFil => _locationFil;
  set locationFil(List<String> _value) {
    _locationFil = _value;
  }

  void addToLocationFil(String _value) {
    _locationFil.add(_value);
  }

  void removeFromLocationFil(String _value) {
    _locationFil.remove(_value);
  }

  void removeAtIndexFromLocationFil(int _index) {
    _locationFil.removeAt(_index);
  }

  List<String> _locationFilPerm = [];
  List<String> get locationFilPerm => _locationFilPerm;
  set locationFilPerm(List<String> _value) {
    _locationFilPerm = _value;
  }

  void addToLocationFilPerm(String _value) {
    _locationFilPerm.add(_value);
  }

  void removeFromLocationFilPerm(String _value) {
    _locationFilPerm.remove(_value);
  }

  void removeAtIndexFromLocationFilPerm(int _index) {
    _locationFilPerm.removeAt(_index);
  }

  List<String> _filterArea = [];
  List<String> get filterArea => _filterArea;
  set filterArea(List<String> _value) {
    _filterArea = _value;
  }

  void addToFilterArea(String _value) {
    _filterArea.add(_value);
  }

  void removeFromFilterArea(String _value) {
    _filterArea.remove(_value);
  }

  void removeAtIndexFromFilterArea(int _index) {
    _filterArea.removeAt(_index);
  }

  List<String> _filterState = [];
  List<String> get filterState => _filterState;
  set filterState(List<String> _value) {
    _filterState = _value;
  }

  void addToFilterState(String _value) {
    _filterState.add(_value);
  }

  void removeFromFilterState(String _value) {
    _filterState.remove(_value);
  }

  void removeAtIndexFromFilterState(int _index) {
    _filterState.removeAt(_index);
  }

  bool _mstc = false;
  bool get mstc => _mstc;
  set mstc(bool _value) {
    _mstc = _value;
  }

  bool _auctiontiger = false;
  bool get auctiontiger => _auctiontiger;
  set auctiontiger(bool _value) {
    _auctiontiger = _value;
  }

  bool _disposalHub = false;
  bool get disposalHub => _disposalHub;
  set disposalHub(bool _value) {
    _disposalHub = _value;
  }

  List<String> _filterBanks = [];
  List<String> get filterBanks => _filterBanks;
  set filterBanks(List<String> _value) {
    _filterBanks = _value;
  }

  void addToFilterBanks(String _value) {
    _filterBanks.add(_value);
  }

  void removeFromFilterBanks(String _value) {
    _filterBanks.remove(_value);
  }

  void removeAtIndexFromFilterBanks(int _index) {
    _filterBanks.removeAt(_index);
  }

  List<String> _filterBanksPerm = [];
  List<String> get filterBanksPerm => _filterBanksPerm;
  set filterBanksPerm(List<String> _value) {
    _filterBanksPerm = _value;
  }

  void addToFilterBanksPerm(String _value) {
    _filterBanksPerm.add(_value);
  }

  void removeFromFilterBanksPerm(String _value) {
    _filterBanksPerm.remove(_value);
  }

  void removeAtIndexFromFilterBanksPerm(int _index) {
    _filterBanksPerm.removeAt(_index);
  }

  List<String> _institutionTypes = [];
  List<String> get institutionTypes => _institutionTypes;
  set institutionTypes(List<String> _value) {
    _institutionTypes = _value;
  }

  void addToInstitutionTypes(String _value) {
    _institutionTypes.add(_value);
  }

  void removeFromInstitutionTypes(String _value) {
    _institutionTypes.remove(_value);
  }

  void removeAtIndexFromInstitutionTypes(int _index) {
    _institutionTypes.removeAt(_index);
  }

  List<String> _possessionTypeList = [];
  List<String> get possessionTypeList => _possessionTypeList;
  set possessionTypeList(List<String> _value) {
    _possessionTypeList = _value;
  }

  void addToPossessionTypeList(String _value) {
    _possessionTypeList.add(_value);
  }

  void removeFromPossessionTypeList(String _value) {
    _possessionTypeList.remove(_value);
  }

  void removeAtIndexFromPossessionTypeList(int _index) {
    _possessionTypeList.removeAt(_index);
  }

  List<String> _auctionAgencyList = [];
  List<String> get auctionAgencyList => _auctionAgencyList;
  set auctionAgencyList(List<String> _value) {
    _auctionAgencyList = _value;
  }

  void addToAuctionAgencyList(String _value) {
    _auctionAgencyList.add(_value);
  }

  void removeFromAuctionAgencyList(String _value) {
    _auctionAgencyList.remove(_value);
  }

  void removeAtIndexFromAuctionAgencyList(int _index) {
    _auctionAgencyList.removeAt(_index);
  }

  bool _filterLoan = false;
  bool get filterLoan => _filterLoan;
  set filterLoan(bool _value) {
    _filterLoan = _value;
  }

  bool _filterEncum = false;
  bool get filterEncum => _filterEncum;
  set filterEncum(bool _value) {
    _filterEncum = _value;
  }

  bool _visitRptFilter = false;
  bool get visitRptFilter => _visitRptFilter;
  set visitRptFilter(bool _value) {
    _visitRptFilter = _value;
  }

  bool _droneFilter = false;
  bool get droneFilter => _droneFilter;
  set droneFilter(bool _value) {
    _droneFilter = _value;
  }

  List<String> _resFilList = [];
  List<String> get resFilList => _resFilList;
  set resFilList(List<String> _value) {
    _resFilList = _value;
  }

  void addToResFilList(String _value) {
    _resFilList.add(_value);
  }

  void removeFromResFilList(String _value) {
    _resFilList.remove(_value);
  }

  void removeAtIndexFromResFilList(int _index) {
    _resFilList.removeAt(_index);
  }

  String _minBudgetNew = '';
  String get minBudgetNew => _minBudgetNew;
  set minBudgetNew(String _value) {
    _minBudgetNew = _value;
  }

  String _maxBudgetNew = '';
  String get maxBudgetNew => _maxBudgetNew;
  set maxBudgetNew(String _value) {
    _maxBudgetNew = _value;
  }

  bool _goa = true;
  bool get goa => _goa;
  set goa(bool _value) {
    _goa = _value;
    secureStorage.setBool('ff_goa', _value);
  }

  void deleteGoa() {
    secureStorage.delete(key: 'ff_goa');
  }

  bool _ludhiana = true;
  bool get ludhiana => _ludhiana;
  set ludhiana(bool _value) {
    _ludhiana = _value;
    secureStorage.setBool('ff_ludhiana', _value);
  }

  void deleteLudhiana() {
    secureStorage.delete(key: 'ff_ludhiana');
  }

  bool _dehradun = true;
  bool get dehradun => _dehradun;
  set dehradun(bool _value) {
    _dehradun = _value;
    secureStorage.setBool('ff_dehradun', _value);
  }

  void deleteDehradun() {
    secureStorage.delete(key: 'ff_dehradun');
  }

  bool _hotProp = false;
  bool get hotProp => _hotProp;
  set hotProp(bool _value) {
    _hotProp = _value;
  }

  List<String> _pictures = [];
  List<String> get pictures => _pictures;
  set pictures(List<String> _value) {
    _pictures = _value;
  }

  void addToPictures(String _value) {
    _pictures.add(_value);
  }

  void removeFromPictures(String _value) {
    _pictures.remove(_value);
  }

  void removeAtIndexFromPictures(int _index) {
    _pictures.removeAt(_index);
  }

  List<String> _testList = [
    'Hello World1',
    'Hello World2',
    'Hello World3',
    'Hello World4'
  ];
  List<String> get testList => _testList;
  set testList(List<String> _value) {
    _testList = _value;
  }

  void addToTestList(String _value) {
    _testList.add(_value);
  }

  void removeFromTestList(String _value) {
    _testList.remove(_value);
  }

  void removeAtIndexFromTestList(int _index) {
    _testList.removeAt(_index);
  }

  String _searchStr = '';
  String get searchStr => _searchStr;
  set searchStr(String _value) {
    _searchStr = _value;
  }

  String _selectedFAQ = '';
  String get selectedFAQ => _selectedFAQ;
  set selectedFAQ(String _value) {
    _selectedFAQ = _value;
  }

  List<double> _cart = [];
  List<double> get cart => _cart;
  set cart(List<double> _value) {
    _cart = _value;
  }

  void addToCart(double _value) {
    _cart.add(_value);
  }

  void removeFromCart(double _value) {
    _cart.remove(_value);
  }

  void removeAtIndexFromCart(int _index) {
    _cart.removeAt(_index);
  }

  List<String> _selectedStates = [];
  List<String> get selectedStates => _selectedStates;
  set selectedStates(List<String> _value) {
    _selectedStates = _value;
  }

  void addToSelectedStates(String _value) {
    _selectedStates.add(_value);
  }

  void removeFromSelectedStates(String _value) {
    _selectedStates.remove(_value);
  }

  void removeAtIndexFromSelectedStates(int _index) {
    _selectedStates.removeAt(_index);
  }

  List<String> _selectedCities = [];
  List<String> get selectedCities => _selectedCities;
  set selectedCities(List<String> _value) {
    _selectedCities = _value;
  }

  void addToSelectedCities(String _value) {
    _selectedCities.add(_value);
  }

  void removeFromSelectedCities(String _value) {
    _selectedCities.remove(_value);
  }

  void removeAtIndexFromSelectedCities(int _index) {
    _selectedCities.removeAt(_index);
  }

  List<String> _selectedLocs = [];
  List<String> get selectedLocs => _selectedLocs;
  set selectedLocs(List<String> _value) {
    _selectedLocs = _value;
  }

  void addToSelectedLocs(String _value) {
    _selectedLocs.add(_value);
  }

  void removeFromSelectedLocs(String _value) {
    _selectedLocs.remove(_value);
  }

  void removeAtIndexFromSelectedLocs(int _index) {
    _selectedLocs.removeAt(_index);
  }

  String _xytt = '';
  String get xytt => _xytt;
  set xytt(String _value) {
    _xytt = _value;
  }

  List<DocumentReference> _cartRef = [];
  List<DocumentReference> get cartRef => _cartRef;
  set cartRef(List<DocumentReference> _value) {
    _cartRef = _value;
  }

  void addToCartRef(DocumentReference _value) {
    _cartRef.add(_value);
  }

  void removeFromCartRef(DocumentReference _value) {
    _cartRef.remove(_value);
  }

  void removeAtIndexFromCartRef(int _index) {
    _cartRef.removeAt(_index);
  }

  List<String> _propertyTypes = [
    'Agricultural Land',
    'Commercial Property',
    'Independent House',
    'Office',
    'Residential Flat',
    'Residential Plot',
    'Shop',
    'Land and Building',
    'Industrial Property'
  ];
  List<String> get propertyTypes => _propertyTypes;
  set propertyTypes(List<String> _value) {
    _propertyTypes = _value;
    secureStorage.setStringList('ff_propertyTypes', _value);
  }

  void deletePropertyTypes() {
    secureStorage.delete(key: 'ff_propertyTypes');
  }

  void addToPropertyTypes(String _value) {
    _propertyTypes.add(_value);
    secureStorage.setStringList('ff_propertyTypes', _propertyTypes);
  }

  void removeFromPropertyTypes(String _value) {
    _propertyTypes.remove(_value);
    secureStorage.setStringList('ff_propertyTypes', _propertyTypes);
  }

  void removeAtIndexFromPropertyTypes(int _index) {
    _propertyTypes.removeAt(_index);
    secureStorage.setStringList('ff_propertyTypes', _propertyTypes);
  }

  List<String> _selectedTypes = [];
  List<String> get selectedTypes => _selectedTypes;
  set selectedTypes(List<String> _value) {
    _selectedTypes = _value;
  }

  void addToSelectedTypes(String _value) {
    _selectedTypes.add(_value);
  }

  void removeFromSelectedTypes(String _value) {
    _selectedTypes.remove(_value);
  }

  void removeAtIndexFromSelectedTypes(int _index) {
    _selectedTypes.removeAt(_index);
  }

  String _privateTreaty = '';
  String get privateTreaty => _privateTreaty;
  set privateTreaty(String _value) {
    _privateTreaty = _value;
  }

  bool _filterPrivateTreaty = false;
  bool get filterPrivateTreaty => _filterPrivateTreaty;
  set filterPrivateTreaty(bool _value) {
    _filterPrivateTreaty = _value;
  }

  String _selectedminBudget = '';
  String get selectedminBudget => _selectedminBudget;
  set selectedminBudget(String _value) {
    _selectedminBudget = _value;
  }

  String _selectedmaxBudget = '';
  String get selectedmaxBudget => _selectedmaxBudget;
  set selectedmaxBudget(String _value) {
    _selectedmaxBudget = _value;
  }

  bool _selectedprivateTreaty = false;
  bool get selectedprivateTreaty => _selectedprivateTreaty;
  set selectedprivateTreaty(bool _value) {
    _selectedprivateTreaty = _value;
  }

  List<String> _selectedBanks = [];
  List<String> get selectedBanks => _selectedBanks;
  set selectedBanks(List<String> _value) {
    _selectedBanks = _value;
  }

  void addToSelectedBanks(String _value) {
    _selectedBanks.add(_value);
  }

  void removeFromSelectedBanks(String _value) {
    _selectedBanks.remove(_value);
  }

  void removeAtIndexFromSelectedBanks(int _index) {
    _selectedBanks.removeAt(_index);
  }

  bool _clearfilter = false;
  bool get clearfilter => _clearfilter;
  set clearfilter(bool _value) {
    _clearfilter = _value;
  }

  String _aadharCardURL = '';
  String get aadharCardURL => _aadharCardURL;
  set aadharCardURL(String _value) {
    _aadharCardURL = _value;
  }

  String _otp = '';
  String get otp => _otp;
  set otp(String _value) {
    _otp = _value;
  }

  double _totalamt = 0;
  double get totalamt => _totalamt;
  set totalamt(double _value) {
    _totalamt = _value;
  }

  double _gst = 0.0;
  double get gst => _gst;
  set gst(double _value) {
    _gst = _value;
  }

  double _subTotal = 0;
  double get subTotal => _subTotal;
  set subTotal(double _value) {
    _subTotal = _value;
  }

  String _pincode = '';
  String get pincode => _pincode;
  set pincode(String _value) {
    _pincode = _value;
  }

  bool _filterAppliedTrending = false;
  bool get filterAppliedTrending => _filterAppliedTrending;
  set filterAppliedTrending(bool _value) {
    _filterAppliedTrending = _value;
  }

  bool _filterAppliedSearch = false;
  bool get filterAppliedSearch => _filterAppliedSearch;
  set filterAppliedSearch(bool _value) {
    _filterAppliedSearch = _value;
  }

  bool _filterAppliedCarousels = false;
  bool get filterAppliedCarousels => _filterAppliedCarousels;
  set filterAppliedCarousels(bool _value) {
    _filterAppliedCarousels = _value;
  }

  bool _filterAppliedEOI = false;
  bool get filterAppliedEOI => _filterAppliedEOI;
  set filterAppliedEOI(bool _value) {
    _filterAppliedEOI = _value;
  }

  bool _filterAppliedSimilar = false;
  bool get filterAppliedSimilar => _filterAppliedSimilar;
  set filterAppliedSimilar(bool _value) {
    _filterAppliedSimilar = _value;
  }

  bool _filterAppliedFav = false;
  bool get filterAppliedFav => _filterAppliedFav;
  set filterAppliedFav(bool _value) {
    _filterAppliedFav = _value;
  }

  bool _validatePhoneOnSignUp = false;
  bool get validatePhoneOnSignUp => _validatePhoneOnSignUp;
  set validatePhoneOnSignUp(bool _value) {
    _validatePhoneOnSignUp = _value;
  }

  String _currentEmail = '';
  String get currentEmail => _currentEmail;
  set currentEmail(String _value) {
    _currentEmail = _value;
  }

  String _currentPhone = '';
  String get currentPhone => _currentPhone;
  set currentPhone(String _value) {
    _currentPhone = _value;
  }

  int _selectedMedia = 0;
  int get selectedMedia => _selectedMedia;
  set selectedMedia(int _value) {
    _selectedMedia = _value;
  }

  DateTime? _currDate;
  DateTime? get currDate => _currDate;
  set currDate(DateTime? _value) {
    _currDate = _value;
  }

  String _emailcart = '';
  String get emailcart => _emailcart;
  set emailcart(String _value) {
    _emailcart = _value;
  }

  DateTime? _filterAppDateStart;
  DateTime? get filterAppDateStart => _filterAppDateStart;
  set filterAppDateStart(DateTime? _value) {
    _filterAppDateStart = _value;
  }

  DateTime? _filterAppDateEnd;
  DateTime? get filterAppDateEnd => _filterAppDateEnd;
  set filterAppDateEnd(DateTime? _value) {
    _filterAppDateEnd = _value;
  }

  DateTime? _filterAucDateStart;
  DateTime? get filterAucDateStart => _filterAucDateStart;
  set filterAucDateStart(DateTime? _value) {
    _filterAucDateStart = _value;
  }

  DateTime? _filterAucDateEnd;
  DateTime? get filterAucDateEnd => _filterAucDateEnd;
  set filterAucDateEnd(DateTime? _value) {
    _filterAucDateEnd = _value;
  }

  DateTime? _selectedAppDateStart;
  DateTime? get selectedAppDateStart => _selectedAppDateStart;
  set selectedAppDateStart(DateTime? _value) {
    _selectedAppDateStart = _value;
  }

  DateTime? _selectedAppDateEnd;
  DateTime? get selectedAppDateEnd => _selectedAppDateEnd;
  set selectedAppDateEnd(DateTime? _value) {
    _selectedAppDateEnd = _value;
  }

  DateTime? _selectedAucDateStart;
  DateTime? get selectedAucDateStart => _selectedAucDateStart;
  set selectedAucDateStart(DateTime? _value) {
    _selectedAucDateStart = _value;
  }

  bool _filterAucfilterApplied = false;
  bool get filterAucfilterApplied => _filterAucfilterApplied;
  set filterAucfilterApplied(bool _value) {
    _filterAucfilterApplied = _value;
  }

  bool _filterAppfilterApplied = false;
  bool get filterAppfilterApplied => _filterAppfilterApplied;
  set filterAppfilterApplied(bool _value) {
    _filterAppfilterApplied = _value;
  }

  bool _selectedAucfilterApplied = false;
  bool get selectedAucfilterApplied => _selectedAucfilterApplied;
  set selectedAucfilterApplied(bool _value) {
    _selectedAucfilterApplied = _value;
  }

  bool _selectedAppfilterApplied = false;
  bool get selectedAppfilterApplied => _selectedAppfilterApplied;
  set selectedAppfilterApplied(bool _value) {
    _selectedAppfilterApplied = _value;
  }

  DateTime? _selectedAucDateEnd;
  DateTime? get selectedAucDateEnd => _selectedAucDateEnd;
  set selectedAucDateEnd(DateTime? _value) {
    _selectedAucDateEnd = _value;
  }

  bool _filterallowOpen = false;
  bool get filterallowOpen => _filterallowOpen;
  set filterallowOpen(bool _value) {
    _filterallowOpen = _value;
  }

  bool _selectedAllowOpen = false;
  bool get selectedAllowOpen => _selectedAllowOpen;
  set selectedAllowOpen(bool _value) {
    _selectedAllowOpen = _value;
  }

  bool _closeNudge = false;
  bool get closeNudge => _closeNudge;
  set closeNudge(bool _value) {
    _closeNudge = _value;
  }

  bool _Terms = true;
  bool get Terms => _Terms;
  set Terms(bool _value) {
    _Terms = _value;
  }

  int _count = 0;
  int get count => _count;
  set count(int _value) {
    _count = _value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

extension FlutterSecureStorageExtensions on FlutterSecureStorage {
  void remove(String key) => delete(key: key);

  Future<String?> getString(String key) async => await read(key: key);
  Future<void> setString(String key, String value) async =>
      await write(key: key, value: value);

  Future<bool?> getBool(String key) async => (await read(key: key)) == 'true';
  Future<void> setBool(String key, bool value) async =>
      await write(key: key, value: value.toString());

  Future<int?> getInt(String key) async =>
      int.tryParse(await read(key: key) ?? '');
  Future<void> setInt(String key, int value) async =>
      await write(key: key, value: value.toString());

  Future<double?> getDouble(String key) async =>
      double.tryParse(await read(key: key) ?? '');
  Future<void> setDouble(String key, double value) async =>
      await write(key: key, value: value.toString());

  Future<List<String>?> getStringList(String key) async =>
      await read(key: key).then((result) {
        if (result == null || result.isEmpty) {
          return null;
        }
        return CsvToListConverter()
            .convert(result)
            .first
            .map((e) => e.toString())
            .toList();
      });
  Future<void> setStringList(String key, List<String> value) async =>
      await write(key: key, value: ListToCsvConverter().convert([value]));
}
