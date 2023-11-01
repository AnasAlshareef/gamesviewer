import 'package:anasgame/data/models/year.dart';

class FiltersYear {
  int from;
  int to;
  String filter;
  int decade;
  List<YearYear> years;
  bool nofollow;
  int count;

  FiltersYear({
    required this.from,
    required this.to,
    required this.filter,
    required this.decade,
    required this.years,
    required this.nofollow,
    required this.count,
  }


  );
  factory FiltersYear.fromJson(Map<String, dynamic> json){
    return FiltersYear(
      from: json["from"],
      to: json["to"],
      filter: json["filter"],
      decade: json["decade"],
      years: json["years"] == null ? [] : List<YearYear>.from(
          json["years"]!.map((x) => YearYear.fromJson(x))),
      nofollow: json["nofollow"],
      count: json["count"],
    );
  }}