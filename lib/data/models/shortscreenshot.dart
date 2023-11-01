class ShortScreenshot {
  int id;
  String image;

  ShortScreenshot({
    required this.id,
    required this.image,
  });
  factory ShortScreenshot.fromJson(Map<String, dynamic> json){
    return ShortScreenshot(
      id: json["id"],
      image: json["image"],
    );
  }
}