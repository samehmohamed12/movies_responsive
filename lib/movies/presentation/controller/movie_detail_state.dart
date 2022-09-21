part of 'movie_detail_bloc.dart';

class MovieDetailState extends Equatable {
  const MovieDetailState(
      {
        this.movieDetail,
      this.movieDetailsState = RequestState.loading,
      this.movieDetailsMessage = '',
      this.recommendation= const[],
      this.recommendationState = RequestState.loading,
      this.recommendationMessage = ''});

  final MovieDetail? movieDetail;
  final RequestState movieDetailsState;
  final String movieDetailsMessage;
  final List<Recommendation>? recommendation;
  final RequestState recommendationState;
  final String recommendationMessage;

  MovieDetailState copyWith({
    MovieDetail? movieDetail,
    RequestState? movieDetailsState,
    String? movieDetailsMessage,
    List<Recommendation>? recommendation,
    RequestState? recommendationState,
    String? recommendationMessage,
  }) {
    return MovieDetailState(
        movieDetail: movieDetail ?? this.movieDetail,
        movieDetailsMessage: movieDetailsMessage ?? this.movieDetailsMessage,
        movieDetailsState: movieDetailsState ?? this.movieDetailsState,
        recommendation: recommendation ?? this.recommendation,
        recommendationMessage:
            recommendationMessage ?? this.recommendationMessage,
        recommendationState: recommendationState ?? this.recommendationState);
  }

  @override
  List<Object?> get props =>
      [movieDetail, movieDetailsState, movieDetailsMessage,recommendation,recommendationMessage,recommendationState];
}
