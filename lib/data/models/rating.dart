class Rating {
  int id;
  String? title;
  int count;
  double percent;

  Rating({
    required this.id,
    required this.title,
    required this.count,
    required this.percent,
  });
  factory Rating.fromJson(Map<String, dynamic> json){
    return Rating(
      id: json["id"],
      title: json["title"],
      count: json["count"],
      percent: json["percent"],
    );
  }
}

enum Title {
  EXCEPTIONAL,
  MEH,
  RECOMMENDED,
  SKIP
}