part of 'movie_detail_bloc.dart';

abstract class MovieDetailEvent extends Equatable {
  const MovieDetailEvent();
}



class GetMovieDetailsEvent extends MovieDetailEvent{
  final int id;

  const GetMovieDetailsEvent(this.id);

  @override

  List<Object?> get props => [id];

}
class GetMovieRecommendationEvent extends MovieDetailEvent{
  final int id;

  const GetMovieRecommendationEvent(this.id);

  @override

  List<Object?> get props => throw UnimplementedError();

}
