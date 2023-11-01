class Game {
  int? id;
  String? slug;
  String? name;
  int? added;

  Game({
    required this.id,
    required this.slug,
    required this.name,
    required this.added,
  });

  factory Game.fromJson(Map<String, dynamic> json) {
    return Game(
      id: json["id"],
      slug: json["slug"],
      name: json["name"],
      added: json["added"],
    );
  }
}