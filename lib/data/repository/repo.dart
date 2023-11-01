import 'package:anasgame/data/models/results.dart';
import 'package:anasgame/data/webservices/webservice.dart';

import '../models/genres/result.dart';

class Repo{


  final WebService webService;

  Repo(this.webService);


  Future<List<Result>> getAllGames()async {
 return  await webService.getAllGames();
  }
  Future<List<Results>> getAllCategories()async {
 return  await webService.getAllCategories();
  }
}