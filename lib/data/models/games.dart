import 'package:anasgame/data/models/results.dart';

import 'filters.dart';

class Games {
  int count;
  String next;
  dynamic previous;
  List<Result> results;
  String seoTitle;
  String seoDescription;
  String seoKeywords;
  String seoH1;
  bool noindex;
  bool nofollow;
  String description;
  Filters? filters;
  List<String> nofollowCollections;

  Games({
    required this.count,
    required this.next,
    required this.previous,
    required this.results,
    required this.seoTitle,
    required this.seoDescription,
    required this.seoKeywords,
    required this.seoH1,
    required this.noindex,
    required this.nofollow,
    required this.description,
    required this.filters,
    required this.nofollowCollections,
  });

  factory Games.fromJson(Map<String, dynamic> json) {
    return Games(
    count: json["count"],
    next: json["next"],
    previous: json["previous"],
    results: json["results"] == null ? [] : List<Result>.from(json["results"]!.map((x) => Result.fromJson(x))),
    seoTitle: json["seo_title"],
    seoDescription: json["seo_description"],
    seoKeywords: json["seo_keywords"],
    seoH1: json["seo_h1"],
    noindex: json["noindex"],
    nofollow: json["nofollow"],
    description: json["description"],
    filters: json["filters"] == null ? null : Filters.fromJson(json["filters"]),
    nofollowCollections: json["nofollow_collections"] == null ? [] : List<String>.from(json["nofollow_collections"]!.map((x) => x)),

    );
  }
//
}