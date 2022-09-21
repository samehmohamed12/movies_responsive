import 'package:equatable/equatable.dart';
import 'package:movies_app/core/utilis/enums.dart';
import 'package:movies_app/movies/domain/entities/movie_details.dart';

import '../../domain/entities/movie.dart';

class MoviesState extends Equatable {
  final List<Movie> nowPlayingMovies;
  final RequestState nowPlayingState;
  final String nowPlayingMessage;

  final List<Movie> popularMovies;
  final RequestState popularState;
  final String popularMessage;

  final List<Movie> topRatedMovies;
  final RequestState topRatedState;
  final String topRatedMessage;

  final List<MovieDetail> movieDetail;
  final RequestState movieDetailState;
  final String movieDetailMessage;

  const MoviesState(
      {this.movieDetail = const [],
      this.movieDetailState = RequestState.loading,
      this.movieDetailMessage = '',
      this.topRatedMovies = const [],
      this.topRatedState = RequestState.loading,
      this.topRatedMessage = '',
      this.nowPlayingMovies = const [],
      this.nowPlayingState = RequestState.loading,
      this.nowPlayingMessage = '',
      this.popularMovies = const [],
      this.popularState = RequestState.loading,
      this.popularMessage = ''});

  MoviesState copyWith({
    List<MovieDetail>? movieDetail,
    RequestState? movieDetailState,
    String? movieDetailMessage,
    List<Movie>? nowPlayingMovies,
    RequestState? nowPlayingState,
    String? nowPlayingMessage,
    List<Movie>? popularMovies,
    RequestState? popularState,
    String? popularMessage,
    List<Movie>? topRatedMovies,
    RequestState? topRatedState,
    String? topRatedMessage,
  }) {
    return MoviesState(
        movieDetailState: movieDetailState ?? this.movieDetailState,
        movieDetailMessage: movieDetailMessage ?? this.movieDetailMessage,
        movieDetail: movieDetail ?? this.movieDetail,
        nowPlayingState: nowPlayingState ?? this.nowPlayingState,
        nowPlayingMessage: nowPlayingMessage ?? this.nowPlayingMessage,
        nowPlayingMovies: nowPlayingMovies ?? this.nowPlayingMovies,
        popularState: popularState ?? this.popularState,
        popularMessage: popularMessage ?? this.popularMessage,
        popularMovies: popularMovies ?? this.popularMovies,
        topRatedMessage: topRatedMessage ?? this.topRatedMessage,
        topRatedMovies: topRatedMovies ?? this.topRatedMovies,
        topRatedState: topRatedState ?? this.topRatedState);
  }

  @override
  // TODO: implement props
  List<Object?> get props => [
        nowPlayingMovies,
        nowPlayingState,
        nowPlayingMessage,
        popularMessage,
        popularMovies,
        popularState,
        topRatedMessage,
        topRatedMovies,
        topRatedState,
        movieDetailState,
        movieDetailMessage,
        movieDetail,
      ];
}
