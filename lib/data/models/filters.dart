import 'filteryear.dart';

class Filters {
  List<FiltersYear> years;

  Filters({
    required this.years,
  });

  factory Filters.fromJson(Map<String, dynamic> json) {
    return Filters(
      years: json["years"] == null ? [] : List<FiltersYear>.from(json["years"]!.map((x) => FiltersYear.fromJson(x))),

    );
  }
//
}