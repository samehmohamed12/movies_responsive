
import 'package:dartz/dartz.dart';
import 'package:movies_app/movies/domain/usecases/get_movie_detail.dart';
import 'package:movies_app/movies/domain/usecases/get_recommendation.dart';

import '../../../core/error/failure.dart';
import '../entities/movie.dart';
import '../entities/movie_details.dart';
import '../entities/recommendation.dart';

abstract class BaseMoviesRepository{
  Future<Either<Failure, List<Movie>>> getNowPlayingMovies ();
  Future<Either<Failure, List<Movie>>> getPopularMovies ();
  Future<Either<Failure, List<Movie>>> getTopRatedMovies ();
  Future<Either<Failure,  MovieDetail >> getMovieDetail (MovieDetailsParameters parameters);
  Future<Either<Failure,  List<Recommendation> >> getRecommendation (RecommendationParameters parameters );
}