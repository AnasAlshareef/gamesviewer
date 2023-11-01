class Requirements {
  String minimum;
  String? recommended;

  Requirements({
    required this.minimum,
    this.recommended,
  });
  factory Requirements.fromJson(Map<String, dynamic> json){
    return Requirements(
      minimum: json["minimum"],
      recommended: json["recommended"],
    );
  }
}