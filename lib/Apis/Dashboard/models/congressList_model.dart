class CongressList {
  int? totalSize;
  bool? done;
  List<CongressRecords>? records;

  CongressList({this.totalSize, this.done, this.records});

  CongressList.fromJson(Map<String, dynamic> json) {
    totalSize = json['totalSize'];
    done = json['done'];
    if (json['records'] != null) {
      records = <CongressRecords>[];
      json['records'].forEach((v) {
        records!.add(new CongressRecords.fromJson(v));
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

class CongressRecords {
  CongressAttributes? attributes;
  String? id;
  String? labelC;

  CongressRecords({this.attributes, this.id, this.labelC});

  CongressRecords.fromJson(Map<String, dynamic> json) {
    attributes = json['attributes'] != null
        ? new CongressAttributes.fromJson(json['attributes'])
        : null;
    id = json['Id'];
    labelC = json['Label__c'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.attributes != null) {
      data['attributes'] = this.attributes!.toJson();
    }
    data['Id'] = this.id;
    data['Label__c'] = this.labelC;
    return data;
  }
}

class CongressAttributes {
  String? type;
  String? url;

  CongressAttributes({this.type, this.url});

  CongressAttributes.fromJson(Map<String, dynamic> json) {
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
