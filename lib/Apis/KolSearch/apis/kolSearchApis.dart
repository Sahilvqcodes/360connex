import 'dart:convert';
import 'package:connex/Apis/KolSearch/models/kol_search_Data.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../models/enagements_model.dart';

class KolSearchApi {
  static getKolSearchData(BuildContext context) async {
    String url =
        "https://evolutionmedcom--fullcopy.sandbox.my.salesforce.com/services/data/v42.0/query?q=SELECT Id, Primary_Title_Position__pc,  Profile_Image_Large__c,Name, Primary_Title_Affiliation__pc,Primary_Title_City_State__pc, Specialty__c,PersonEmail, Phone, Region__c, Name_of_RBM__pc, LastName, Degree__pc,Name_of_RBD__pc, Institutional_restriction_comments__pc, PersonMailingState, TLL_Territory__pc,AAL_Territory__c,Clinical_Trial_Experience_Other__pc,Clinical_Trial_Experience_Takeda__pc,Geolocation__c,Speaking_Experience__pc, Is_Shire_GATTEX_Speaker__c,Clinical_Interests__pc, Speaking_interests__pc,Content_Interests__pc, Consulting_Interests__pc,Research_Interests__pc, Other__c, Name_of_FME__pc,Name_of_KAM__pc, Name_of_MSL__pc,Current_Speaker_for_Biogen__c,RCD_region__pc, Name_of_RCD__pc,Bio_Download_URL__c,(Select Name, Leader_Rank_Pediatric__c, Clinical_Score__c, Congress_Score__c, Leadership_Score__c,Overall_Score__c, Other_Score__c,Publications_Score__c, Tier__c, Leader_Rank__c,Leader_Rank_Adult__c, Leader_Rank_AHP__c, Physician_Profile_Id__c, Congress_Portal_Related_Contact__c From Experts__r), (Select KOL__c, Brand_Master__r.Name,  Brand_Master__r.Color__c, Region__c, Clinical_Interests__c, Clinical_Trials_Experience__c, Known_Engagement_Interests__c, Speaking_Experience__c, Strategic_Imperatives_Commercial__c, Strategic_Imperatives_Medical__c, Advocacy_Scores__c, Classification__c from KOL_Brands__r)from Account where ID IN (Select Expert_Account__c from Expert__c where KOL_Profile_Portal__c = 'a343Z000003XdRsQAK') AND ID IN (Select KOL__c from KOL_Brand__c where Brand_Master__r.Name = 'Leukemia-Lymphoma' or Brand_Master__r.Name = 'MM Portfolio' or Brand_Master__r.Name = 'Prostate Franchise' )";
    var response = await http.get(
      Uri.parse(url),
      headers: {
        'Content-Type': 'application/json',
        // 'Accept': 'application/json',
        'Authorization':
            'Bearer 00D23000000FGah!AQUAQC94lOENWuhvAa8bkIf7JPzI6GJ8DHUM8WuzMbjlNxSJGoVgvq1v8LIvxQkQOzu1HzCZAUAD1rbwmYd4DejopSGH1dsf'
      },
    );
    // print("getKolSearchData ${response.body}");ß
    KolSearcDataModel jsonResponse =
        KolSearcDataModel.fromJson(jsonDecode(response.body));
    // jsonResponse["records"].forEach((element) {
    //   print("cbbk");
    //   var data = KolSearcDataModel.fromJson(element);
    // print("KolSerchDataRecords $jsonResponse");
    // baniyaan.add(data);
    // });

    // print("data ${jsonResponse["totalSize"]}");
    return jsonResponse;
  }

  static fetchKolEngagements(BuildContext context) async {
    String url =
        "https://evolutionmedcom--fullcopy.sandbox.my.salesforce.com/services/data/v42.0/query?q=SELECT KOLAccount__r.Id, count(id) Engagements FROM KOL_Engagement__c WHERE Master_Engagement__r.KOL_Profile_Portal__c = 'a343Z000003XdRsQAK' AND Attendee_Type__c != 'Employee' Group by KOLAccount__r.Id";
    var response = await http.get(
      Uri.parse(url),
      headers: {
        'Content-Type': 'application/json',
        // 'Accept': 'application/json',
        'Authorization':
            'Bearer 00D23000000FGah!AQUAQC94lOENWuhvAa8bkIf7JPzI6GJ8DHUM8WuzMbjlNxSJGoVgvq1v8LIvxQkQOzu1HzCZAUAD1rbwmYd4DejopSGH1dsf'
      },
    );
    // print("getKolSearchData ${response.body}");ß
    KolSearchEngagements jsonResponse =
        KolSearchEngagements.fromJson(jsonDecode(response.body));
    // jsonResponse["records"].forEach((element) {
    //   print("cbbk");
    //   var data = KolSearcDataModel.fromJson(element);
    print("fetchKolEngagements $jsonResponse");

    // print("data ${jsonResponse["totalSize"]}");
    return jsonResponse;
  }

  static FetchTotalEvents(BuildContext context) async {
    String url =
        "https://evolutionmedcom--fullcopy.sandbox.my.salesforce.com/services/data/v42.0/query?q=SELECT KOLAccount__r.Id, count(id) Events FROM KOL_Engagement__c WHERE Master_Engagement__r.KOL_Profile_Portal__c = 'a343Z000003XdRsQAK' AND Attendee_Type__c != 'Employee' AND Engagement_Type__c != '1:1 Meeting' AND Engagement_Type__c != '1:1 Engagement' Group by KOLAccount__r.Id";
    var response = await http.get(
      Uri.parse(url),
      headers: {
        'Content-Type': 'application/json',
        // 'Accept': 'application/json',
        'Authorization':
            'Bearer 00D23000000FGah!AQUAQC94lOENWuhvAa8bkIf7JPzI6GJ8DHUM8WuzMbjlNxSJGoVgvq1v8LIvxQkQOzu1HzCZAUAD1rbwmYd4DejopSGH1dsf'
      },
    );
    // print("getKolSearchData ${response.body}");ß
    KolSearchEngagements jsonResponse =
        KolSearchEngagements.fromJson(jsonDecode(response.body));
    // jsonResponse["records"].forEach((element) {
    //   print("cbbk");
    //   var data = KolSearcDataModel.fromJson(element);
    print("fetchKolEngagements $jsonResponse");
    // baniyaan.add(data);
    // });

    // print("data ${jsonResponse["totalSize"]}");
    return jsonResponse.records;
  }

  static FetchTotalMeetings(BuildContext context) async {
    String url =
        "https://evolutionmedcom--fullcopy.sandbox.my.salesforce.com/services/data/v42.0/query?q=SELECT KOLAccount__r.Id, count(id) Meetings FROM KOL_Engagement__c WHERE Master_Engagement__r.KOL_Profile_Portal__c = 'a343Z000003XdRsQAK' AND Attendee_Type__c != 'Employee' AND Master_Engagement__r.Name like '%1:1%' Group by KOLAccount__r.Id";
    var response = await http.get(
      Uri.parse(url),
      headers: {
        'Content-Type': 'application/json',
        // 'Accept': 'application/json',
        'Authorization':
            'Bearer 00D23000000FGah!AQUAQC94lOENWuhvAa8bkIf7JPzI6GJ8DHUM8WuzMbjlNxSJGoVgvq1v8LIvxQkQOzu1HzCZAUAD1rbwmYd4DejopSGH1dsf'
      },
    );
    // print("getKolSearchData ${response.body}");ß
    KolSearchEngagements jsonResponse =
        KolSearchEngagements.fromJson(jsonDecode(response.body));
    // jsonResponse["records"].forEach((element) {
    //   print("cbbk");
    //   var data = KolSearcDataModel.fromJson(element);
    print("fetchKolEngagements $jsonResponse");
    // baniyaan.add(data);
    // });

    // print("data ${jsonResponse["totalSize"]}");
    return jsonResponse;
  }
}
