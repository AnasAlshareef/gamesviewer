import 'dart:convert';

import 'package:anasgame/data/models/results.dart';
import 'package:http/http.dart' as http;
import 'package:anasgame/data/models/genres/result.dart';

class WebService{
  
  Future<List<Results>> getAllCategories()async{
    final response = await http.get(Uri.parse('https://api.rawg.io/api/genres?key=6d28380bbc4d43079d44499960b29809'));

    if (response.statusCode == 200) {
      final List<dynamic> jsonData = jsonDecode(response.body)['results'];
      print('done');
      return jsonData.map((userJson) => Results.fromJson(userJson)).toList();
    } else {
      throw Exception('Failed to load categories');
    }
  }
Future<List<Result>> getAllGames()async{
    final response = await http.get(Uri.parse('https://api.rawg.io/api/games?key=6d28380bbc4d43079d44499960b29809'));
    if (response.statusCode == 200) {
      final List<dynamic> jsonData = jsonDecode(response.body)['results'];
      return jsonData.map((userJson) => Result.fromJson(userJson)).toList();
    } else {
      throw Exception('Failed to load games');
    }
  }

}

  
  
