import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import 'package:movies_app/core/error/failure.dart';
import 'package:movies_app/movies/domain/entities/movie_details.dart';

import '../../../core/usecase/base_usecase.dart';
import '../repository/base_movies_repository.dart';

class GetMovieDetailUseCase extends BaseUseCase<MovieDetail,MovieDetailsParameters> {
  final BaseMoviesRepository baseMoviesRepository;

  GetMovieDetailUseCase(this.baseMoviesRepository);

  @override
  Future<Either<Failure,MovieDetail >> call(MovieDetailsParameters parameters) async {
    return await baseMoviesRepository.getMovieDetail(parameters);

    }

}
class MovieDetailsParameters extends Equatable{
  final int movieId;

  const MovieDetailsParameters({required this.movieId});
  @override

  List<Object?> get props => [movieId];


}