class TotalLeaderboard {
  int? totalSize;
  bool? done;
  List<TotalLeaderboardRecords>? records;

  TotalLeaderboard({this.totalSize, this.done, this.records});

  TotalLeaderboard.fromJson(Map<String, dynamic> json) {
    totalSize = json['totalSize'];
    done = json['done'];
    if (json['records'] != null) {
      records = <TotalLeaderboardRecords>[];
      json['records'].forEach((v) {
        records!.add(new TotalLeaderboardRecords.fromJson(v));
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

class TotalLeaderboardRecords {
  TotalLeaderboardAttributes? attributes;
  String? brand;
  String? focus;
  String? topic;
  int? expr0;

  TotalLeaderboardRecords(
      {this.attributes, this.brand, this.focus, this.topic, this.expr0});

  TotalLeaderboardRecords.fromJson(Map<String, dynamic> json) {
    attributes = json['attributes'] != null
        ? new TotalLeaderboardAttributes.fromJson(json['attributes'])
        : null;
    brand = json['Brand'];
    focus = json['Focus'];
    topic = json['Topic'];
    expr0 = json['expr0'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.attributes != null) {
      data['attributes'] = this.attributes!.toJson();
    }
    data['Brand'] = this.brand;
    data['Focus'] = this.focus;
    data['Topic'] = this.topic;
    data['expr0'] = this.expr0;
    return data;
  }
}

class TotalLeaderboardAttributes {
  String? type;

  TotalLeaderboardAttributes({this.type});

  TotalLeaderboardAttributes.fromJson(Map<String, dynamic> json) {
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    return data;
  }
}
