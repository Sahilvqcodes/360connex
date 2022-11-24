class KolOvervievAndInstitution {
  int? totalSize;
  bool? done;
  List<KolRecords>? records;

  KolOvervievAndInstitution({this.totalSize, this.done, this.records});

  KolOvervievAndInstitution.fromJson(Map<String, dynamic> json) {
    totalSize = json['totalSize'];
    done = json['done'];
    if (json['records'] != null) {
      records = <KolRecords>[];
      json['records'].forEach((v) {
        records!.add(new KolRecords.fromJson(v));
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

class KolRecords {
  KolAttributes? attributes;
  String? kOLClassificationC;
  int? expr0;

  KolRecords({this.attributes, this.kOLClassificationC, this.expr0});

  KolRecords.fromJson(Map<String, dynamic> json) {
    attributes = json['attributes'] != null
        ? new KolAttributes.fromJson(json['attributes'])
        : null;
    kOLClassificationC = json['KOL_Classification__c'];
    expr0 = json['expr0'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.attributes != null) {
      data['attributes'] = this.attributes!.toJson();
    }
    data['KOL_Classification__c'] = this.kOLClassificationC;
    data['expr0'] = this.expr0;
    return data;
  }
}

class KolAttributes {
  String? type;

  KolAttributes({this.type});

  KolAttributes.fromJson(Map<String, dynamic> json) {
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    return data;
  }
}
