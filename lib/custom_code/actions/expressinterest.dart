// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '../../flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future expressinterest(
    String? name,
    String? phone,
    String? address,
    String? email,
    DateTime? time,
    String? propTitle,
    String? employed,
    String? loanReq,
    String? message,
    String? aadharCard,
    String? propID,
    String? rprice,
    String? borrowersName,
    String? seller,
    String? auctiondate,
    String? emd,
    String? applicationdate,
    String? totalarea,
    String? possession,
    String? propType) async {
  // Add your function code here!
  //  var collectionRef = FirebaseFirestore.instance.collection('ff_push_notifications');
  List<String> ids = ['care@hecta.co'];
  String? timeStr = DateFormat().format(time!);
  // String html5 =
  //     "<!DOCTYPE html><html lang=\"en\"><head><meta charset=\"UTF-8\"><meta http-equiv=\"X-UA-Compatible\"content=\"IE=edge\"><meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\"><title>Mail</title></head><body><p>Name : " +
  //         name! +
  //         "</p><p>Phone Number : " +
  //         phone! +
  //         "</p><p>Address: " +
  //         address! +
  //         "</p><p>Email ID: " +
  //         email! +
  //         "</p><p>Employed : " +
  //         employed! +
  //         "</p><p>Loan Required : " +
  //         loanReq! +
  //         "</p><p>Message : " +
  //         message! +
  //         "</p><p>Aadhar Card : " +
  //         aadharCard! +
  //         "</p><p>Property ID : " +
  //         propID! +
  //         "</p><p>Reserve Price : " +
  //         rprice! +
  //         "</p><p>Title : " +
  //         email! +
  //         "</p><p>Time of Contact : " +
  //         timeStr! +
  //         "</p></body></html>";
  String html5 = "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\"><html><head><META http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\"><style>#m_outlook a{padding:0}.m_es-button{text-decoration:none!important}.m_es-desk-hidden{display:none;float:left;overflow:hidden;width:0;max-height:0;line-height:0}@media only screen and (max-width:600px){p,ul li,ol li,a{line-height:150%!important}h1,h2,h3,h1 a,h2 a,h3 a{line-height:120%}h1{font-size:30px!important;text-align:left}h2{font-size:24px!important;text-align:left}h3{font-size:20px!important;text-align:left}.m_es-header-body h1 a,.m_es-content-body h1 a,.m_es-footer-body h1 a{font-size:30px!important;text-align:left}.m_es-header-body h2 a,.m_es-content-body h2 a,.m_es-footer-body h2 a{font-size:24px!important;text-align:left}.m_es-header-body h3 a,.m_es-content-body h3 a,.m_es-footer-body h3 a{font-size:20px!important;text-align:left}.m_es-menu td a{font-size:14px!important}.m_es-header-body p,.m_es-header-body ul li,.m_es-header-body ol li,.m_es-header-body a{font-size:14px!important}.m_es-content-body p,.m_es-content-body ul li,.m_es-content-body ol li,.m_es-content-body a{font-size:12px!important}.m_es-footer-body p,.m_es-footer-body ul li,.m_es-footer-body ol li,.m_es-footer-body a{font-size:14px!important}.m_es-infoblock p,.m_es-infoblock ul li,.m_es-infoblock ol li,.m_es-infoblock a{font-size:12px!important}.m_es-m-txt-c,.m_es-m-txt-c h1,.m_es-m-txt-c h2,.m_es-m-txt-c h3{text-align:center!important}.m_es-m-txt-r,.m_es-m-txt-r h1,.m_es-m-txt-r h2,.m_es-m-txt-r h3{text-align:right!important}.m_es-m-txt-l,.m_es-m-txt-l h1,.m_es-m-txt-l h2,.m_es-m-txt-l h3{text-align:left!important}.m_es-m-txt-r img,.m_es-m-txt-c img,.m_es-m-txt-l img{display:inline!important}.m_es-button-border{display:inline-block!important}a.m_es-button,button.m_es-button{font-size:18px!important;display:inline-block!important}.m_es-adaptive table,.m_es-left,.m_es-right{width:100%!important}.m_es-content table,.m_es-header table,.m_es-footer table,.m_es-content,.m_es-footer,.m_es-header{width:100%!important;max-width:600px!important}.m_es-adapt-td{display:block!important;width:100%!important}.m_adapt-img{width:100%!important;height:auto!important}.m_es-m-p0{padding:0px!important}.m_es-m-p0r{padding-right:0px!important}.m_es-m-p0l{padding-left:0px!important}.m_es-m-p0t{padding-top:0px!important}.m_es-m-p0b{padding-bottom:0!important}.m_es-m-p20b{padding-bottom:20px!important}.m_es-mobile-hidden,.m_es-hidden{display:none!important}tr.m_es-desk-hidden,td.m_es-desk-hidden,table.m_es-desk-hidden{width:auto!important;overflow:visible!important;float:none!important;max-height:inherit!important;line-height:inherit!important}tr.m_es-desk-hidden{display:table-row!important}table.m_es-desk-hidden{display:table!important}td.m_es-desk-menu-hidden{display:table-cell!important}.m_es-menu td{width:1%!important}table.m_es-table-not-adapt,.m_esd-block-html table{width:auto!important}table.m_es-social{display:inline-block!important}table.m_es-social td{display:inline-block!important}.m_es-desk-hidden{display:table-row!important;width:auto!important;overflow:visible!important;max-height:inherit!important}}</style></head><body><u></u>" +
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
  html5 = html5.replaceAll("{field:check}", "True");
  html5 = html5.replaceAll("{field:attach_aadhar_card}", aadharCard!);
  html5 = html5.replaceAll("{field:message_optional}", message!);
  html5 = html5.replaceAll("Abhishek Gupta", name!);
  html5 = html5.replaceAll("{field:loan_required}", loanReq!);
  html5 = html5.replaceAll("{field:employed}", employed!);
  html5 = html5.replaceAll("{wp:user_email}", email!);
  html5 = html5.replaceAll("{field:phone_number}", phone!);
  html5 = html5.replaceAll("{field:address_line}", address!);
  html5 = html5.replaceAll("{field:full_name_company_name}", name!);
  html5 = html5.replaceAll("{querystring:borrow}", borrowersName!);
  html5 = html5.replaceAll("{querystring:seller}", seller!);
  html5 = html5.replaceAll("{querystring:auction_d}", auctiondate!);
  html5 = html5.replaceAll("{querystring:emd}", emd!);
  html5 =
      html5.replaceAll("{querystring:application_end_date}", applicationdate!);
  html5 = html5.replaceAll("{querystring:area}", totalarea!);
  html5 = html5.replaceAll("{querystring:possesion}", possession!);
  html5 = html5.replaceAll("{querystring:proptype}", propType!);
  html5 = html5.replaceAll("{querystring:post_title}", propTitle!);
  html5 = html5.replaceAll("{querystring:rprice}", rprice!);
  html5 = html5.replaceAll("{querystring:post_id}", propID!);

  String sub =
      "A User has expressed interest for Property " + propTitle! + "(From App)";
  var x = {"subject": sub, "text": "", "html": html5};

  FirebaseFirestore.instance.collection("mail").add({"to": ids, "message": x});
}
