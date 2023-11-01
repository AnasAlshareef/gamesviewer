class EsrbRating {
  int id;
  String name;
  String slug;

  EsrbRating({
    required this.id,
    required this.name,
    required this.slug,
  });
  factory EsrbRating.fromJson(Map<String, dynamic> json){
    return EsrbRating(
      id: json["id"],
      name: json["name"],
      slug: json["slug"],
    );
  }
}