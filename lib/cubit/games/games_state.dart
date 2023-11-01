part of 'games_cubit.dart';

@immutable
abstract class GamesState {}

class GamesInitial extends GamesState {}
class GamesLoading extends GamesState {}
class GamesLoaded extends GamesState {
  final List<Result> result;

  GamesLoaded(this.result);
}
