part of 'genres_cubit.dart';

@immutable
abstract class GenresState {}

class GenresInitial extends GenresState {}
class GenresLoading extends GenresState {}
class GenresLoaded extends GenresState {
  final List<Results> results;

  GenresLoaded(this.results);
}
