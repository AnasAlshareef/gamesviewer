class PlatformPlatform {
  int id;
  String name;
  String slug;
  dynamic image;
  dynamic yearEnd;
  int? yearStart;
  int gamesCount;
  String imageBackground;

  PlatformPlatform({
    required this.id,
    required this.name,
    required this.slug,
    required this.image,
    required this.yearEnd,
    required this.yearStart,
    required this.gamesCount,
    required this.imageBackground,
  });
  factory PlatformPlatform.fromJson(Map<String, dynamic> json){
    return PlatformPlatform(
      id: json["id"],
      name: json["name"],
      slug: json["slug"],
      image: json["image"],
      yearEnd: json["year_end"],
      yearStart: json["year_start"],
      gamesCount: json["games_count"],
      imageBackground: json["image_background"],
    );
  }
}