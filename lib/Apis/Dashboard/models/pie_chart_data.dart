class PieChartData {
  int? totalSize;
  bool? done;
  List<PieChartRecords>? records;

  PieChartData({this.totalSize, this.done, this.records});

  PieChartData.fromJson(Map<String, dynamic> json) {
    totalSize = json['totalSize'];
    done = json['done'];
    if (json['records'] != null) {
      records = <PieChartRecords>[];
      json['records'].forEach((v) {
        records!.add(new PieChartRecords.fromJson(v));
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

class PieChartRecords {
  PieChartAttributes? attributes;
  String? advocacyScore1C;
  String? typeC;
  int? expr0;

  PieChartRecords(
      {this.typeC, this.attributes, this.advocacyScore1C, this.expr0});

  PieChartRecords.fromJson(Map<String, dynamic> json) {
    attributes = json['attributes'] != null
        ? new PieChartAttributes.fromJson(json['attributes'])
        : null;
    typeC = json['Type__c'];
    advocacyScore1C = json['Advocacy_Score_1__c'];
    expr0 = json['expr0'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.attributes != null) {
      data['attributes'] = this.attributes!.toJson();
    }
    data['Type__c'] = this.typeC;
    data['Advocacy_Score_1__c'] = this.advocacyScore1C;
    data['expr0'] = this.expr0;
    return data;
  }
}

class PieChartAttributes {
  String? type;

  PieChartAttributes({this.type});

  PieChartAttributes.fromJson(Map<String, dynamic> json) {
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    return data;
  }
}
