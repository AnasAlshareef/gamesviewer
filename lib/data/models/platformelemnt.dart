import 'package:anasgame/data/models/platformplatform.dart';
import 'package:anasgame/data/models/requirements.dart';

class PlatformElement {
  PlatformPlatform? platform;
  DateTime? releasedAt;
  Requirements? requirementsEn;
  Requirements? requirementsRu;

  PlatformElement({
    required this.platform,
    required this.releasedAt,
    required this.requirementsEn,
    required this.requirementsRu,
  });

  factory PlatformElement.fromJson(Map<String, dynamic> json){
    return PlatformElement(
      platform: json["platform"] == null ? null : PlatformPlatform.fromJson(json["platform"]),
      releasedAt: DateTime.tryParse(json["released_at"] ?? ""),
      requirementsEn: json["requirements_en"] == null ? null : Requirements.fromJson(json["requirements_en"]),
      requirementsRu: json["requirements_ru"] == null ? null : Requirements.fromJson(json["requirements_ru"]),
    );
  }

}