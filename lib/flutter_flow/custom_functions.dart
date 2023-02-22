import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../auth/auth_util.dart';

bool verifyOtp(
  int? correctOtp,
  int? enteredOtp,
) {
  if (correctOtp == enteredOtp) {
    return true;
  } else {
    return false;
  }
}

bool? calendarDatesBefore(
  DateTime calendarDate,
  String dateStr2,
) {
  DateFormat format = DateFormat("MMMM DD, yyyy");

  // DateTime d1 = format.parse(dateStr1);
  DateTime d2 = format.parse(dateStr2);

  if (calendarDate.compareTo(d2) >= 0) {
    return true;
  } else {
    return false;
  }
}

String? limitStr1(String str1) {
  if (str1.length <= 47) {
    return str1;
  }
  return str1.substring(0, 46) + "...";
}

String strtoVideoPath(String str) {
  return str;
}

String strToTimeStampCopy(String? dateStr) {
  if (dateStr == "") {
    return "Open";
  }
  // Add your function code here!
  DateFormat format = DateFormat("MMMM DD, yyyy");
  String d = DateFormat.d().format(format.parse(dateStr!));
  String m = DateFormat.MMM().format(format.parse(dateStr!));
  String y = DateFormat.y().format(format.parse(dateStr!));
  return d + " " + m + " " + y;
}

bool? typesfunc(
  List<String>? typesList,
  String? type,
) {
  if (typesList!.isEmpty) {
    return true;
  } else {
    if (typesList.contains(type)) {
      return true;
    } else {
      return false;
    }
  }
}

List<String> splitString3videos(String str) {
  List<String> lst = str.split('|');
  List<String> videos = [];
  for (var i = 0; i < lst.length; i++) {
    if (lst[i].contains("jpeg") ||
        lst[i].contains("jpg") ||
        lst[i].contains("png") ||
        lst[i].contains("svg")) {
      continue;
    } else {
      videos.add(lst[i]);
    }
  }
  return videos;
}

bool validateEmailAndPhoneNumber(
  String? email,
  String? phoneNumber,
) {
  // Add your function code here!
  String patttern1 = r'(^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$)';
  RegExp regExp1 = RegExp(patttern1);
  if (!regExp1.hasMatch(email!)) {
    return false;
  }
  String patttern2 = r'^(?:[0-9]{10})$';
  RegExp regExp2 = RegExp(patttern2);
  if (!regExp2.hasMatch(phoneNumber!)) {
    return false;
  }
  return true;
}

bool searchAlgo2(
  PropertiesRecord? propDocs,
  String? searchStr,
) {
  List<String> requiredTitles = [];
  // var searchMap = {};
  // DateFormat format = DateFormat("MMMM DD, yyyy");

  // final searchMap = Map<DateTime, String>();
  // var sortedByKeyMap = Map<DateTime, String>();
  List<String> tags = propDocs!.seoTags!.split('|');
  if (propDocs!.title!.contains(searchStr!)) {
    return false;
    // searchMap[DateFormat('dd-mm-yyyy', 'en_US')
    //     .parse(propDocs!.postModified!)] = propDocs!.title!;
    //requiredTitles.add(propDocs[i].title!);
  } else if (tags.contains(searchStr)) {
    return false;
    //requiredTitles.add(propDocs[i].title!);
    // searchMap[DateFormat('dd-mm-yyyy', 'en_US')
    //     .parse(propDocs!.postModified!)] = propDocs!.title!;
  } else if (propDocs!.address!.contains(searchStr)) {
    return false;
    //requiredTitles.add(propDocs[i].title!);
    // searchMap[DateFormat('dd-mm-yyyy', 'en_US')
    //     .parse(propDocs!.postModified!)] = propDocs!.title!;
  }
  // sortedByKeyMap = Map.fromEntries(
  //     searchMap.entries.toList()..sort((e1, e2) => e1.key.compareTo(e2.key)));
  // requiredTitles = sortedByKeyMap.values.toList();
  // return requiredTitles;
  return true;
}

List<String> splitString3(String str) {
  List<String> lst = str.split('|');
  List<String> photos = [];
  for (var i = 0; i < lst.length; i++) {
    if (lst[i].contains("jpeg") ||
        lst[i].contains("jpg") ||
        lst[i].contains("png") ||
        lst[i].contains("svg")) {
      photos.add(lst[i]);
    }
  }
  return photos;
}

int filterCopy2(
  List<PropertiesRecord>? propDoc,
  List<String>? citiesList,
  List<String>? typesList,
  String? maxBudget,
  String? minBudget,
) {
  List<String>? ans = [];
  // List<String> req = [];
  var budgetMap = {
    "0": 0,
    "50L": 5000000,
    "2Cr": 20000000,
    "5Cr": 50000000,
    "25Cr": 250000000,
    "50Cr": 500000000,
    "100Cr": 1000000000,
    "200Cr": 2000000000,
    "500Cr": 5000000000,
    "1000Cr": 10000000000,
    "1000Cr+": 100000000000,
  };
  int i;
  for (i = 0; i < propDoc!.length; i++) {
    if (citiesList!.contains(propDoc[i].city) || (citiesList.isEmpty)) {
      if (typesList!.contains(propDoc[i].productCategories) ||
          typesList.isEmpty) {
        if (propDoc[i].auctionReservePrice! <= budgetMap[maxBudget]! &&
            propDoc[i].auctionReservePrice! >= budgetMap[minBudget]!) {
          ans.add(propDoc[i].uid!);
        }
      }
    }
  }
  int num_of_pages;
  num_of_pages = ans.length ~/ 10;
  if ((ans.length) % 10 != 0) {
    return num_of_pages + 1;
  } else {
    return num_of_pages;
  }
}

bool validatePhoneNumber(String? phoneNumber) {
  // Add your function code here!
  String patttern2 = r'^(?:[0-9]{10})$';
  RegExp regExp2 = RegExp(patttern2);
  if (!regExp2.hasMatch(phoneNumber!)) {
    return false;
  }
  return true;
}

bool checkMinSmallerthanMax(
  String? maxBudget,
  String? minBudget,
) {
  // Add your function code here!
  List<String?> budgets = ['Minimum', '50L', '2Cr', '5Cr', '25Cr', 'Maximum'];
  int min = budgets.indexOf(minBudget);
  int max = budgets.indexOf(maxBudget);
  if (min < max) {
    return true;
  } else {
    return false;
  }
}

String getUIDform1(DocumentReference? ref) {
  String refStr = ref.toString();
  return refStr.substring(16);
}

String getUIDform2(DocumentReference? ref) {
  String refStr = ref.toString();
  return refStr.substring(16);
}

String getUIDUser(DocumentReference ref) {
  String refStr = ref.toString();
  return refStr.substring(6);
}

List<String> getList(List<String>? inputList) {
  return inputList!.toSet().toList();
}

double multiple100(double arg) {
  // Add your function code here!
  return (100) * arg;
}

double gst(double? arg) {
  // Add your function code here!
  double x = (0.18 * 2400.0 * arg!);
  return double.parse(x.toStringAsFixed(2));
}

double addTotal(
  double arg1,
  double arg2,
) {
  // Add your function code here!
  return double.parse((arg1! + arg2!).toStringAsFixed(2));
}

int returnMinBudget(String? val) {
  if (val == "Minimum") {
    return 0;
  } else if (val == "50L") {
    return 5000000;
  } else if (val == "2Cr") {
    return 20000000;
  } else if (val == "5Cr") {
    return 50000000;
  } else {
    return 250000000;
  }
}

int returnMaxBudget(String? val) {
  if (val == "Maximum") {
    return 100000000000000;
  } else if (val == "50L") {
    return 5000000;
  } else if (val == "2Cr") {
    return 20000000;
  } else if (val == "5Cr") {
    return 50000000;
  } else {
    return 250000000;
  }
}

String filter(
  PropertiesRecord? propDoc,
  List<String>? citiesList,
  List<String>? typesList,
  String? maxBudget,
  String? minBudget,
  List<String>? areaList,
  List<String>? stateList,
) {
  String ans = "";
  var budgetMap = {
    "Minimum": 0,
    "50L": 5000000,
    "2Cr": 20000000,
    "5Cr": 50000000,
    "25Cr": 250000000,
    "Maximum": 100000000000000
  };
  if (citiesList!.contains(propDoc!.city) ||
      areaList!.contains(propDoc.area) ||
      stateList!.contains(propDoc.state) ||
      (citiesList.isEmpty && areaList.isEmpty && stateList.isEmpty)) {
    if (typesList!.contains(propDoc.productCategories) || typesList.isEmpty) {
      if (propDoc.auctionReservePrice! >= budgetMap[minBudget]! &&
          propDoc.auctionReservePrice! <= budgetMap[maxBudget]!) {
        ans = propDoc.uid!;
      }
    }
  }
  return ans;
}

List<String>? filterCopy(
  List<PropertiesRecord>? propDoc,
  List<String>? citiesList,
  List<String>? typesList,
  String? maxBudget,
  String? minBudget,
  int pageNum,
  List<String> statesList,
  List<String> locList,
  List<String> banksList,
) {
  List<String>? ans = [];
  List<String> req = [];
  var budgetMap = {
    "0": 0,
    "50L": 5000000,
    "2Cr": 20000000,
    "5Cr": 50000000,
    "25Cr": 250000000,
    "50Cr": 500000000,
    "100Cr": 1000000000,
    "200Cr": 2000000000,
    "500Cr": 5000000000,
    "1000Cr": 10000000000,
    "1000Cr+": 100000000000,
  };
  int i;

  void process(int j) {
    if (typesList!.contains(propDoc![j].productCategories) ||
        typesList.isEmpty) {
      if (propDoc[j].auctionReservePrice! <= budgetMap[maxBudget]! &&
          propDoc[j].auctionReservePrice! >= budgetMap[minBudget]!) {
        if (banksList.contains(propDoc![j].institutionName) ||
            banksList.isEmpty) {
          ans.add(propDoc[j].uid!);
        }
      }
    }
  }

  for (i = 0; i < propDoc!.length; i++) {
    if (locList.isEmpty) {
      if (citiesList!.isEmpty) {
        if (statesList!.isEmpty || statesList.contains(propDoc[i].state)) {
          process(i);
        }
      } else if (citiesList.contains(propDoc[i].city)) {
        process(i);
      }
    } else if (locList.contains(propDoc[i].location)) {
      process(i);
    }
  }

  // if (citiesList!.contains(propDoc[i].city) || (citiesList.isEmpty)) {
  //   if (typesList!.contains(propDoc[i].productCategories) ||
  //       typesList.isEmpty) {
  //     if (propDoc[i].auctionReservePrice! <= budgetMap[maxBudget]! &&
  //         propDoc[i].auctionReservePrice! >= budgetMap[minBudget]!) {
  //       ans.add(propDoc[i].uid!);
  //     }
  //   }
  // }

  for (int i = 0; i < ans.length; i++) {
    if (i > (pageNum - 1) * 10 && i <= (pageNum * 10)) {
      req.add(ans[i]);
    }
  }
  return req;
}

List<String>? filter2(
  List<PropertiesRecord>? propDoc,
  List<String>? citiesList,
  List<String>? typesList,
  String? maxBudget,
  String? minBudget,
  List<String>? areaList,
  List<String>? stateList,
  List<String>? banks,
  List<String>? poss,
) {
  List<String>? ans = [];
  var budgetMap = {
    "Minimum": 0,
    "50L": 5000000,
    "2Cr": 20000000,
    "5Cr": 50000000,
    "25Cr": 250000000,
    "Maximum": 100000000000000
  };
  int i, j, k;
  for (i = 0; i < propDoc!.length; i++) {
    k = 0;
    if (poss!.length == 0) {
      k = 1;
    } else {
      for (j = 0; j < poss!.length; j++) {
        if (propDoc[i]!.possessionStatus!.contains(poss[j])) {
          k = 1;
        }
      }
    }

    if (citiesList!.contains(propDoc[i].city) ||
        areaList!.contains(propDoc[i].area) ||
        stateList!.contains(propDoc[i].state) ||
        (citiesList.isEmpty && areaList.isEmpty && stateList.isEmpty)) {
      if (typesList!.contains(propDoc[i].productCategories) ||
          typesList.isEmpty) {
        if (propDoc[i].auctionReservePrice! <= budgetMap[maxBudget]! &&
            propDoc[i].auctionReservePrice! >= budgetMap[minBudget]!) {
          if (banks!.contains(propDoc[i].institutionName) || banks.isEmpty) {
            if (k == 1) {
              ans.add(propDoc[i].uid!);
            }
          }
        }
      }
    }
  }
  return ans!;
}

List<String> searchIconFunc(
  List<PropertiesRecord>? propDoc,
  String searchStr,
) {
  List<String> ans = [];
  int i;
  for (i = 0; i < propDoc!.length; i++) {
    String temp = propDoc[i].address!;
    if (temp.toLowerCase().contains(searchStr.toLowerCase())) {
      ans.add(propDoc[i].uid!);
    }
  }
  return ans!;
}

List<String> searchCity(
  List<PropertiesRecord>? propRec,
  String? keyword,
) {
  List<String> list = [];
  for (int i = 0; i < propRec!.length; i++) {
    String str = propRec[i].city!;
    if (str.contains(keyword!)) {
      list.add(str);
    }
  }

  return list;
}

String capitalize(String? input) {
  final List<String> splitStr = input!.split(' ');
  for (int i = 0; i < splitStr.length; i++) {
    splitStr[i] = '${splitStr[i][0].toUpperCase()}${splitStr[i].substring(1)}';
  }
  final output = splitStr.join(' ');
  return output;
}

bool contains(
  List<String>? list,
  String? keyword,
) {
  if (list!.contains(keyword)) {
    return true;
  } else {
    return false;
  }
}

DateTime strToTimeStamp(String? dateStr) {
  // Add your function code here!
  DateFormat format = DateFormat("MMMM DD, yyyy");
  return format.parse(dateStr!);
}

String format(int? amount) {
  var f = NumberFormat("#,##,000");
  String str = f.format(int.parse(amount.toString()));
  return "₹ " + str;
}

LatLng strToLatLng(
  double? latitude,
  double? longitude,
) {
  LatLng location = LatLng(latitude!, longitude!);
  return location;
}

String notifTime(String notifStr) {
  return notifStr.split("-")[2];
}

List<String> combNremDuplicates(
  List<String> pv,
  List<String> en,
  List<String> dd,
) {
  // Add your function code here!
  List<String> finList = [];
  finList = pv + en + dd;
  return finList.toSet().toList();
}

List<String> saveReq(
  bool cp,
  bool ih,
  bool al,
  bool lnb,
  bool office,
  bool rp,
  bool sh,
  bool rf,
  bool ip,
) {
  List<String> list = [];
  // Add your function code here!
  if (cp) {
    list.add("Commercial Property");
  }
  if (ih) {
    list.add("Independent House");
  }
  if (al) {
    list.add("Agricultural Land");
  }
  if (lnb) {
    list.add("Land and Building");
  }
  if (office) {
    list.add("Office");
  }
  if (rp) {
    list.add("Residential Plot");
  }
  if (sh) {
    list.add("Shop");
  }
  if (ip) {
    list.add("Industrial Property");
  }
  if (rf) {
    list.add("Residential Flat");
  }
  return list;
}

List<String> saveInstitutionType(
  bool public,
  bool private,
  bool nbfc,
  bool coOp,
) {
  List<String> list = [];
  // Add your function code here!
  if (public) {
    list.add("Public Sector Bank");
  }
  if (private) {
    list.add("Private Sector Bank");
  }
  if (nbfc) {
    list.add("NBFC");
  }
  if (coOp) {
    list.add("Co-operative Bank");
  }
  return list;
}

List<String> saveAuctionAgency(
  bool mstc,
  bool aucTiger,
  bool dispHub,
) {
  List<String> list = [];
  // Add your function code here!
  if (mstc) {
    list.add("MSTC");
  }
  if (aucTiger) {
    list.add("Auction Tiger");
  }
  if (dispHub) {
    list.add("Disposal Hub");
  }
  return list;
}

List<String> savePossessionType(
  bool phys,
  bool symb,
) {
  List<String> list = [];
  // Add your function code here!
  if (phys) {
    list.add("Physical");
  }
  if (symb) {
    list.add("Symbolic");
  }
  return list;
}

int minuteDiff(
  DateTime prevTime,
  DateTime currTime,
) {
  Duration diff = currTime.difference(prevTime);
  return diff.inMinutes;
}

bool updateOrNot(
  String name,
  String name1,
  bool email,
  bool email1,
) {
  bool update = false;
  // Add your function code here!
  if (name != name1) {
    update = true;
  }
  if (email != email1) {
    update = true;
  }
  return update;
}

List<String> fetchData(
  dynamic jsonData,
  List<String>? citiesList,
  List<String>? typesList,
  String? maxBudget,
  String? minBudget,
  List<String>? areaList,
  List<String>? stateList,
) {
  var rest = jsonData["documents"] as List;
  //var filteredList;
  //filteredList = rest.where((val) => val["matchLevel"] == "city");
  //return filteredList;
  List<String> ans = [];
/*  for (var i = 0; i < rest.length; i++) {
    if (rest[i]["fields"]["city"]["stringValue"] == "New Delhi") {
      ans.add(rest[i]["fields"]["uid"]["stringValue"]);
    }
  } */
  var budgetMap = {
    "Minimum": 0,
    "50L": 5000000,
    "2Cr": 20000000,
    "5Cr": 50000000,
    "25Cr": 250000000,
    "Maximum": 100000000000000
  };
  int i;
  for (i = 0; i < rest.length; i++) {
    if (citiesList!.contains(rest[i]["fields"]["city"]["stringValue"]) ||
        areaList!.contains(rest[i]["fields"]["location"]["stringValue"]) ||
        stateList!.contains(rest[i]["fields"]["state"]["stringValue"]) ||
        (citiesList!.isEmpty && areaList!.isEmpty && stateList!.isEmpty)) {
      if (typesList!.contains(
              rest[i]["fields"]["product_categories"]["stringValue"]) ||
          typesList.isEmpty) {
        ans.add(i.toString());
        ans.add(rest[i]["fields"]["uid"]["stringValue"]);
      }
    }
  }
  ans.add(i.toString());
  return ans;
}

List<String> reqArea(List<String> reqStr) {
  List<String> state = [];
  List<String> city = [];
  List<String> area = [];

  for (int i = 0; i < reqStr.length; i++) {
    String str1 = reqStr[i];
    List<String> lst = str1.split(", ");

    if (lst.length <= 1) {
      state = state + lst;
      city = city + lst;
    } else {
      area = area + lst.sublist(0, lst.length - 1);
      city = area;
    }
  }
  return area;
}

List<String> reqCity(List<String> reqStr) {
  List<String> state = [];
  List<String> city = [];
  List<String> area = [];

  for (int i = 0; i < reqStr.length; i++) {
    String str1 = reqStr[i];
    List<String> lst = str1.split(", ");

    if (lst.length <= 1) {
      state = state + lst;
      city = city + lst;
    } else {
      area = area + lst.sublist(0, lst.length - 1);
      city = area;
    }
  }
  return city;
}

List<String> reqState(List<String> reqStr) {
  List<String> state = [];
  List<String> city = [];
  List<String> area = [];

  for (int i = 0; i < reqStr.length; i++) {
    String str1 = reqStr[i];
    List<String> lst = str1.split(", ");

    if (lst.length <= 1) {
      state = state + lst;
      city = city + lst;
    } else {
      area = area + lst.sublist(0, lst.length - 1);
      city = area;
    }
  }
  return state;
}

List<String> splitList(
  List<String> propList,
  int pageNum,
) {
  // Add your function code here!
  int j = pageNum * 10;
  List<String> res = [];
  for (var i = j - 10; i < propList.length && i < j; i++) {
    res.add(propList[i]);
  }
  return res;
}

int totalPageNum(int count) {
  // Add your function code here!
  if (count % 10 == 0) {
    return (count ~/ 10);
  } else {
    return (count ~/ 10) + 1;
  }
}

int increaseBy1(int num) {
  // Add your function code here!
  return num + 1;
}

int decreaseby1(int num) {
  // Add your function code here!
  return num - 1;
}

List<String> removeDuplicates(List<String> input) {
  input.removeWhere((item) => item.isEmpty);

  return input.toSet().toList();
}

String getBudgetInt(String? inp) {
  Map<String, String> budgetMap = {
    "0": "0",
    "50L": "50",
    "2Cr": "2",
    "5Cr": "5",
    "25Cr": "25",
    "25Cr+": "25+"
  };
  return budgetMap[inp]!;
}

String lakhsorCr(String? inp) {
  Map<String, String> budgetMap = {
    "0": "",
    "50L": "Lakhs",
    "2Cr": "Crores",
    "5Cr": "Crores",
    "25Cr": "Crores",
    "25Cr+": "Crores"
  };
  return budgetMap[inp]!;
}

List<String> separateTags(String? tagsStr) {
  // Add your function code here!
  List<String> tags = tagsStr!.split('|');
  return tags;
}

List<String> searchAlgo(
  List<PropertiesRecord>? propDocs,
  String? searchStr,
) {
  List<String> requiredTitles = [];
  // var searchMap = {};
  // DateFormat format = DateFormat("MMMM DD, yyyy");

  // final searchMap = Map<DateTime, String>();
  // var sortedByKeyMap = Map<DateTime, String>();
  for (var i = 0; i < propDocs!.length && i < 10; i++) {
    List<String> tags = propDocs[i].seoTags!.split('|');
    if (propDocs[i].title!.contains(searchStr!)) {
      // searchMap[DateFormat('dd-mm-yyyy', 'en_US')
      //     .parse(propDocs[i].postModified!)] = propDocs[i].title!;
      requiredTitles.add(propDocs[i].title!);
    } else if (tags.contains(searchStr)) {
      requiredTitles.add(propDocs[i].title!);
      // searchMap[DateFormat('dd-mm-yyyy', 'en_US')
      //     .parse(propDocs[i].postModified!)] = propDocs[i].title!;
    } else if (propDocs[i].address!.contains(searchStr)) {
      requiredTitles.add(propDocs[i].title!);
      // searchMap[DateFormat('dd-mm-yyyy', 'en_US')
      //     .parse(propDocs[i].postModified!)] = propDocs[i].title!;
    }
  }
  // sortedByKeyMap = Map.fromEntries(
  //     searchMap.entries.toList()..sort((e1, e2) => e1.key.compareTo(e2.key)));
  // requiredTitles = sortedByKeyMap.values.toList();
  return requiredTitles;
}

String getProfileInititals(
  String email,
  String displayName,
) {
  String Initials = "";
  if (displayName.length < 2) {
    Initials = email.substring(0, 2);
  } else {
    Initials = displayName.substring(0, 2);
  }
  return Initials.toUpperCase();
}

DateTime? newCustomFunction() {
  return DateFormat('dd-mm-yyyy', 'en_US').parse('03-11-2022 05:13');
}

String? formatDate(String? date) {
  if (date == "") {
    return "Open";
  } else {
    // final DateTime now = DateTime.now();
    // DateFormat format = DateFormat("MMMM DD, yyyy");
    // DateTime x = format.parse(date!);
    // final DateFormat formatter = DateFormat('dd MMMM yyyy');
    // final String formatted = formatter.format(x);
    // return formatted; // something like 2013-04-20
    return date;
  }
}

List<String> splitString(List<String> faqStrList) {
  List<String> reqList = [];

  for (int i = 0; i < faqStrList.length; i++) {
    List<String> splitted = faqStrList[i].split(',');
    reqList.add(splitted[0]);
  }

  return reqList;
}

bool strContains(
  String str,
  String keyword,
) {
  return str.toLowerCase().contains(keyword.toLowerCase());
}

String? splitString2(String str) {
  List<String> lst = str.split(',');
  return lst[0];
}

int plpTotalPages(int totalProp) {
  double totalPages = totalProp / 10;
  return totalPages.toInt();
}

bool displayProporNot(
  int propIndex,
  int currPageNum,
) {
  int x1 = (currPageNum - 1) * 10;
  int x2 = (currPageNum * 10);
  if (propIndex > x1 && propIndex <= x2) {
    return true;
  } else {
    return false;
  }
}

List<String> fetchState(
  List<PropertiesRecord> propDocs,
  List<String> cities,
) {
  List<String> state = [];
  for (int i = 0; i < propDocs.length; i++) {
    if (cities.contains(propDocs[i].city)) {
      state.add(propDocs[i].state!);
    }
  }
  return state;
}

List<String> returnEmptyList() {
  List<String> empty = [];
  return empty;
}

List<LatLng> listofLATLNGS(List<PropertiesRecord> props) {
  List<LatLng> req = [];
  for (int i = 0; i < props.length; i++) {
    LatLng location = LatLng(props[i].latitude!, props[i].longitude!);
    req.add(location);
  }

  return req;
}

LatLng returnFirstItem(
  List<LatLng> listLL,
  int? index,
) {
  return listLL[index!];
}

String strtoImagePath(String str) {
  return str;
}

List<String> resFilterList(
  List<String> types,
  List<String> loc,
  String minBudget,
  String maxBudget,
) {
  List<String> budget = [];
  String x = minBudget + " " + "-" + " " + maxBudget;
  budget.add(x);
  List<String> res = [];
  res = [budget, types, loc].expand((x) => x).toList();
  return res;
}

String filterdate(DateTime date) {
  final DateTime now = DateTime.now();
  final DateFormat formatter = DateFormat('dd MMM yyyy');
  final String formatted = formatter.format(date);
  return formatted; // something like 2013-04-20
  // return DateFormat.yMMMd().format(DateTime.now());
}

bool search2(
  String title,
  String address,
  String keyword,
) {
  if (title.toLowerCase().contains(keyword.toLowerCase())) {
    return true;
  } else if (address.toLowerCase().contains(keyword.toLowerCase())) {
    return true;
  }
  return false;
}

bool? filterplace(
  List<String>? locList,
  List<String>? cityList,
  String? cityItem,
  String? locItem,
  List<String>? stateList,
  String stateItem,
) {
  if (locList!.isEmpty) {
    if (cityList!.isEmpty) {
      if (stateList!.isEmpty) {
        return true;
      } else {
        if (stateList.contains(stateItem)) {
          return true;
        } else {
          return false;
        }
      }
    } else {
      if (cityList.contains(cityItem)) {
        return true;
      } else {
        return false;
      }
    }
  } else {
    if (locList.contains(locItem)) {
      return true;
    } else {
      return false;
    }
  }
}

bool budgetFunc(
  String minBudget,
  String maxBudget,
  int price,
) {
  var budgetMap = {
    "0": 0,
    "50L": 5000000,
    "2Cr": 20000000,
    "5Cr": 50000000,
    "25Cr": 250000000,
    "50Cr": 500000000,
    "100Cr": 1000000000,
    "200Cr": 2000000000,
    "500Cr": 5000000000,
    "1000Cr": 10000000000,
    "1000Cr+": 100000000000,
  };
  int minPrice = budgetMap[minBudget]!.toInt();
  int maxPrice = budgetMap[maxBudget]!.toInt();

  if (price >= minPrice && price <= maxPrice) {
    return true;
  } else {
    return false;
  }
}

bool? banksfunc(
  List<String>? bankslist,
  String? bank,
) {
  if (bankslist!.isEmpty) {
    return true;
  } else {
    if (bankslist.contains(bank!)) {
      return true;
    } else {
      return false;
    }
  }
}

bool searchstrlength(String keyword) {
  if (keyword.length >= 3) {
    return true;
  } else {
    return false;
  }
}

int? returnPrice(String budg) {
  var budgetMap = {
    "0": 0,
    "50L": 5000000,
    "2Cr": 20000000,
    "5Cr": 50000000,
    "25Cr": 250000000,
    "50Cr": 500000000,
    "100Cr": 1000000000,
    "200Cr": 2000000000,
    "500Cr": 5000000000,
    "1000Cr": 10000000000,
    "1000Cr+": 100000000000,
  };
  return budgetMap[budg];
}

List<String> generatePagination(
  int currPage,
  int totalPages,
) {
  int shownPages = 3;
  List<String> res = [];
  if (currPage > totalPages - shownPages) {
    res = [
      (totalPages - 2).toString(),
      (totalPages - 1).toString(),
      (totalPages).toString()
    ];
  } else {
    res = [
      currPage.toString(),
      (currPage + 1).toString(),
      (currPage + 2).toString(),
      '. . .',
      totalPages.toString()
    ];
  }
  return res;
}

int toInt(String str) {
  return int.parse(str);
}

String? generateMaplink(
  String latitude,
  String longitude,
) {
  String map_link = "https://maps.google.com/maps?q=" + latitude + longitude;
  return map_link;
}

int returnStringlen(String str) {
  return str.length;
}

String displayname(
  String name,
  String email,
) {
  if (name == "") {
    return email.split('@')[0];
  } else {
    return name;
  }
}

String shareProperty(
  String title,
  String rprice,
  String perunitrate,
  String discount,
  String endDate,
  String propurl,
  String location,
) {
  String msg = "";
  msg = title +
      "\n" +
      "\n" +
      "Reserve Price: " +
      rprice +
      "\n" +
      "Per Unit Rate: " +
      perunitrate +
      "\n" +
      "Estimated Discount: " +
      discount +
      "\n" +
      "Application Deadline: " +
      endDate +
      "\n" +
      "\n" +
      "Property Details: " +
      "\n" +
      propurl +
      "\n" +
      "\n" +
      "Location: " +
      location +
      "\n" +
      "\n" +
      "Call: +91 1140 845 500 " +
      "\n" +
      "Whatsapp: +91 9899 360 360" +
      "\n" +
      "Email: care@hecta.co";
  return msg;
}

List<String> insertCity(
  List<String> citylist,
  String item,
) {
  citylist.insert(0, item);
  return citylist;
}

List<String> appendatStart(
  List<String> list1,
  String item,
) {
  list1.insert(0, item);
  return list1;
}

bool otplength(String otp) {
  if (otp.length == 6) {
    return true;
  }
  return false;
}

String tostr(int xy) {
  return xy.toString();
}

double removeNagative(double cartamt) {
  if (cartamt < 0)
    return 0;
  else
    return cartamt;
}

int lengthList(List<String> map) {
  return map.length;
}

int mapLength(List<String>? args) {
  if (args == null) return 0;
  return args.length;
}

double totalAmt(int args) {
  return double.parse((2499 * args).toStringAsFixed(2));
}

int strlength(String str) {
  return str.length;
}

bool pincodecheck(String str) {
  if (str.length == 0) {
    return true;
  } else if (str.length == 6) {
    return true;
  }
  return false;
}

dynamic pagination(List<PropertiesRecord> props) {
  // Prop1Struct x={
  //   DocumentReference doc;
  // };

  // class prop2
  // {
  //   String doc;
  // };
  // propMap.doc = ["x"].toBuiltList();
  // List<Prop1Struct> y = [];
  var len = props.length;
  var size = 10;
  List<String> st = [];
  List<List<String>> z = [];
  for (var i = 0; i < props.length; i++) {
    st.add(props[i].uid!);
  }
  for (var i = 0; i < len; i += size) {
    var end = (i + size < len) ? i + size : len;
    List<String> x = st.sublist(i, end);
    // chunks.add(props.sublist(i,end));
    z.add(x);
  }
  var json = {'data': z};
  return json;
}

String streetViewLink(String street) {
  if (street == "") return "";
  return street.split("\"")[1];
}

String? sample1(
  List<String> list,
  String item,
) {
  return "1";
}

String? limitStr(String str1) {
  if (str1.length <= 31) {
    return str1;
  }
  return str1.substring(0, 30) + "...";
}

String stripTitle(String title) {
  List<String> x = title.split(",");
  String y = "";
  var i;
  if (x.length >= 5) {
    for (i = 0; i < x.length - 1 && i != 1; i++) {
      y += x[i] + ", ";
    }
    y += x[i];
    return y;
  }
  return title;
}

bool? calendarDatesAfter(
  DateTime calendarDate,
  String dateStr2,
) {
  if (dateStr2 == "") {
    return false;
  }
  DateFormat format = DateFormat("MMMM DD, yyyy");

  // DateTime d1 = format.parse(dateStr1);
  DateTime d2 = format.parse(dateStr2);

  if (calendarDate.compareTo(d2) <= 0) {
    return true;
  } else {
    return false;
  }
}

bool mediaExists(
  String photovideo,
  String street,
  String panorama,
) {
  if (photovideo == "") return false;
  return true;
}

List<String> mediaString(
  String regularphoto,
  String street,
  String panoramicphoto,
) {
  List<String> res = [];
  bool photos = false, video = false, streetview = false, panorama = false;
  List<String> lststr = regularphoto.split("|");
  if (regularphoto.contains("jpeg") ||
      regularphoto.contains("jpg") ||
      regularphoto.contains("png") ||
      regularphoto.contains("svg")) {
    photos = true;
  } else if (regularphoto.length > 0) {
    video = true;
  }
  if (street == "") {
    streetview = false;
  } else {
    streetview = true;
  }
  if (panoramicphoto == "") {
    panorama = false;
  } else {
    panorama = true;
  }
  if (photos) {
    res.add("Photos");
  }
  if (video) {
    res.add("Videos");
  }

  if (panorama) {
    res.add("Aerial View");
  }
  return res;
}

bool checkmediaAction(
  int mediaInt,
  String mediaItem,
) {
  if (mediaInt == 1 && mediaItem == "Photos") {
    return true;
  } else if (mediaInt == 2 && mediaItem == "Virtual Tour") {
    return true;
  } else if (mediaInt == 3 && mediaItem == "Videos") {
    return true;
  } else if (mediaInt == 4 && mediaItem == "Aerial View") {
    return true;
  }
  return false;
}

int changeselectedMedia(String mediaItem) {
  if (mediaItem == "Photos") {
    return 1;
  } else if (mediaItem == "Virtual Tour") {
    return 2;
  } else if (mediaItem == "Videos") {
    return 3;
  } else {
    return 4;
  }
}

List<String> carouselsProp(String title) {
  List<String> res = [];
  if (title == "Villas") {
    res.add("Independent House");
  }
  if (title == "Flats Over 20 Lakhs") {
    res.add("Residential Flat");
  }

  if (title == "Commercial Spaces") {
    res.add("Commercial Property");
    res.add("Office");
    res.add("Shop");
  }
  if (title == "Land Banks") {
    res.add("Agricultural Land");
  }

  if (title == "Flats Under 20 Lakhs") {
    res.add("Residential Flat");
  }

  if (title == "Residential Plots") {
    res.add("Residential Plot");
  }

  if (title == "Do-It-Yourself Homes") {
    res.add("Land and Building");
  }
  if (title == "Industrial Plot") {
    res.add("Industrial Property");
  }
  return res;
}

bool applydateFilter(
  DateTime startdate,
  DateTime enddate,
  DateTime current,
) {
  DateFormat format = DateFormat("MMMM DD, yyyy");
  // DateTime start = format.parse(startdate);
  // DateTime end = format.parse(enddate);
  if (startdate.difference(current).inDays == 0 &&
      enddate.difference(current).inDays == 0) {
    return false;
  }
  return true;
}

String xyz() {
  String x = "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\"><html><head><META http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\"><style>#m_outlook a{padding:0}.m_es-button{text-decoration:none!important}.m_es-desk-hidden{display:none;float:left;overflow:hidden;width:0;max-height:0;line-height:0}@media only screen and (max-width:600px){p,ul li,ol li,a{line-height:150%!important}h1,h2,h3,h1 a,h2 a,h3 a{line-height:120%}h1{font-size:30px!important;text-align:left}h2{font-size:24px!important;text-align:left}h3{font-size:20px!important;text-align:left}.m_es-header-body h1 a,.m_es-content-body h1 a,.m_es-footer-body h1 a{font-size:30px!important;text-align:left}.m_es-header-body h2 a,.m_es-content-body h2 a,.m_es-footer-body h2 a{font-size:24px!important;text-align:left}.m_es-header-body h3 a,.m_es-content-body h3 a,.m_es-footer-body h3 a{font-size:20px!important;text-align:left}.m_es-menu td a{font-size:14px!important}.m_es-header-body p,.m_es-header-body ul li,.m_es-header-body ol li,.m_es-header-body a{font-size:14px!important}.m_es-content-body p,.m_es-content-body ul li,.m_es-content-body ol li,.m_es-content-body a{font-size:12px!important}.m_es-footer-body p,.m_es-footer-body ul li,.m_es-footer-body ol li,.m_es-footer-body a{font-size:14px!important}.m_es-infoblock p,.m_es-infoblock ul li,.m_es-infoblock ol li,.m_es-infoblock a{font-size:12px!important}.m_es-m-txt-c,.m_es-m-txt-c h1,.m_es-m-txt-c h2,.m_es-m-txt-c h3{text-align:center!important}.m_es-m-txt-r,.m_es-m-txt-r h1,.m_es-m-txt-r h2,.m_es-m-txt-r h3{text-align:right!important}.m_es-m-txt-l,.m_es-m-txt-l h1,.m_es-m-txt-l h2,.m_es-m-txt-l h3{text-align:left!important}.m_es-m-txt-r img,.m_es-m-txt-c img,.m_es-m-txt-l img{display:inline!important}.m_es-button-border{display:inline-block!important}a.m_es-button,button.m_es-button{font-size:18px!important;display:inline-block!important}.m_es-adaptive table,.m_es-left,.m_es-right{width:100%!important}.m_es-content table,.m_es-header table,.m_es-footer table,.m_es-content,.m_es-footer,.m_es-header{width:100%!important;max-width:600px!important}.m_es-adapt-td{display:block!important;width:100%!important}.m_adapt-img{width:100%!important;height:auto!important}.m_es-m-p0{padding:0px!important}.m_es-m-p0r{padding-right:0px!important}.m_es-m-p0l{padding-left:0px!important}.m_es-m-p0t{padding-top:0px!important}.m_es-m-p0b{padding-bottom:0!important}.m_es-m-p20b{padding-bottom:20px!important}.m_es-mobile-hidden,.m_es-hidden{display:none!important}tr.m_es-desk-hidden,td.m_es-desk-hidden,table.m_es-desk-hidden{width:auto!important;overflow:visible!important;float:none!important;max-height:inherit!important;line-height:inherit!important}tr.m_es-desk-hidden{display:table-row!important}table.m_es-desk-hidden{display:table!important}td.m_es-desk-menu-hidden{display:table-cell!important}.m_es-menu td{width:1%!important}table.m_es-table-not-adapt,.m_esd-block-html table{width:auto!important}table.m_es-social{display:inline-block!important}table.m_es-social td{display:inline-block!important}.m_es-desk-hidden{display:table-row!important;width:auto!important;overflow:visible!important;max-height:inherit!important}}</style></head><body><u></u>" +
      "<div style=\"width:100%;font-family:arial,&#39;helvetica neue&#39;,helvetica,sans-serif;padding:0;Margin:0\">" +
      "<div class=\"m_es-wrapper-color\" style=\"background-color:#f6f6f6\">" +
      "<table class=\"m_es-wrapper\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" style=\"border-collapse:collapse;border-spacing:0px;padding:0;Margin:0;width:100%;height:100%;background-repeat:repeat;background-position:center top;background-color:#f6f6f6\">" +
      "<tr>" +
      "<td valign=\"top\" style=\"padding:0;Margin:0\">" +
      "<table class=\"m_es-header\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\" style=\"border-collapse:collapse;border-spacing:0px;table-layout:fixed!important;width:100%;background-color:transparent;background-repeat:repeat;background-position:center top\">" +
      "<tr>" +
      "<td align=\"center\" style=\"padding:0;Margin:0\">" +
      "<table class=\"m_es-header-body\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#ffffff\" align=\"center\" style=\"border-collapse:collapse;border-spacing:0px;background-color:#ffffff;width:600px\">" +
      "<tr>" +
      "<td align=\"left\" bgcolor=\"#091e25\" style=\"padding:0;Margin:0;background-color:#091e25\">" +
      "<table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse:collapse;border-spacing:0px\">" +
      "<tr>" +
      "<td align=\"center\" valign=\"top\" style=\"padding:0;Margin:0;width:600px\">" +
      "<table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" role=\"presentation\" style=\"border-collapse:collapse;border-spacing:0px\">" +
      "<tr>" +
      "<td align=\"center\" style=\"padding:0;Margin:0;padding-top:5px;padding-bottom:5px;font-size:0\">" +
      "<table border=\"0\" width=\"100%\" height=\"100%\" cellpadding=\"0\" cellspacing=\"0\" role=\"presentation\" style=\"border-collapse:collapse;border-spacing:0px\">" +
      "<tr>" +
      "<td style=\"padding:0;Margin:0;border-bottom:0px solid #cccccc;background:unset;height:1px;width:100%;margin:0px\"></td>" +
      "</tr>" +
      "</table></td>" +
      "</tr>" +
      "</table></td>" +
      "</tr>" +
      "</table></td>" +
      "</tr>" +
      "<tr>" +
      "<td class=\"m_esdev-adapt-off\" align=\"left\" bgcolor=\"#f2f2f2\" style=\"padding:0;Margin:0;padding-top:20px;padding-left:20px;padding-right:20px;background-color:#f2f2f2\">" +
      "<table cellpadding=\"0\" cellspacing=\"0\" class=\"m_esdev-mso-table\" style=\"border-collapse:collapse;border-spacing:0px;width:560px\">" +
      "<tr>" +
      "<td class=\"m_esdev-mso-td\" valign=\"top\" style=\"padding:0;Margin:0\">" +
      "<table cellspacing=\"0\" cellpadding=\"0\" align=\"left\" class=\"m_es-left\" style=\"border-collapse:collapse;border-spacing:0px;float:left\">" +
      "<tr>" +
      "<td class=\"m_es-m-p0r\" valign=\"top\" align=\"center\" style=\"padding:0;Margin:0;width:270px\">" +
      "<table width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" role=\"presentation\" style=\"border-collapse:collapse;border-spacing:0px\">" +
      "<tr>" +
      "<td align=\"left\" style=\"padding:0;Margin:0;font-size:0px\"><img src=\"https://ci4.googleusercontent.com/proxy/omfFWDV2w0OfYIJqaNAm8qhvM7_h-5jPB9LYoD7E6V8h8zH2_yJsW4EI4Xmiv79TQXTzEP3LyMN6FH3XY0PZdKt4kJo9z6-ysO1hh-j7=s0-d-e1-ft#https://hecta.co/wp-content/uploads/2022/01/Header_Logo.png\" alt style=\"display:block;border:0;outline:none;text-decoration:none\" width=\"76\"></td>" +
      "</tr>" +
      "<tr>" +
      "<td style=\"padding:0;Margin:0\"><p style=\"Margin:0;font-family:roboto,&#39;helvetica neue&#39;,helvetica,arial,sans-serif;line-height:21px;color:#091e25;font-size:14px;font-weight:500\">Bank se... Hecta pe...</p></td>" +
      "</tr>" +
      "</table></td>" +
      "</tr>" +
      "</table></td>" +
      "<td style=\"padding:0;Margin:0;width:20px\"></td>" +
      "<td class=\"m_esdev-mso-td\" valign=\"top\" style=\"padding:0;Margin:0\">" +
      "<table cellpadding=\"0\" cellspacing=\"0\" class=\"m_es-right\" align=\"right\" style=\"border-collapse:collapse;border-spacing:0px;float:right\">" +
      "<tr>" +
      "<td align=\"left\" style=\"padding:0;Margin:0;width:270px\">" +
      "<table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" role=\"presentation\" style=\"border-collapse:collapse;border-spacing:0px\">" +
      "<tr>" +
      "<td style=\"padding:0;Margin:0;padding-top:20px\"><a style=\"text-decoration:none;color:#091e25;font-size:14px;font-weight:500;text-align:right\" href=\"https://www.google.com/url?q=https://hecta.co&amp;source=gmail-html&amp;ust=1674540153338000&amp;usg=AOvVaw0NpxsIbJGlhiZ0pMKzqgqZ\" target=\"_blank\" rel=\"noreferrer\"><p style=\"Margin:0;font-family:roboto,&#39;helvetica neue&#39;,helvetica,arial,sans-serif;line-height:21px;color:#091e25;font-size:14px;font-weight:500;text-align:right\">www.hecta.co</p></a></td>" +
      "</tr>" +
      "</table></td>" +
      "</tr>" +
      "</table></td>" +
      "</tr>" +
      "</table></td>" +
      "</tr>" +
      "</table></td>" +
      "</tr>" +
      "</table>" +
      "<table class=\"m_es-content\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\" style=\"border-collapse:collapse;border-spacing:0px;table-layout:fixed!important;width:100%\">" +
      "<tr>" +
      "<td align=\"center\" style=\"padding:0;Margin:0\">" +
      "<table class=\"m_es-content-body\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#ffffff\" align=\"center\" style=\"border-collapse:collapse;border-spacing:0px;background-color:#ffffff;width:600px\">" +
      "<tr>" +
      "<td align=\"left\" style=\"padding:0;Margin:0\">" +
      "<table width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" style=\"border-collapse:collapse;border-spacing:0px\">" +
      "<tr>" +
      "<td valign=\"top\" align=\"center\" style=\"padding:0;Margin:0;width:600px\">" +
      "<table width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" role=\"presentation\" style=\"border-collapse:collapse;border-spacing:0px\">" +
      "<tr>" +
      "<td align=\"center\" style=\"Margin:0;padding-top:15px;padding-bottom:20px;padding-left:20px;padding-right:20px;font-size:0\" bgcolor=\"#f2f2f2\">" +
      "<table border=\"0\" width=\"100%\" height=\"100%\" cellpadding=\"0\" cellspacing=\"0\" role=\"presentation\" style=\"border-collapse:collapse;border-spacing:0px\">" +
      "<tr>" +
      "<td style=\"padding:0;Margin:0;border-bottom:1px solid #bcbcbc;background:unset;height:1px;width:100%;margin:0px\"></td>" +
      "</tr>" +
      "</table></td>" +
      "</tr>" +
      "</table></td>" +
      "</tr>" +
      "</table></td>" +
      "</tr>" +
      "</table></td>" +
      "</tr>" +
      "</table>" +
      "<table class=\"m_es-footer\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\" style=\"border-collapse:collapse;border-spacing:0px;table-layout:fixed!important;width:100%;background-color:transparent;background-repeat:repeat;background-position:center top\">" +
      "<tr>" +
      "<td align=\"center\" style=\"padding:0;Margin:0\">" +
      "<table class=\"m_es-footer-body\" cellspacing=\"0\" cellpadding=\"0\" bgcolor=\"#ffffff\" align=\"center\" style=\"border-collapse:collapse;border-spacing:0px;background-color:#ffffff;width:600px\">" +
      "<tr>" +
      "<td align=\"left\" bgcolor=\"#f2f2f2\" style=\"padding:0;Margin:0;padding-bottom:20px;padding-left:20px;padding-right:20px;background-color:#f2f2f2\">" +
      "<table cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" style=\"border-collapse:collapse;border-spacing:0px\">" +
      "<tr>" +
      "<td align=\"left\" style=\"padding:0;Margin:0;width:560px\">" +
      "<table width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" role=\"presentation\" style=\"border-collapse:collapse;border-spacing:0px\">" +
      "<tr>" +
      "<td style=\"padding:0;Margin:0\"><h3 style=\"Margin:0;line-height:22px;font-family:arial,&#39;helvetica neue&#39;,helvetica,sans-serif;font-size:20px!important;font-style:normal;font-weight:600;color:#00bbbb\">Expression of Interest - Abhishek Gupta</h3></td>" +
      "</tr>" +
      "</table></td>" +
      "</tr>" +
      "</table></td>" +
      "</tr>" +
      "<tr>" +
      "<td align=\"left\" style=\"padding:0;Margin:0\">" +
      "<table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse:collapse;border-spacing:0px\">" +
      "<tr>" +
      "<td align=\"center\" valign=\"top\" style=\"padding:0;Margin:0;width:600px\">" +
      "<table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" role=\"presentation\" style=\"border-collapse:collapse;border-spacing:0px\">" +
      "<tr>" +
      "<td align=\"center\" style=\"padding:0;Margin:0;padding-bottom:20px;padding-left:20px;padding-right:20px;font-size:0\" bgcolor=\"#f9f9f9\">" +
      "<table border=\"0\" width=\"100%\" height=\"100%\" cellpadding=\"0\" cellspacing=\"0\" role=\"presentation\" style=\"border-collapse:collapse;border-spacing:0px\">" +
      "<tr>" +
      "<td style=\"padding:0;Margin:0;border-bottom:1px solid #bcbcbc;background:unset;height:1px;width:100%;margin:0px\"></td>" +
      "</tr>" +
      "</table></td>" +
      "</tr>" +
      "</table></td>" +
      "</tr>" +
      "</table></td>" +
      "</tr>" +
      "<tr>" +
      "<td align=\"left\" bgcolor=\"#f9f9f9\" style=\"padding:0;Margin:0;padding-bottom:20px;padding-left:20px;padding-right:20px;background-color:#f9f9f9\">" +
      "<table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse:collapse;border-spacing:0px\">" +
      "<tr>" +
      "<td align=\"center\" valign=\"top\" style=\"padding:0;Margin:0;width:560px\">" +
      "<table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" role=\"presentation\" style=\"border-collapse:collapse;border-spacing:0px\">" +
      "<tr>" +
      "<td style=\"padding:0;Margin:0\">" +
      "<table width=\"100%\" role=\"presentation\" style=\"border-collapse:collapse;border-spacing:0px\">" +
      "<tr>" +
      "<td width=\"50%\" style=\"padding:0 5px 10px 0;Margin:0\" valign=\"top\"><p style=\"Margin:0;font-family:roboto,&#39;helvetica neue&#39;,helvetica,arial,sans-serif;line-height:21px;color:#00bbbb;font-size:14px;font-weight:600\">Property ID</p>" +
      "<div style=\"background-color:#fff;padding:10px 5px;border-radius:5px;margin-top:5px\">" +
      "<p style=\"Margin:0;font-family:roboto,&#39;helvetica neue&#39;,helvetica,arial,sans-serif;line-height:21px;color:#091e25;font-size:14px;font-weight:600\">{querystring:post_id}</p>" +
      "</div></td>" +
      "<td width=\"50%\" style=\"padding:0 0 10px 5px;Margin:0\" valign=\"top\"><p style=\"Margin:0;font-family:roboto,&#39;helvetica neue&#39;,helvetica,arial,sans-serif;line-height:21px;color:#00bbbb;font-size:14px;font-weight:600\">Reserve Price</p>" +
      "<div style=\"background-color:#fff;padding:10px 5px;border-radius:5px;margin-top:5px\">" +
      "<p style=\"Margin:0;font-family:roboto,&#39;helvetica neue&#39;,helvetica,arial,sans-serif;line-height:21px;color:#091e25;font-size:14px;font-weight:600\">₹ {querystring:rprice}</p>" +
      "</div></td>" +
      "</tr>" +
      "<tr></tr>" +
      "</table>" +
      "<table width=\"100%\" role=\"presentation\" style=\"border-collapse:collapse;border-spacing:0px\">" +
      "<tr>" +
      "<td width=\"100%\" style=\"padding:0 0 10px 0px;Margin:0\" valign=\"top\"><p style=\"Margin:0;font-family:roboto,&#39;helvetica neue&#39;,helvetica,arial,sans-serif;line-height:21px;color:#00bbbb;font-size:14px;font-weight:600\">Property Title</p>" +
      "<div style=\"background-color:#fff;padding:10px 5px;border-radius:5px;margin-top:5px\">" +
      "<a style=\"text-decoration:underline;color:#4682b4;font-size:14px;font-weight:600\" rel=\"noreferrer\"> {querystring:post_title} </a>" +
      "</div></td>" +
      "</tr>" +
      "</table>" +
      "<table width=\"100%\" role=\"presentation\" style=\"border-collapse:collapse;border-spacing:0px\">" +
      "<tr>" +
      "<td width=\"50%\" style=\"padding:0 5px 10px 0;Margin:0\" valign=\"top\"><p style=\"Margin:0;font-family:roboto,&#39;helvetica neue&#39;,helvetica,arial,sans-serif;line-height:21px;color:#00bbbb;font-size:14px;font-weight:600\">Property Type</p>" +
      "<div style=\"background-color:#fff;padding:10px 5px;border-radius:5px;margin-top:5px\">" +
      "<p style=\"Margin:0;font-family:roboto,&#39;helvetica neue&#39;,helvetica,arial,sans-serif;line-height:21px;color:#091e25;font-size:14px;font-weight:600\">{querystring:proptype}</p>" +
      "</div></td>" +
      "<td width=\"50%\" style=\"padding:0 0 10px 5px;Margin:0\" valign=\"top\"><p style=\"Margin:0;font-family:roboto,&#39;helvetica neue&#39;,helvetica,arial,sans-serif;line-height:21px;color:#00bbbb;font-size:14px;font-weight:600\">Possession</p>" +
      "<div style=\"background-color:#fff;padding:10px 5px;border-radius:5px;margin-top:5px\">" +
      "<p style=\"Margin:0;font-family:roboto,&#39;helvetica neue&#39;,helvetica,arial,sans-serif;line-height:21px;color:#091e25;font-size:14px;font-weight:600\">{querystring:possesion}</p>" +
      "</div></td>" +
      "</tr>" +
      "<tr></tr>" +
      "</table>" +
      "<table width=\"100%\" role=\"presentation\" style=\"border-collapse:collapse;border-spacing:0px\">" +
      "<tr>" +
      "<td width=\"50%\" style=\"padding:0 5px 10px 0;Margin:0\" valign=\"top\"><p style=\"Margin:0;font-family:roboto,&#39;helvetica neue&#39;,helvetica,arial,sans-serif;line-height:21px;color:#00bbbb;font-size:14px;font-weight:600\">Total Area</p>" +
      "<div style=\"background-color:#fff;padding:10px 5px;border-radius:5px;margin-top:5px\">" +
      "<p style=\"Margin:0;font-family:roboto,&#39;helvetica neue&#39;,helvetica,arial,sans-serif;line-height:21px;color:#091e25;font-size:14px;font-weight:600\">{querystring:area}</p>" +
      "</div></td>" +
      "<td width=\"50%\" style=\"padding:0 0 10px 5px;Margin:0\" valign=\"top\"><p style=\"Margin:0;font-family:roboto,&#39;helvetica neue&#39;,helvetica,arial,sans-serif;line-height:21px;color:#00bbbb;font-size:14px;font-weight:600\">Application End Date</p>" +
      "<div style=\"background-color:#fff;padding:10px 5px;border-radius:5px;margin-top:5px\">" +
      "<p style=\"Margin:0;font-family:roboto,&#39;helvetica neue&#39;,helvetica,arial,sans-serif;line-height:21px;color:#091e25;font-size:14px;font-weight:600\">{querystring:application_end_<wbr>date}</p>" +
      "</div></td>" +
      "</tr>" +
      "<tr></tr>" +
      "</table>" +
      "<table width=\"100%\" role=\"presentation\" style=\"border-collapse:collapse;border-spacing:0px\">" +
      "<tr>" +
      "<td width=\"50%\" style=\"padding:0 5px 10px 0;Margin:0\" valign=\"top\"><p style=\"Margin:0;font-family:roboto,&#39;helvetica neue&#39;,helvetica,arial,sans-serif;line-height:21px;color:#00bbbb;font-size:14px;font-weight:600\">EMD</p>" +
      "<div style=\"background-color:#fff;padding:10px 5px;border-radius:5px;margin-top:5px\">" +
      "<p style=\"Margin:0;font-family:roboto,&#39;helvetica neue&#39;,helvetica,arial,sans-serif;line-height:21px;color:#091e25;font-size:14px;font-weight:600\">{querystring:emd}</p>" +
      "</div></td>" +
      "<td width=\"50%\" style=\"padding:0 0 10px 5px;Margin:0\" valign=\"top\"><p style=\"Margin:0;font-family:roboto,&#39;helvetica neue&#39;,helvetica,arial,sans-serif;line-height:21px;color:#00bbbb;font-size:14px;font-weight:600\">Auction Date &amp; Time</p>" +
      "<div style=\"background-color:#fff;padding:10px 5px;border-radius:5px;margin-top:5px\">" +
      "<p style=\"Margin:0;font-family:roboto,&#39;helvetica neue&#39;,helvetica,arial,sans-serif;line-height:21px;color:#091e25;font-size:14px;font-weight:600\">{querystring:auction_d}</p>" +
      "</div></td>" +
      "</tr>" +
      "<tr></tr>" +
      "</table>" +
      "<table width=\"100%\" role=\"presentation\" style=\"border-collapse:collapse;border-spacing:0px\">" +
      "<tr>" +
      "<td width=\"100%\" style=\"padding:0 0 10px 0px;Margin:0\" valign=\"top\"><p style=\"Margin:0;font-family:roboto,&#39;helvetica neue&#39;,helvetica,arial,sans-serif;line-height:21px;color:#00bbbb;font-size:14px;font-weight:600\">Seller</p>" +
      "<div style=\"background-color:#fff;padding:10px 5px;border-radius:5px;margin-top:5px\">" +
      "<p style=\"Margin:0;font-family:roboto,&#39;helvetica neue&#39;,helvetica,arial,sans-serif;line-height:21px;color:#091e25;font-size:14px;font-weight:600\">{querystring:seller}</p>" +
      "</div></td>" +
      "</tr>" +
      "</table>" +
      "<table width=\"100%\" role=\"presentation\" style=\"border-collapse:collapse;border-spacing:0px\">" +
      "<tr>" +
      "<td width=\"100%\" style=\"padding:0 0 10px 0px;Margin:0\" valign=\"top\"><p style=\"Margin:0;font-family:roboto,&#39;helvetica neue&#39;,helvetica,arial,sans-serif;line-height:21px;color:#00bbbb;font-size:14px;font-weight:600\">Borrower Name</p>" +
      "<div style=\"background-color:#fff;padding:10px 5px;border-radius:5px;margin-top:5px\">" +
      "<p style=\"Margin:0;font-family:roboto,&#39;helvetica neue&#39;,helvetica,arial,sans-serif;line-height:21px;color:#091e25;font-size:14px;font-weight:600\">{querystring:borrow}</p>" +
      "</div></td>" +
      "</tr>" +
      "</table>" +
      "<div style=\"height:1px;background-color:#bcbcbc;width:100%;margin:15px 0 20px 0\"></div>" +
      "<table width=\"100%\" role=\"presentation\" style=\"border-collapse:collapse;border-spacing:0px\">" +
      "<tr>" +
      "<td width=\"100%\" style=\"padding:0 0 10px 0px;Margin:0\" valign=\"top\"><p style=\"Margin:0;font-family:roboto,&#39;helvetica neue&#39;,helvetica,arial,sans-serif;line-height:21px;color:#00bbbb;font-size:14px;font-weight:600\">Full Name/Company Name</p>" +
      "<div style=\"background-color:#fff;padding:10px 5px;border-radius:5px;margin-top:5px\">" +
      "<p style=\"Margin:0;font-family:roboto,&#39;helvetica neue&#39;,helvetica,arial,sans-serif;line-height:21px;color:#091e25;font-size:14px;font-weight:600\">{field:full_name_company_name}</p>" +
      "</div></td>" +
      "</tr>" +
      "</table>" +
      "<table width=\"100%\" role=\"presentation\" style=\"border-collapse:collapse;border-spacing:0px\">" +
      "<tr>" +
      "<td width=\"100%\" style=\"padding:0 0 10px 0px;Margin:0\" valign=\"top\"><p style=\"Margin:0;font-family:roboto,&#39;helvetica neue&#39;,helvetica,arial,sans-serif;line-height:21px;color:#00bbbb;font-size:14px;font-weight:600\">Address</p>" +
      "<div style=\"background-color:#fff;padding:10px 5px;border-radius:5px;margin-top:5px\">" +
      "<p style=\"Margin:0;font-family:roboto,&#39;helvetica neue&#39;,helvetica,arial,sans-serif;line-height:21px;color:#091e25;font-size:14px;font-weight:600\">{field:address_line}</p>" +
      "</div></td>" +
      "</tr>" +
      "</table>" +
      "<table width=\"100%\" role=\"presentation\" style=\"border-collapse:collapse;border-spacing:0px\">" +
      "<tr>" +
      "<td width=\"50%\" style=\"padding:0 5px 10px 0;Margin:0\" valign=\"top\"><p style=\"Margin:0;font-family:roboto,&#39;helvetica neue&#39;,helvetica,arial,sans-serif;line-height:21px;color:#00bbbb;font-size:14px;font-weight:600\">Phone Number</p>" +
      "<div style=\"background-color:#fff;padding:10px 5px;border-radius:5px;margin-top:5px\">" +
      "<p style=\"Margin:0;font-family:roboto,&#39;helvetica neue&#39;,helvetica,arial,sans-serif;line-height:21px;color:#091e25;font-size:14px;font-weight:600\">{field:phone_number}</p>" +
      "</div></td>" +
      "<td width=\"50%\" style=\"padding:0 0 10px 5px;Margin:0\" valign=\"top\"><p style=\"Margin:0;font-family:roboto,&#39;helvetica neue&#39;,helvetica,arial,sans-serif;line-height:21px;color:#00bbbb;font-size:14px;font-weight:600\">Email Address</p>" +
      "<div style=\"background-color:#fff;padding:10px 5px;border-radius:5px;margin-top:5px\">" +
      "<a style=\"text-decoration:underline;color:#4682b4;font-size:14px;font-weight:600\" href=\"#m__\" rel=\"noreferrer\">{wp:user_email} </a>" +
      "</div></td>" +
      "</tr>" +
      "<tr></tr>" +
      "</table>" +
      "<table width=\"100%\" role=\"presentation\" style=\"border-collapse:collapse;border-spacing:0px\">" +
      "<tr>" +
      "<td width=\"50%\" style=\"padding:0 5px 10px 0;Margin:0\" valign=\"top\"><p style=\"Margin:0;font-family:roboto,&#39;helvetica neue&#39;,helvetica,arial,sans-serif;line-height:21px;color:#00bbbb;font-size:14px;font-weight:600\">Employed</p>" +
      "<div style=\"background-color:#fff;padding:10px 5px;border-radius:5px;margin-top:5px\">" +
      "<p style=\"Margin:0;font-family:roboto,&#39;helvetica neue&#39;,helvetica,arial,sans-serif;line-height:21px;color:#091e25;font-size:14px;font-weight:600\">{field:employed}</p>" +
      "</div></td>" +
      "<td width=\"50%\" style=\"padding:0 0 10px 5px;Margin:0\" valign=\"top\"><p style=\"Margin:0;font-family:roboto,&#39;helvetica neue&#39;,helvetica,arial,sans-serif;line-height:21px;color:#00bbbb;font-size:14px;font-weight:600\">Loan Required</p>" +
      "<div style=\"background-color:#fff;padding:10px 5px;border-radius:5px;margin-top:5px\">" +
      "<p style=\"Margin:0;font-family:roboto,&#39;helvetica neue&#39;,helvetica,arial,sans-serif;line-height:21px;color:#091e25;font-size:14px;font-weight:600\">{field:loan_required}</p>" +
      "</div></td>" +
      "</tr>" +
      "<tr></tr>" +
      "</table>" +
      "<table width=\"100%\" role=\"presentation\" style=\"border-collapse:collapse;border-spacing:0px\">" +
      "<tr>" +
      "<td width=\"100%\" style=\"padding:0 0 10px 0px;Margin:0\" valign=\"top\"><p style=\"Margin:0;font-family:roboto,&#39;helvetica neue&#39;,helvetica,arial,sans-serif;line-height:21px;color:#00bbbb;font-size:14px;font-weight:600\">Message</p>" +
      "<div style=\"background-color:#fff;padding:10px 5px;border-radius:5px;margin-top:5px\">" +
      "<p style=\"Margin:0;font-family:roboto,&#39;helvetica neue&#39;,helvetica,arial,sans-serif;line-height:21px;color:#091e25;font-size:14px;font-weight:600\">{field:message_optional}</p>" +
      "</div></td>" +
      "</tr>" +
      "</table>" +
      "<table width=\"100%\" role=\"presentation\" style=\"border-collapse:collapse;border-spacing:0px\">" +
      "<tr>" +
      "<td width=\"100%\" style=\"padding:0 0 10px 0px;Margin:0\" valign=\"top\"><p style=\"Margin:0;font-family:roboto,&#39;helvetica neue&#39;,helvetica,arial,sans-serif;line-height:21px;color:#00bbbb;font-size:14px;font-weight:600\">Aadhar Card</p>" +
      "<div style=\"background-color:#fff;padding:10px 5px;border-radius:5px;margin-top:5px\">" +
      "<a style=\"text-decoration:underline;color:#4682b4;font-size:14px;font-weight:600\" href=\"#m__\" rel=\"noreferrer\"> {field:attach_aadhar_card} </a>" +
      "</div></td>" +
      "</tr>" +
      "</table>" +
      "<table width=\"100%\" role=\"presentation\" style=\"border-collapse:collapse;border-spacing:0px\">" +
      "<tr>" +
      "<td width=\"100%\" style=\"padding:0 0 10px 0px;Margin:0\" valign=\"top\"><p style=\"Margin:0;font-family:roboto,&#39;helvetica neue&#39;,helvetica,arial,sans-serif;line-height:21px;color:#00bbbb;font-size:14px;font-weight:600\">I hereby submit my Expression of Interest to purchase the above property. I provide consent to Hecta to share the above details with the respective Seller Institutions and required intermediaries to pursue this furtherssage</p>" +
      "<div style=\"background-color:#fff;padding:10px 5px;border-radius:5px;margin-top:5px\">" +
      "<p style=\"Margin:0;font-family:roboto,&#39;helvetica neue&#39;,helvetica,arial,sans-serif;line-height:21px;color:#091e25;font-size:14px;font-weight:600\">{field:check}</p>" +
      "</div></td>" +
      "</tr>" +
      "</table></td>" +
      "</tr>" +
      "</table></td>" +
      "</tr>" +
      "</table></td>" +
      "</tr>" +
      "<tr>" +
      "<td align=\"left\" style=\"padding:0;Margin:0\">" +
      "<table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse:collapse;border-spacing:0px\">" +
      "<tr>" +
      "<td align=\"center\" valign=\"top\" style=\"padding:0;Margin:0;width:600px\">" +
      "<table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" role=\"presentation\" style=\"border-collapse:collapse;border-spacing:0px\">" +
      "<tr class=\"m_es-mobile-hidden\">" +
      "<td style=\"padding:0;Margin:0\">" +
      "<div style=\"background-image:url(&#39;https://ci5.googleusercontent.com/proxy/VhEMCMUcPNgXgfIRUdT9hQjJJi_Bzpzyrz6ceDt2dztIgX5YwWIBs2jjxuHGzuIbprFoNL5-6bYgjUFqXXwICGpJA8uxLBI6HhaR=s0-d-e1-ft#https://hecta.co/wp-content/uploads/2022/01/Footer_1.png&#39;);background-size:cover;background-repeat:no-repeat;padding:20px 20px 25px 20px\">" +
      "<a href=\"https://www.google.com/url?q=https://hecta.co&amp;source=gmail-html&amp;ust=1674540153339000&amp;usg=AOvVaw1DrAkTcdtWf3kCZAxyAXXU\" style=\"text-decoration:none;color:#ffffff;font-size:14px\" target=\"_blank\" rel=\"noreferrer\"><img src=\"https://ci6.googleusercontent.com/proxy/8VmzCa2bmYx2PlhxjNuHbg84IAOkMqKRJfHD9zuBj72V-InXBK7BuOf-km4kD293aJO8WxbmUdQ2tUexYgeHVKPxsF9aWYvsmXveEFVoICxWcQ_elsSQ3g7bO-bzZvCfvNE=s0-d-e1-ft#https://hecta.co/wp-content/uploads/2022/01/cropped-logo-dark-400-160-1-1-1.png\" width=\"100px\" alt=\"Hecta\" style=\"display:block;border:0;outline:none;text-decoration:none\"></a>" +
      "<p style=\"Margin:0;font-family:roboto,&#39;helvetica neue&#39;,helvetica,arial,sans-serif;line-height:21px;color:#fff;font-size:14px;padding-top:5px\">India’s platform for buying properties<br>from Banks and Financial Institutions.</p>" +
      "<p style=\"Margin:0;font-family:roboto,&#39;helvetica neue&#39;,helvetica,arial,sans-serif;line-height:21px;color:#fff;font-size:14px;padding-top:20px;padding-bottom:20px\">WhatsApp :  +91 9899 360 360<br>Helpline :      +91 11408 45500</p>" +
      "<p style=\"Margin:0;font-family:roboto,&#39;helvetica neue&#39;,helvetica,arial,sans-serif;line-height:21px;color:#333333;font-size:14px\"><a style=\"text-decoration:none;color:#bcbcbc;font-size:14px\" rel=\"noreferrer\">Unsubscribe Here</a></p>" +
      "<div style=\"width:100%;height:2px;background-color:#bcbcbc;margin:20px 0 20px 0\"></div>" +
      "<div style=\"text-align:center;padding:0 0 0px 0\">" +
      "<table align=\"center\" role=\"presentation\" style=\"border-collapse:collapse;border-spacing:0px\">" +
      "<tr>" +
      "<td style=\"padding:0 15px;Margin:0\"><a href=\"https://www.google.com/url?q=https://www.facebook.com/hectaproptech/&amp;source=gmail-html&amp;ust=1674540153339000&amp;usg=AOvVaw0ZxDbSYPMqBHQlLuA0F5W-\" style=\"text-decoration:none;color:#ffffff;font-size:14px\" target=\"_blank\" rel=\"noreferrer\"><img src=\"https://ci5.googleusercontent.com/proxy/e_x1kcAjcVcG3FN0PBsa3iGB2h-D-7pjrxu22vwQGazIK6di1AxgL6H4gXBWKm6jjB8vqAZyW08aUaNNwxSWlWf1ac5D9Ki7uZ0MgxzJIWM=s0-d-e1-ft#https://hecta.co/wp-content/uploads/2022/01/Asset-20@4x-8.png\" width=\"40px\" alt style=\"display:block;border:0;outline:none;text-decoration:none\"></a></td>" +
      "<td style=\"padding:0 15px;Margin:0\"><a href=\"https://www.google.com/url?q=https://www.instagram.com/hectaproptech/&amp;source=gmail-html&amp;ust=1674540153339000&amp;usg=AOvVaw1fL-jYU6MUBXbuhFo_eDWn\" style=\"text-decoration:none;color:#ffffff;font-size:14px\" target=\"_blank\" rel=\"noreferrer\"><img src=\"https://ci6.googleusercontent.com/proxy/T3Pgs_V_ci5YMIyoyu56KuFspidiRg6UHdsNGr1kou6AzxsLqRuE5MtWCqL11odyG-O8HWIhlJ1JjiO3OjaTCKbdUUcsI_0rPFzN3J9f_TM=s0-d-e1-ft#https://hecta.co/wp-content/uploads/2022/01/Asset-18@4x-8.png\" width=\"40px\" alt style=\"display:block;border:0;outline:none;text-decoration:none\"></a></td>" +
      "<td style=\"padding:0 15px;Margin:0\"><a href=\"https://www.google.com/url?q=https://www.linkedin.com/company/hecta-proptech/&amp;source=gmail-html&amp;ust=1674540153339000&amp;usg=AOvVaw0weCmPF0tFhCStITnJwyvJ\" style=\"text-decoration:none;color:#ffffff;font-size:14px\" target=\"_blank\" rel=\"noreferrer\"><img src=\"https://ci4.googleusercontent.com/proxy/WBiwQHP9hMESQYuhhDqR-CI283CM6k6y51_AbjchkZkX1dlZO-HkAqz0zvAXx5BiVbNLVccwI5PEO_BoaDDVBsy6OUvRYWhBRoTTRVvyX2A=s0-d-e1-ft#https://hecta.co/wp-content/uploads/2022/01/Asset-17@4x-8.png\" width=\"40px\" alt style=\"display:block;border:0;outline:none;text-decoration:none\"></a></td>" +
      "<td style=\"padding:0 15px;Margin:0\"><a href=\"https://www.google.com/url?q=https://twitter.com/hectaproptech&amp;source=gmail-html&amp;ust=1674540153339000&amp;usg=AOvVaw2tsrLCvcSyXSl0qVNK3lit\" style=\"text-decoration:none;color:#ffffff;font-size:14px\" target=\"_blank\" rel=\"noreferrer\"><img src=\"https://ci5.googleusercontent.com/proxy/qH9bvIqoeTRkgR8KGBLpjnOPbq1gcX7NC_ldlMI8z1mPasAIlZQVl5-LkLSWoIzLIiQYWKnqtLpv1gDIGaUiLemLMOTrlTToO3CdHzbFDk0=s0-d-e1-ft#https://hecta.co/wp-content/uploads/2022/01/Asset-19@4x-8.png\" width=\"40px\" alt style=\"display:block;border:0;outline:none;text-decoration:none\"></a></td>" +
      "<td style=\"padding:0 15px;Margin:0\"><a href=\"https://www.google.com/url?q=https://www.youtube.com/channel/UCBO4g0-3cVEixRN7kbqJr3w&amp;source=gmail-html&amp;ust=1674540153339000&amp;usg=AOvVaw0nWHOGMZ9Z3qz9hKgzw49c\" style=\"text-decoration:none;color:#ffffff;font-size:14px\" target=\"_blank\" rel=\"noreferrer\"><img src=\"https://ci4.googleusercontent.com/proxy/4FKbW8RR2zFd_iHjRvOJxmdz-yiEiSq_oVVGWIUgMcWN8rXjwACI4NiFWvCsWMcBhSHUR9XCrtuDru-fFxUqIoYdS7_ka_5ZKDGoxYPfIp0=s0-d-e1-ft#https://hecta.co/wp-content/uploads/2022/01/Asset-16@4x-8.png\" width=\"40px\" alt style=\"display:block;border:0;outline:none;text-decoration:none\"></a></td>" +
      "</tr>" +
      "</table>" +
      "</div>" +
      "</div></td>" +
      "</tr>" +
      "</table></td>" +
      "</tr>" +
      "</table></td>" +
      "</tr>" +
      "<tr>" +
      "<td align=\"left\" style=\"padding:0;Margin:0\">" +
      "<table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse:collapse;border-spacing:0px\">" +
      "<tr>" +
      "<td align=\"center\" valign=\"top\" style=\"padding:0;Margin:0;width:600px\">" +
      "<table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" role=\"presentation\" style=\"border-collapse:collapse;border-spacing:0px\">" +
      "<tr class=\"m_es-desk-hidden\" style=\"display:none;float:left;overflow:hidden;width:0;max-height:0;line-height:0\">" +
      "<td style=\"padding:0;Margin:0\">" +
      "<div style=\"background-image:url(&#39;https://ci5.googleusercontent.com/proxy/VhEMCMUcPNgXgfIRUdT9hQjJJi_Bzpzyrz6ceDt2dztIgX5YwWIBs2jjxuHGzuIbprFoNL5-6bYgjUFqXXwICGpJA8uxLBI6HhaR=s0-d-e1-ft#https://hecta.co/wp-content/uploads/2022/01/Footer_1.png&#39;);background-size:contain;background-repeat:no-repeat;padding:20px;background-color:#091e25\">" +
      "<a href=\"https://www.google.com/url?q=https://hecta.co&amp;source=gmail-html&amp;ust=1674540153339000&amp;usg=AOvVaw1DrAkTcdtWf3kCZAxyAXXU\" style=\"text-decoration:none;color:#ffffff;font-size:14px\" target=\"_blank\" rel=\"noreferrer\"><img src=\"https://ci6.googleusercontent.com/proxy/8VmzCa2bmYx2PlhxjNuHbg84IAOkMqKRJfHD9zuBj72V-InXBK7BuOf-km4kD293aJO8WxbmUdQ2tUexYgeHVKPxsF9aWYvsmXveEFVoICxWcQ_elsSQ3g7bO-bzZvCfvNE=s0-d-e1-ft#https://hecta.co/wp-content/uploads/2022/01/cropped-logo-dark-400-160-1-1-1.png\" width=\"100px\" alt=\"Hecta\" style=\"display:block;border:0;outline:none;text-decoration:none\"></a>" +
      "<p style=\"Margin:0;font-family:roboto,&#39;helvetica neue&#39;,helvetica,arial,sans-serif;line-height:21px;color:#fff;font-size:14px;padding-top:5px\">India’s platform for buying properties<br>from Banks and Financial Institutions.</p>" +
      "<p style=\"Margin:0;font-family:roboto,&#39;helvetica neue&#39;,helvetica,arial,sans-serif;line-height:21px;color:#fff;font-size:14px;padding-top:20px;padding-bottom:20px\">WhatsApp :  +91 9899 360 360<br>Helpline :      +91 11408 45500</p>" +
      "<p style=\"Margin:0;font-family:roboto,&#39;helvetica neue&#39;,helvetica,arial,sans-serif;line-height:21px;color:#333333;font-size:14px\"><a style=\"text-decoration:none;color:#bcbcbc;font-size:14px\" rel=\"noreferrer\">Unsubscribe Here</a></p>" +
      "<div style=\"width:100%;height:2px;background-color:#bcbcbc;margin:20px 0 20px 0\"></div>" +
      "<div style=\"text-align:center;padding:0 0 0px 0\">" +
      "<table align=\"center\" role=\"presentation\" style=\"border-collapse:collapse;border-spacing:0px\">" +
      "<tr>" +
      "<td style=\"padding:0 10px;Margin:0\"><a href=\"https://www.google.com/url?q=https://www.facebook.com/Hecta-107746885139622/&amp;source=gmail-html&amp;ust=1674540153339000&amp;usg=AOvVaw3ciKhSAQNWr6UB0bVcq88d\" style=\"text-decoration:none;color:#ffffff;font-size:14px\" target=\"_blank\" rel=\"noreferrer\"><img src=\"https://ci5.googleusercontent.com/proxy/e_x1kcAjcVcG3FN0PBsa3iGB2h-D-7pjrxu22vwQGazIK6di1AxgL6H4gXBWKm6jjB8vqAZyW08aUaNNwxSWlWf1ac5D9Ki7uZ0MgxzJIWM=s0-d-e1-ft#https://hecta.co/wp-content/uploads/2022/01/Asset-20@4x-8.png\" width=\"30px\" alt style=\"display:block;border:0;outline:none;text-decoration:none\"></a></td>" +
      "<td style=\"padding:0 10px;Margin:0\"><a href=\"https://www.google.com/url?q=https://www.instagram.com/hectaindia/&amp;source=gmail-html&amp;ust=1674540153339000&amp;usg=AOvVaw3BA-LiJJKlcvrFF-2_S8mg\" style=\"text-decoration:none;color:#ffffff;font-size:14px\" target=\"_blank\" rel=\"noreferrer\"><img src=\"https://ci6.googleusercontent.com/proxy/T3Pgs_V_ci5YMIyoyu56KuFspidiRg6UHdsNGr1kou6AzxsLqRuE5MtWCqL11odyG-O8HWIhlJ1JjiO3OjaTCKbdUUcsI_0rPFzN3J9f_TM=s0-d-e1-ft#https://hecta.co/wp-content/uploads/2022/01/Asset-18@4x-8.png\" width=\"30px\" alt style=\"display:block;border:0;outline:none;text-decoration:none\"></a></td>" +
      "<td style=\"padding:0 10px;Margin:0\"><a href=\"https://www.google.com/url?q=https://www.linkedin.com/company/hectaproptech/&amp;source=gmail-html&amp;ust=1674540153339000&amp;usg=AOvVaw0aB-uvlrhVDzRflUk94Z4b\" style=\"text-decoration:none;color:#ffffff;font-size:14px\" target=\"_blank\" rel=\"noreferrer\"><img src=\"https://ci4.googleusercontent.com/proxy/WBiwQHP9hMESQYuhhDqR-CI283CM6k6y51_AbjchkZkX1dlZO-HkAqz0zvAXx5BiVbNLVccwI5PEO_BoaDDVBsy6OUvRYWhBRoTTRVvyX2A=s0-d-e1-ft#https://hecta.co/wp-content/uploads/2022/01/Asset-17@4x-8.png\" width=\"30px\" alt style=\"display:block;border:0;outline:none;text-decoration:none\"></a></td>" +
      "<td style=\"padding:0 10px;Margin:0\"><a href=\"https://www.google.com/url?q=https://twitter.com/hectaproptech&amp;source=gmail-html&amp;ust=1674540153339000&amp;usg=AOvVaw2tsrLCvcSyXSl0qVNK3lit\" style=\"text-decoration:none;color:#ffffff;font-size:14px\" target=\"_blank\" rel=\"noreferrer\"><img src=\"https://ci5.googleusercontent.com/proxy/qH9bvIqoeTRkgR8KGBLpjnOPbq1gcX7NC_ldlMI8z1mPasAIlZQVl5-LkLSWoIzLIiQYWKnqtLpv1gDIGaUiLemLMOTrlTToO3CdHzbFDk0=s0-d-e1-ft#https://hecta.co/wp-content/uploads/2022/01/Asset-19@4x-8.png\" width=\"30px\" alt style=\"display:block;border:0;outline:none;text-decoration:none\"></a></td>" +
      "<td style=\"padding:0 10px;Margin:0\"><a href=\"https://www.google.com/url?q=https://www.youtube.com/channel/UCBO4g0-3cVEixRN7kbqJr3w&amp;source=gmail-html&amp;ust=1674540153339000&amp;usg=AOvVaw0nWHOGMZ9Z3qz9hKgzw49c\" style=\"text-decoration:none;color:#ffffff;font-size:14px\" target=\"_blank\" rel=\"noreferrer\"><img src=\"https://ci4.googleusercontent.com/proxy/4FKbW8RR2zFd_iHjRvOJxmdz-yiEiSq_oVVGWIUgMcWN8rXjwACI4NiFWvCsWMcBhSHUR9XCrtuDru-fFxUqIoYdS7_ka_5ZKDGoxYPfIp0=s0-d-e1-ft#https://hecta.co/wp-content/uploads/2022/01/Asset-16@4x-8.png\" width=\"30px\" alt style=\"display:block;border:0;outline:none;text-decoration:none\"></a></td>" +
      "</tr>" +
      "</table>" +
      "</div>" +
      "</div></td>" +
      "</tr>" +
      "</table></td>" +
      "</tr>" +
      "</table></td>" +
      "</tr>" +
      "</table></td>" +
      "</tr>" +
      "</table></td>" +
      "</tr>" +
      "</table>" +
      "</div>" +
      "</div>" +
      "</body></html>";

  return x;
}

String streetviewhtml(String street) {
  String x =
      "<!DOCTYPE html><html lang=\"en\"><head><meta charset=\"UTF-8\"><meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\"><meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\"><title>Document</title></head><body>" +
          street +
          "</body></html>";
  return x;
}

List<String> removeCommon(
  List<String> selectedlist,
  List<String> propslists,
) {
  final commonElements =
      selectedlist.toSet().intersection(propslists.toSet()).toList();
  selectedlist.removeWhere((element) => commonElements.contains(element));

  return selectedlist;
}

bool filterONorOFF(
  bool aucdate,
  bool appdate,
  List<String> stateList,
  List<String> cityList,
  List<String> areaList,
  String maxBudget,
  String minBudget,
  List<String> typeList,
  List<String> banksList,
  bool privatetreaty,
) {
  if (aucdate ||
      appdate ||
      (stateList.length > 0 || cityList.length > 0 || areaList.length > 0) ||
      (maxBudget != "1000Cr+" && minBudget != "0") ||
      (typeList.length > 0) ||
      (banksList.length > 0) ||
      (privatetreaty)) return true;
  // if (appdate) return true;
  // if (stateList.length > 0 || cityList.length > 0 || areaList.length > 0)
  //   return true;
  // if (maxBudget != "1000Cr+" && minBudget != "0") return true;
  // if (typeList.length > 0) return true;
  // if (banksList.length > 0) return true;
  // if (privatetreaty) return true;
  return false;
}
