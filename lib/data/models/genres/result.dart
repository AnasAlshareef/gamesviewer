import 'game.dart';

class Results {
  int? id;
  String? name;
  String? slug;
  int? gamesCount;
  String? imageBackground;
  List<Game>? games;

  Results({
    required this.id,
    required this.name,
    required this.slug,
    required this.gamesCount,
    required this.imageBackground,
    required this.games,
  });

  factory Results.fromJson(Map<String, dynamic> json) {
    return Results(
      id: json['id'],
      name: json["name"],
      slug: json["slug"],
      gamesCount: json["gamesCount"],
      imageBackground: json["imageBackground"],
      games: json["games"] == null ? [] : List<Game>.from(json["games"]!.map((x) => Game.fromJson(x))),

    );
  }
//
}