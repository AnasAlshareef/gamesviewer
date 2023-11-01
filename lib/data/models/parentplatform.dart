import 'esrbrating.dart';

class ParentPlatform {
  EsrbRating? platform;

  ParentPlatform({
    required this.platform,
  });
  factory ParentPlatform.fromJson(Map<String, dynamic> json){
    return ParentPlatform(
      platform: json["platform"] == null ? null : EsrbRating.fromJson(json["platform"]),
    );
  }
}