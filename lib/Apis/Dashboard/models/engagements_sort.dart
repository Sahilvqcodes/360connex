import 'package:connex/Apis/Dashboard/models/1:1_and_activities.dart';
import 'package:connex/Apis/Dashboard/models/total_leaderboard.dart';
import 'engagements.dart';

class AllData {
  int? id;
  List<EngagementsRecords>? recordsList;
  AllData({this.recordsList, this.id});
}

class TotalLeaderboardData {
  int? id;
  List<TotalLeaderboardRecords>? brandFocusList;
  List<TotalLeaderboardRecords>? diseasesFocusList;
  TotalLeaderboardData({this.brandFocusList, this.diseasesFocusList, this.id});
}

class MeetingsActivitiesData {
  int? id;
  List<MeetingsActivitesRecords>? upcomingList;
  List<MeetingsActivitesRecords>? previousList;
  MeetingsActivitiesData({this.upcomingList, this.previousList, this.id});
}
