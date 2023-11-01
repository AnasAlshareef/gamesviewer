class YearYear {
  int year;
  int count;
  bool nofollow;

  YearYear({
    required this.year,
    required this.count,
    required this.nofollow,
  });
  factory YearYear.fromJson(Map<String, dynamic> json){
    return YearYear(
      year: json["year"],
      count: json["count"],
      nofollow: json["nofollow"],
    );
  }
}