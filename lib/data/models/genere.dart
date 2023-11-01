class Genre {
  int id;
  String name;
  String slug;
  int gamesCount;
  String imageBackground;


  Genre({
    required this.id,
    required this.name,
    required this.slug,
    required this.gamesCount,
    required this.imageBackground,
    
  });
  factory Genre.fromJson(Map<String, dynamic> json){
    return Genre(
      id: json["id"],
      name: json["name"],
      slug: json["slug"],
      gamesCount: json["games_count"],
      imageBackground: json["image_background"],
      );
  }
}