class KolSearchEngagements {
  int? totalSize;
  bool? done;
  List<EngagementsRecords>? records;

  KolSearchEngagements({this.totalSize, this.done, this.records});

  KolSearchEngagements.fromJson(Map<String, dynamic> json) {
    totalSize = json['totalSize'];
    done = json['done'];
    if (json['records'] != null) {
      records = <EngagementsRecords>[];
      json['records'].forEach((v) {
        records!.add(new EngagementsRecords.fromJson(v));
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

class EngagementsRecords {
  EngagementsAttributes? attributes;
  String? id;
  int? engagements;
  int? events;
  int? meetings;

  EngagementsRecords(
      {this.attributes, this.id, this.engagements, this.events, this.meetings});

  EngagementsRecords.fromJson(Map<String, dynamic> json) {
    attributes = json['attributes'] != null
        ? new EngagementsAttributes.fromJson(json['attributes'])
        : null;
    id = json['Id'];
    engagements = json['Engagements'];
    meetings = json['Meetings'];
    events = json['Events'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.attributes != null) {
      data['attributes'] = this.attributes!.toJson();
    }
    data['Id'] = this.id;
    data['Engagements'] = this.engagements;
    data['Meetings'] = this.meetings;
    data['Events'] = this.events;
    return data;
  }
}

class EngagementsAttributes {
  String? type;
  String? url;

  EngagementsAttributes({this.type, this.url});

  EngagementsAttributes.fromJson(Map<String, dynamic> json) {
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
