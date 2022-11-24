class BrandsActivity {
  int? totalSize;
  bool? done;
  List<ActivityRecords>? records;

  BrandsActivity({this.totalSize, this.done, this.records});

  BrandsActivity.fromJson(Map<String, dynamic> json) {
    totalSize = json['totalSize'];
    done = json['done'];
    if (json['records'] != null) {
      records = <ActivityRecords>[];
      json['records'].forEach((v) {
        records!.add(new ActivityRecords.fromJson(v));
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

class ActivityRecords {
  Attributes? attributes;
  String? id;
  String? name;
  kOLEngagementR? kOLEngagementsR;
  kOLBrandR? kOLBrandsR;

  ActivityRecords(
      {this.attributes,
      this.id,
      this.name,
      this.kOLEngagementsR,
      this.kOLBrandsR});

  ActivityRecords.fromJson(Map<String, dynamic> json) {
    attributes = json['attributes'] != null
        ? new Attributes.fromJson(json['attributes'])
        : null;
    id = json['Id'];
    name = json['Name'];
    kOLEngagementsR = json['KOL_Engagements__r'] != null
        ? new kOLEngagementR.fromJson(json['KOL_Engagements__r'])
        : null;
    kOLBrandsR = json['KOL_Brands__r'] != null
        ? new kOLBrandR.fromJson(json['KOL_Brands__r'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.attributes != null) {
      data['attributes'] = this.attributes!.toJson();
    }
    data['Id'] = this.id;
    data['Name'] = this.name;
    if (this.kOLEngagementsR != null) {
      data['KOL_Engagements__r'] = this.kOLEngagementsR!.toJson();
    }
    if (this.kOLBrandsR != null) {
      data['KOL_Brands__r'] = this.kOLBrandsR!.toJson();
    }
    return data;
  }
}

class kOLBrandR {
  int? totalSize;
  bool? done;
  List<kOLBrandRecords>? records;

  kOLBrandR({this.totalSize, this.done, this.records});

  kOLBrandR.fromJson(Map<String, dynamic> json) {
    totalSize = json['totalSize'];
    done = json['done'];
    if (json['records'] != null) {
      records = <kOLBrandRecords>[];
      json['records'].forEach((v) {
        records!.add(new kOLBrandRecords.fromJson(v));
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

class kOLEngagementR {
  int? totalSize;
  bool? done;
  List<kOLEngagementRecords>? records;

  kOLEngagementR({this.totalSize, this.done, this.records});

  kOLEngagementR.fromJson(Map<String, dynamic> json) {
    totalSize = json['totalSize'];
    done = json['done'];
    if (json['records'] != null) {
      records = <kOLEngagementRecords>[];
      json['records'].forEach((v) {
        records!.add(new kOLEngagementRecords.fromJson(v));
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

class kOLEngagementRecords {
  Attributes? attributes;
  String? id;

  kOLEngagementRecords({this.attributes, this.id});

  kOLEngagementRecords.fromJson(Map<String, dynamic> json) {
    attributes = json['attributes'] != null
        ? new Attributes.fromJson(json['attributes'])
        : null;
    id = json['Id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.attributes != null) {
      data['attributes'] = this.attributes!.toJson();
    }
    data['Id'] = this.id;
    return data;
  }
}

class kOLBrandRecords {
  Attributes? attributes;
  BrandMasterR? brandMasterR;
  String? advocacyLabel1C;
  String? advocacyScore1C;
  String? advocacyLabel2C;
  String? advocacyScore2C;

  kOLBrandRecords(
      {this.attributes,
      this.brandMasterR,
      this.advocacyLabel1C,
      this.advocacyScore1C,
      this.advocacyLabel2C,
      this.advocacyScore2C});

  kOLBrandRecords.fromJson(Map<String, dynamic> json) {
    attributes = json['attributes'] != null
        ? new Attributes.fromJson(json['attributes'])
        : null;
    brandMasterR = json['Brand_Master__r'] != null
        ? new BrandMasterR.fromJson(json['Brand_Master__r'])
        : null;
    advocacyLabel1C = json['Advocacy_Label_1__c'];
    advocacyScore1C = json['Advocacy_Score_1__c'];
    advocacyLabel2C = json['Advocacy_Label_2__c'];
    advocacyScore2C = json['Advocacy_Score_2__c'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.attributes != null) {
      data['attributes'] = this.attributes!.toJson();
    }
    if (this.brandMasterR != null) {
      data['Brand_Master__r'] = this.brandMasterR!.toJson();
    }
    data['Advocacy_Label_1__c'] = this.advocacyLabel1C;
    data['Advocacy_Score_1__c'] = this.advocacyScore1C;
    data['Advocacy_Label_2__c'] = this.advocacyLabel2C;
    data['Advocacy_Score_2__c'] = this.advocacyScore2C;
    return data;
  }
}

class BrandMasterR {
  Attributes? attributes;
  String? name;

  BrandMasterR({this.attributes, this.name});

  BrandMasterR.fromJson(Map<String, dynamic> json) {
    attributes = json['attributes'] != null
        ? new Attributes.fromJson(json['attributes'])
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
