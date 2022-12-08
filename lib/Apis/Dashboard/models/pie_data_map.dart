import 'package:connex/Apis/Dashboard/models/pie_chart_data.dart';

class DataMap {
  int? unorted;
  int? neutral;
  int? proactive;
  int? detractor;
  int? passive;

  DataMap({
    this.unorted,
    this.neutral,
    this.proactive,
    this.detractor,
    this.passive,
  });
}

class RectangleChartDataMap {
  String? name;
  String? id;
  List<PieChartRecords>? listOfRectangularChartData;
  List<PieChartRecords>? unscoredList;
  List<PieChartRecords>? detractorList;
  List<PieChartRecords>? neutralList;
  List<PieChartRecords>? passiveList;
  List<PieChartRecords>? proactiveList;
  // List<PieChartRecords>? mslRoundtableList;
  // List<PieChartRecords>? consultingList;
  // List<PieChartRecords>? speakerTrainingList;
  // List<PieChartRecords>? internalEventList;
  // List<PieChartRecords>? mediaEventList;
  // List<PieChartRecords>? productTheaterList;
  // List<PieChartRecords>? sponsorshipList;
  // List<PieChartRecords>? cMEtList;
  // List<PieChartRecords>? otherList;

  RectangleChartDataMap({
    this.detractorList,
    this.neutralList,
    this.passiveList,
    this.proactiveList,
    this.unscoredList,

    // this.advisoryList,
    // this.cMEtList,
    // this.consultingList,
    // this.executiveList,
    // this.institutionalList,
    // this.internalEventList,
    // this.mediaEventList,
    // this.mslRoundtableList,
    // this.oneMeetingList,
    // this.otherList,
    // this.productTheaterList,
    this.id,
    this.name,
    this.listOfRectangularChartData,
    // this.sponsorshipList,
    // this.steeringList,
    // this.speakerTrainingList,
  });
}
