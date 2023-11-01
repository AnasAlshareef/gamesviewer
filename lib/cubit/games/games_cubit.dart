import 'package:anasgame/data/models/results.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../data/repository/repo.dart';

part 'games_state.dart';

class GamesCubit extends Cubit<GamesState> {
  final Repo repo;


  GamesCubit(this.repo) : super(GamesInitial());

Future<void> getallg()async{
  emit(GamesLoading());
 final g = await repo.getAllGames();
  emit(GamesLoaded(g));
}

}
