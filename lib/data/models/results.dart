import 'package:anasgame/data/models/parentplatform.dart';
import 'package:anasgame/data/models/platformelemnt.dart';
import 'package:anasgame/data/models/rating.dart';
import 'package:anasgame/data/models/shortscreenshot.dart';
import 'package:anasgame/data/models/store.dart';

import 'addedbystatus.dart';
import 'esrbrating.dart';
import 'genere.dart';

class Result {
  int id;
  String slug;
  String name;
  DateTime? released;
  bool tba;
  String backgroundImage;
  double rating;
  int ratingTop;
  List<Rating> ratings;
  int ratingsCount;
  int reviewsTextCount;
  int added;
  AddedByStatus? addedByStatus;
  int metacritic;
  int playtime;
  int suggestionsCount;
  DateTime? updated;
  dynamic userGame;
  int reviewsCount;
  List<PlatformElement> platforms;
  List<ParentPlatform> parentPlatforms;
  List<Genre> genres;
  List<Store> stores;
  dynamic clip;
  List<Genre> tags;
  EsrbRating? esrbRating;
  List<ShortScreenshot> shortScreenshots;
  Result({
    required this.id,
    required this.slug,
    required this.name,
    required this.released,
    required this.tba,
    required this.backgroundImage,
    required this.rating,
    required this.ratingTop,
    required this.ratings,
    required this.ratingsCount,
    required this.reviewsTextCount,
    required this.added,
    required this.addedByStatus,
    required this.metacritic,
    required this.playtime,
    required this.suggestionsCount,
    required this.updated,
    required this.userGame,
    required this.reviewsCount,

    required this.platforms,
    required this.parentPlatforms,
    required this.genres,
    required this.stores,
    required this.clip,
    required this.tags,
    required this.esrbRating,
    required this.shortScreenshots,
  });

  factory Result.fromJson(Map<String, dynamic> json) {
    return Result(
      id: json["id"],
      slug: json["slug"],
      name: json["name"],
      released: DateTime.tryParse(json["released"] ?? ""),
      tba: json["tba"],
      backgroundImage: json["background_image"],
      rating: json["rating"],
      ratingTop: json["rating_top"],
      ratings: json["ratings"] == null ? [] : List<Rating>.from(json["ratings"]!.map((x) => Rating.fromJson(x))),
      ratingsCount: json["ratings_count"],
      reviewsTextCount: json["reviews_text_count"],
      added: json["added"],
      addedByStatus: json["added_by_status"] == null ? null : AddedByStatus.fromJson(json["added_by_status"]),
      metacritic: json["metacritic"],
      playtime: json["playtime"],
      suggestionsCount: json["suggestions_count"],
      updated: DateTime.tryParse(json["updated"] ?? ""),
      userGame: json["user_game"],
      reviewsCount: json["reviews_count"],

      platforms: json["platforms"] == null ? [] : List<PlatformElement>.from(json["platforms"]!.map((x) => PlatformElement.fromJson(x))),
      parentPlatforms: json["parent_platforms"] == null ? [] : List<ParentPlatform>.from(json["parent_platforms"]!.map((x) => ParentPlatform.fromJson(x))),
      genres: json["genres"] == null ? [] : List<Genre>.from(json["genres"]!.map((x) => Genre.fromJson(x))),
      stores: json["stores"] == null ? [] : List<Store>.from(json["stores"]!.map((x) => Store.fromJson(x))),
      clip: json["clip"],
      tags: json["tags"] == null ? [] : List<Genre>.from(json["tags"]!.map((x) => Genre.fromJson(x))),
      esrbRating: json["esrb_rating"] == null ? null : EsrbRating.fromJson(json["esrb_rating"]),
      shortScreenshots: json["short_screenshots"] == null ? [] : List<ShortScreenshot>.from(json["short_screenshots"]!.map((x) => ShortScreenshot.fromJson(x))),

    );
  }

}