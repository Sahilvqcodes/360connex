class Engagements {
  int? totalSize;
  bool? done;
  List<EngagementsRecords>? records;

  Engagements({this.totalSize, this.done, this.records});

  Engagements.fromJson(Map<String, dynamic> json) {
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
  String? name;
  int? engs;
  int? expr0;
  int? expr1;

  EngagementsRecords(
      {this.attributes, this.name, this.engs, this.expr0, this.expr1});

  EngagementsRecords.fromJson(Map<String, dynamic> json) {
    attributes = json['attributes'] != null
        ? new EngagementsAttributes.fromJson(json['attributes'])
        : null;
    name = json['Name'];
    engs = json['engs'];
    expr0 = json['expr0'];
    expr1 = json['expr1'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.attributes != null) {
      data['attributes'] = this.attributes!.toJson();
    }
    data['Name'] = this.name;
    data['engs'] = this.engs;
    data['expr0'] = this.expr0;
    data['expr1'] = this.expr1;
    return data;
  }
}

class EngagementsAttributes {
  String? type;

  EngagementsAttributes({this.type});

  EngagementsAttributes.fromJson(Map<String, dynamic> json) {
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    return data;
  }
}
