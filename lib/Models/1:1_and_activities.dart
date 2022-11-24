class MeetingsActivites {
  int? totalSize;
  bool? done;
  List<MeetingsActivitesRecords>? records;

  MeetingsActivites({this.totalSize, this.done, this.records});

  MeetingsActivites.fromJson(Map<String, dynamic> json) {
    totalSize = json['totalSize'];
    done = json['done'];
    if (json['records'] != null) {
      records = <MeetingsActivitesRecords>[];
      json['records'].forEach((v) {
        records!.add(new MeetingsActivitesRecords.fromJson(v));
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

class MeetingsActivitesRecords {
  MeetingsActivitesAttributes? attributes;
  MasterEngagementR? masterEngagementR;
  Null? attendeeTypeC;
  String? id;
  KOLAccountR? kOLAccountR;

  MeetingsActivitesRecords(
      {this.attributes,
      this.masterEngagementR,
      this.attendeeTypeC,
      this.id,
      this.kOLAccountR});

  MeetingsActivitesRecords.fromJson(Map<String, dynamic> json) {
    attributes = json['attributes'] != null
        ? new MeetingsActivitesAttributes.fromJson(json['attributes'])
        : null;
    masterEngagementR = json['Master_Engagement__r'] != null
        ? new MasterEngagementR.fromJson(json['Master_Engagement__r'])
        : null;
    attendeeTypeC = json['Attendee_Type__c'];
    id = json['Id'];
    kOLAccountR = json['KOLAccount__r'] != null
        ? new KOLAccountR.fromJson(json['KOLAccount__r'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.attributes != null) {
      data['attributes'] = this.attributes!.toJson();
    }
    if (this.masterEngagementR != null) {
      data['Master_Engagement__r'] = this.masterEngagementR!.toJson();
    }
    data['Attendee_Type__c'] = this.attendeeTypeC;
    data['Id'] = this.id;
    if (this.kOLAccountR != null) {
      data['KOLAccount__r'] = this.kOLAccountR!.toJson();
    }
    return data;
  }
}

class MeetingsActivitesAttributes {
  String? type;
  String? url;

  MeetingsActivitesAttributes({this.type, this.url});

  MeetingsActivitesAttributes.fromJson(Map<String, dynamic> json) {
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

class MasterEngagementR {
  MeetingsActivitesAttributes? attributes;
  BrandMasterR? brandMasterR;
  String? engagementDateC;
  String? name;
  String? startDateTimeC;
  String? id;

  MasterEngagementR(
      {this.attributes,
      this.brandMasterR,
      this.engagementDateC,
      this.name,
      this.startDateTimeC,
      this.id});

  MasterEngagementR.fromJson(Map<String, dynamic> json) {
    attributes = json['attributes'] != null
        ? new MeetingsActivitesAttributes.fromJson(json['attributes'])
        : null;
    brandMasterR = json['Brand_Master__r'] != null
        ? new BrandMasterR.fromJson(json['Brand_Master__r'])
        : null;
    engagementDateC = json['Engagement_Date__c'];
    name = json['Name'];
    startDateTimeC = json['Start_Date_Time__c'];
    id = json['Id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.attributes != null) {
      data['attributes'] = this.attributes!.toJson();
    }
    if (this.brandMasterR != null) {
      data['Brand_Master__r'] = this.brandMasterR!.toJson();
    }
    data['Engagement_Date__c'] = this.engagementDateC;
    data['Name'] = this.name;
    data['Start_Date_Time__c'] = this.startDateTimeC;
    data['Id'] = this.id;
    return data;
  }
}

class BrandMasterR {
  MeetingsActivitesAttributes? attributes;
  String? name;
  String? colorC;

  BrandMasterR({this.attributes, this.name, this.colorC});

  BrandMasterR.fromJson(Map<String, dynamic> json) {
    attributes = json['attributes'] != null
        ? new MeetingsActivitesAttributes.fromJson(json['attributes'])
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

class KOLAccountR {
  MeetingsActivitesAttributes? attributes;
  String? name;

  KOLAccountR({this.attributes, this.name});

  KOLAccountR.fromJson(Map<String, dynamic> json) {
    attributes = json['attributes'] != null
        ? new MeetingsActivitesAttributes.fromJson(json['attributes'])
        : null;
    name = json['Name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.attributes != null) {
      data['attributes'] = this.attributes!.toJson();
    }
    data['Name'] = this.name;
    return data;
  }
}
