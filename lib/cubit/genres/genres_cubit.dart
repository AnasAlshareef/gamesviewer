import 'package:anasgame/data/models/genres/result.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../data/repository/repo.dart';

part 'genres_state.dart';

class GenresCubit extends Cubit<GenresState> {
  final Repo repo;

  GenresCubit(this.repo) : super(GenresInitial());


  Future<void> getAllC()async{
    emit(GenresLoading());
    final c = await repo.getAllCategories();
    emit(GenresLoaded(c));
  }

}
