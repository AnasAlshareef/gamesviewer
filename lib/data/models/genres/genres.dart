import 'package:anasgame/data/models/genres/result.dart';

class Genres {
  int count;
  dynamic next;
  dynamic previous;
  List<Results> results;

  Genres({
    required this.count,
    required this.next,
    required this.previous,
    required this.results,
  });

  factory Genres.fromJson(Map<String, dynamic> json) {
    return Genres(
        count: json["count"],
        next: json["next"],
        previous: json["previous"],
      results: json["results"] == null ? [] : List<Results>.from(json["results"]!.map((x) => Results.fromJson(x))),

    );
  }
//
}