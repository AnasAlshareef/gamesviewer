import 'genere.dart';

class Store {
  int id;
  Genre? store;

  Store({
    required this.id,
    required this.store,
  });
  factory Store.fromJson(Map<String, dynamic> json){
    return Store(
      id: json["id"],
      store: json["store"] == null ? null : Genre.fromJson(json["store"]),
    );
  }
}