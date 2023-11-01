class AddedByStatus {
  int yet;
  int owned;
  int beaten;
  int toplay;
  int dropped;
  int playing;

  AddedByStatus({
    required this.yet,
    required this.owned,
    required this.beaten,
    required this.toplay,
    required this.dropped,
    required this.playing,
  });
  factory AddedByStatus.fromJson(Map<String, dynamic> json){
    return AddedByStatus(
      yet: json["yet"],
      owned: json["owned"],
      beaten: json["beaten"],
      toplay: json["toplay"],
      dropped: json["dropped"],
      playing: json["playing"],
    );
  }

}

enum Color {
  THE_0_F0_F0_F
}