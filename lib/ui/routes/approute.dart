import 'package:anasgame/cubit/games/games_cubit.dart';
import 'package:anasgame/cubit/genres/genres_cubit.dart';
import 'package:anasgame/data/models/results.dart';
import 'package:anasgame/data/repository/repo.dart';
import 'package:anasgame/data/webservices/webservice.dart';
import 'package:anasgame/ui/screens/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class AppRoute{


 static Route<dynamic>? onGenerateRoute(RouteSettings settings){
    switch(settings.name){
      case '/':
        return MaterialPageRoute(builder: (_)=>
          MultiBlocProvider(
          providers: [
            BlocProvider(create: (_)=>GenresCubit(Repo(WebService()))),
            BlocProvider(create: (_)=> GamesCubit(Repo(WebService()))),
          ],
          child: const HomeScreen(),
        )
        );
    }
    return null;
  }
}