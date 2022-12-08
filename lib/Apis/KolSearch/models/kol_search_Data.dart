class KolSearcDataModel {
  int? totalSize;
  bool? done;
  List<RecordsData>? records;

  KolSearcDataModel({this.totalSize, this.done, this.records});

  KolSearcDataModel.fromJson(Map<String, dynamic> json) {
    totalSize = json['totalSize'];
    done = json['done'];
    if (json['records'] != null) {
      records = <RecordsData>[];
      json['records'].forEach((v) {
        records!.add(new RecordsData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['totalSize'] = this.totalSize;
    data['done'] = this.done;
    if (this.records != null) {
      data['records'] = this.records!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class RecordsData {
  Attributes? attributes;
  String? id;
  String? primaryTitlePositionPc;
  String? profileImageLargeC;
  String? name;
  String? primaryTitleAffiliationPc;
  String? primaryTitleCityStatePc;
  String? specialtyC;
  String? personEmail;
  String? phone;
  String? regionC;
  String? nameOfRBMPc;
  String? lastName;
  String? degreePc;
  String? nameOfRBDPc;
  String? institutionalRestrictionCommentsPc;
  String? personMailingState;
  String? tLLTerritoryPc;
  String? aALTerritoryC;
  String? clinicalTrialExperienceOtherPc;
  String? clinicalTrialExperienceTakedaPc;
  GeolocationC? geolocationC;
  String? speakingExperiencePc;
  bool? isShireGATTEXSpeakerC;
  String? clinicalInterestsPc;
  String? speakingInterestsPc;
  String? contentInterestsPc;
  String? consultingInterestsPc;
  String? researchInterestsPc;
  String? otherC;
  String? nameOfFMEPc;
  String? nameOfKAMPc;
  String? nameOfMSLPc;
  String? currentSpeakerForBiogenC;
  String? rCDRegionPc;
  String? nameOfRCDPc;
  String? bioDownloadURLC;
  ExpertsR? expertsR;
  BrandsR? kOLBrandsR;

  RecordsData(
      {this.attributes,
      this.id,
      this.primaryTitlePositionPc,
      this.profileImageLargeC,
      this.name,
      this.primaryTitleAffiliationPc,
      this.primaryTitleCityStatePc,
      this.specialtyC,
      this.personEmail,
      this.phone,
      this.regionC,
      this.nameOfRBMPc,
      this.lastName,
      this.degreePc,
      this.nameOfRBDPc,
      this.institutionalRestrictionCommentsPc,
      this.personMailingState,
      this.tLLTerritoryPc,
      this.aALTerritoryC,
      this.clinicalTrialExperienceOtherPc,
      this.clinicalTrialExperienceTakedaPc,
      this.geolocationC,
      this.speakingExperiencePc,
      this.isShireGATTEXSpeakerC,
      this.clinicalInterestsPc,
      this.speakingInterestsPc,
      this.contentInterestsPc,
      this.consultingInterestsPc,
      this.researchInterestsPc,
      this.otherC,
      this.nameOfFMEPc,
      this.nameOfKAMPc,
      this.nameOfMSLPc,
      this.currentSpeakerForBiogenC,
      this.rCDRegionPc,
      this.nameOfRCDPc,
      this.bioDownloadURLC,
      this.expertsR,
      this.kOLBrandsR});

  RecordsData.fromJson(Map<String, dynamic> json) {
    attributes = json['attributes'] != null
        ? new Attributes.fromJson(json['attributes'])
        : null;
    id = json['Id'];
    primaryTitlePositionPc = json['Primary_Title_Position__pc'];
    profileImageLargeC = json['Profile_Image_Large__c'];
    name = json['Name'];
    primaryTitleAffiliationPc = json['Primary_Title_Affiliation__pc'];
    primaryTitleCityStatePc = json['Primary_Title_City_State__pc'];
    specialtyC = json['Specialty__c'];
    personEmail = json['PersonEmail'];
    phone = json['Phone'];
    regionC = json['Region__c'];
    nameOfRBMPc = json['Name_of_RBM__pc'];
    lastName = json['LastName'];
    degreePc = json['Degree__pc'];
    nameOfRBDPc = json['Name_of_RBD__pc'];
    institutionalRestrictionCommentsPc =
        json['Institutional_restriction_comments__pc'];
    personMailingState = json['PersonMailingState'];
    tLLTerritoryPc = json['TLL_Territory__pc'];
    aALTerritoryC = json['AAL_Territory__c'];
    clinicalTrialExperienceOtherPc =
        json['Clinical_Trial_Experience_Other__pc'];
    clinicalTrialExperienceTakedaPc =
        json['Clinical_Trial_Experience_Takeda__pc'];
    geolocationC = json['Geolocation__c'] != null
        ? new GeolocationC.fromJson(json['Geolocation__c'])
        : null;
    speakingExperiencePc = json['Speaking_Experience__pc'];
    isShireGATTEXSpeakerC = json['Is_Shire_GATTEX_Speaker__c'];
    clinicalInterestsPc = json['Clinical_Interests__pc'];
    speakingInterestsPc = json['Speaking_interests__pc'];
    contentInterestsPc = json['Content_Interests__pc'];
    consultingInterestsPc = json['Consulting_Interests__pc'];
    researchInterestsPc = json['Research_Interests__pc'];
    otherC = json['Other__c'];
    nameOfFMEPc = json['Name_of_FME__pc'];
    nameOfKAMPc = json['Name_of_KAM__pc'];
    nameOfMSLPc = json['Name_of_MSL__pc'];
    currentSpeakerForBiogenC = json['Current_Speaker_for_Biogen__c'];
    rCDRegionPc = json['RCD_region__pc'];
    nameOfRCDPc = json['Name_of_RCD__pc'];
    bioDownloadURLC = json['Bio_Download_URL__c'];
    expertsR = json['Experts__r'] != null
        ? new ExpertsR.fromJson(json['Experts__r'])
        : null;
    kOLBrandsR = json['KOL_Brands__r'] != null
        ? new BrandsR.fromJson(json['KOL_Brands__r'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.attributes != null) {
      data['attributes'] = this.attributes!.toJson();
    }
    data['Id'] = this.id;
    data['Primary_Title_Position__pc'] = this.primaryTitlePositionPc;
    data['Profile_Image_Large__c'] = this.profileImageLargeC;
    data['Name'] = this.name;
    data['Primary_Title_Affiliation__pc'] = this.primaryTitleAffiliationPc;
    data['Primary_Title_City_State__pc'] = this.primaryTitleCityStatePc;
    data['Specialty__c'] = this.specialtyC;
    data['PersonEmail'] = this.personEmail;
    data['Phone'] = this.phone;
    data['Region__c'] = this.regionC;
    data['Name_of_RBM__pc'] = this.nameOfRBMPc;
    data['LastName'] = this.lastName;
    data['Degree__pc'] = this.degreePc;
    data['Name_of_RBD__pc'] = this.nameOfRBDPc;
    data['Institutional_restriction_comments__pc'] =
        this.institutionalRestrictionCommentsPc;
    data['PersonMailingState'] = this.personMailingState;
    data['TLL_Territory__pc'] = this.tLLTerritoryPc;
    data['AAL_Territory__c'] = this.aALTerritoryC;
    data['Clinical_Trial_Experience_Other__pc'] =
        this.clinicalTrialExperienceOtherPc;
    data['Clinical_Trial_Experience_Takeda__pc'] =
        this.clinicalTrialExperienceTakedaPc;
    if (this.geolocationC != null) {
      data['Geolocation__c'] = this.geolocationC!.toJson();
    }
    data['Speaking_Experience__pc'] = this.speakingExperiencePc;
    data['Is_Shire_GATTEX_Speaker__c'] = this.isShireGATTEXSpeakerC;
    data['Clinical_Interests__pc'] = this.clinicalInterestsPc;
    data['Speaking_interests__pc'] = this.speakingInterestsPc;
    data['Content_Interests__pc'] = this.contentInterestsPc;
    data['Consulting_Interests__pc'] = this.consultingInterestsPc;
    data['Research_Interests__pc'] = this.researchInterestsPc;
    data['Other__c'] = this.otherC;
    data['Name_of_FME__pc'] = this.nameOfFMEPc;
    data['Name_of_KAM__pc'] = this.nameOfKAMPc;
    data['Name_of_MSL__pc'] = this.nameOfMSLPc;
    data['Current_Speaker_for_Biogen__c'] = this.currentSpeakerForBiogenC;
    data['RCD_region__pc'] = this.rCDRegionPc;
    data['Name_of_RCD__pc'] = this.nameOfRCDPc;
    data['Bio_Download_URL__c'] = this.bioDownloadURLC;
    if (this.expertsR != null) {
      data['Experts__r'] = this.expertsR!.toJson();
    }
    if (this.kOLBrandsR != null) {
      data['KOL_Brands__r'] = this.kOLBrandsR!.toJson();
    }
    return data;
  }
}

class Attributes {
  String? type;
  String? url;

  Attributes({this.type, this.url});

  Attributes.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    data['url'] = this.url;
    return data;
  }
}

class GeolocationC {
  double? latitude;
  double? longitude;

  GeolocationC({this.latitude, this.longitude});

  GeolocationC.fromJson(Map<String, dynamic> json) {
    latitude = json['latitude'];
    longitude = json['longitude'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['latitude'] = this.latitude;
    data['longitude'] = this.longitude;
    return data;
  }
}

class BrandsR {
  int? totalSize;
  bool? done;
  List<BrandsRecords>? brandsRecords;

  BrandsR({this.totalSize, this.done, this.brandsRecords});

  BrandsR.fromJson(Map<String, dynamic> json) {
    totalSize = json['totalSize'];
    done = json['done'];
    if (json['records'] != null) {
      brandsRecords = <BrandsRecords>[];
      json['records'].forEach((v) {
        brandsRecords!.add(new BrandsRecords.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['totalSize'] = this.totalSize;
    data['done'] = this.done;
    if (this.brandsRecords != null) {
      data['records'] = this.brandsRecords!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ExpertsR {
  int? totalSize;
  bool? done;
  List<ExpertsRecords>? records;

  ExpertsR({this.totalSize, this.done, this.records});

  ExpertsR.fromJson(Map<String, dynamic> json) {
    totalSize = json['totalSize'];
    done = json['done'];
    if (json['records'] != null) {
      records = <ExpertsRecords>[];
      json['records'].forEach((v) {
        records!.add(new ExpertsRecords.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['totalSize'] = this.totalSize;
    data['done'] = this.done;
    if (this.records != null) {
      data['records'] = this.records!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ExpertsRecords {
  Attributes? attributes;
  String? name;
  String? leaderRankPediatricC;
  String? clinicalScoreC;
  String? congressScoreC;
  String? leadershipScoreC;
  String? overallScoreC;
  String? otherScoreC;
  String? publicationsScoreC;
  String? tierC;
  String? leaderRankC;
  String? leaderRankAdultC;
  String? leaderRankAHPC;
  String? physicianProfileIdC;
  String? congressPortalRelatedContactC;

  ExpertsRecords(
      {this.attributes,
      this.name,
      this.leaderRankPediatricC,
      this.clinicalScoreC,
      this.congressScoreC,
      this.leadershipScoreC,
      this.overallScoreC,
      this.otherScoreC,
      this.publicationsScoreC,
      this.tierC,
      this.leaderRankC,
      this.leaderRankAdultC,
      this.leaderRankAHPC,
      this.physicianProfileIdC,
      this.congressPortalRelatedContactC});

  ExpertsRecords.fromJson(Map<String, dynamic> json) {
    attributes = json['attributes'] != null
        ? new Attributes.fromJson(json['attributes'])
        : null;
    name = json['Name'];
    leaderRankPediatricC = json['Leader_Rank_Pediatric__c'];
    clinicalScoreC = json['Clinical_Score__c'];
    congressScoreC = json['Congress_Score__c'];
    leadershipScoreC = json['Leadership_Score__c'];
    overallScoreC = json['Overall_Score__c'];
    otherScoreC = json['Other_Score__c'];
    publicationsScoreC = json['Publications_Score__c'];
    tierC = json['Tier__c'];
    leaderRankC = json['Leader_Rank__c'];
    leaderRankAdultC = json['Leader_Rank_Adult__c'];
    leaderRankAHPC = json['Leader_Rank_AHP__c'];
    physicianProfileIdC = json['Physician_Profile_Id__c'];
    congressPortalRelatedContactC = json['Congress_Portal_Related_Contact__c'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.attributes != null) {
      data['attributes'] = this.attributes!.toJson();
    }
    data['Name'] = this.name;
    data['Leader_Rank_Pediatric__c'] = this.leaderRankPediatricC;
    data['Clinical_Score__c'] = this.clinicalScoreC;
    data['Congress_Score__c'] = this.congressScoreC;
    data['Leadership_Score__c'] = this.leadershipScoreC;
    data['Overall_Score__c'] = this.overallScoreC;
    data['Other_Score__c'] = this.otherScoreC;
    data['Publications_Score__c'] = this.publicationsScoreC;
    data['Tier__c'] = this.tierC;
    data['Leader_Rank__c'] = this.leaderRankC;
    data['Leader_Rank_Adult__c'] = this.leaderRankAdultC;
    data['Leader_Rank_AHP__c'] = this.leaderRankAHPC;
    data['Physician_Profile_Id__c'] = this.physicianProfileIdC;
    data['Congress_Portal_Related_Contact__c'] =
        this.congressPortalRelatedContactC;
    return data;
  }
}

class BrandsRecords {
  Attributes? attributes;
  String? kOLC;
  BrandMasterR? brandMasterR;
  String? regionC;
  String? clinicalInterestsC;
  String? clinicalTrialsExperienceC;
  String? knownEngagementInterestsC;
  String? speakingExperienceC;
  String? strategicImperativesCommercialC;
  String? strategicImperativesMedicalC;
  String? advocacyScoresC;
  String? classificationC;

  BrandsRecords(
      {this.attributes,
      this.kOLC,
      this.brandMasterR,
      this.regionC,
      this.clinicalInterestsC,
      this.clinicalTrialsExperienceC,
      this.knownEngagementInterestsC,
      this.speakingExperienceC,
      this.strategicImperativesCommercialC,
      this.strategicImperativesMedicalC,
      this.advocacyScoresC,
      this.classificationC});

  BrandsRecords.fromJson(Map<String, dynamic> json) {
    attributes = json['attributes'] != null
        ? new Attributes.fromJson(json['attributes'])
        : null;
    kOLC = json['KOL__c'];
    brandMasterR = json['Brand_Master__r'] != null
        ? new BrandMasterR.fromJson(json['Brand_Master__r'])
        : null;
    regionC = json['Region__c'];
    clinicalInterestsC = json['Clinical_Interests__c'];
    clinicalTrialsExperienceC = json['Clinical_Trials_Experience__c'];
    knownEngagementInterestsC = json['Known_Engagement_Interests__c'];
    speakingExperienceC = json['Speaking_Experience__c'];
    strategicImperativesCommercialC =
        json['Strategic_Imperatives_Commercial__c'];
    strategicImperativesMedicalC = json['Strategic_Imperatives_Medical__c'];
    advocacyScoresC = json['Advocacy_Scores__c'];
    classificationC = json['Classification__c'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.attributes != null) {
      data['attributes'] = this.attributes!.toJson();
    }
    data['KOL__c'] = this.kOLC;
    if (this.brandMasterR != null) {
      data['Brand_Master__r'] = this.brandMasterR!.toJson();
    }
    data['Region__c'] = this.regionC;
    data['Clinical_Interests__c'] = this.clinicalInterestsC;
    data['Clinical_Trials_Experience__c'] = this.clinicalTrialsExperienceC;
    data['Known_Engagement_Interests__c'] = this.knownEngagementInterestsC;
    data['Speaking_Experience__c'] = this.speakingExperienceC;
    data['Strategic_Imperatives_Commercial__c'] =
        this.strategicImperativesCommercialC;
    data['Strategic_Imperatives_Medical__c'] =
        this.strategicImperativesMedicalC;
    data['Advocacy_Scores__c'] = this.advocacyScoresC;
    data['Classification__c'] = this.classificationC;
    return data;
  }
}

class BrandMasterR {
  Attributes? attributes;
  String? name;
  String? colorC;

  BrandMasterR({this.attributes, this.name, this.colorC});

  BrandMasterR.fromJson(Map<String, dynamic> json) {
    attributes = json['attributes'] != null
        ? new Attributes.fromJson(json['attributes'])
        : null;
    name = json['Name'];
    colorC = json['Color__c'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.attributes != null) {
      data['attributes'] = this.attributes!.toJson();
    }
    data['Name'] = this.name;
    data['Color__c'] = this.colorC;
    return data;
  }
}
