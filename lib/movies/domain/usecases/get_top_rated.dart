import 'package:dartz/dartz.dart';

import 'package:movies_app/core/error/failure.dart';
import 'package:movies_app/core/usecase/base_usecase.dart';

import '../entities/movie.dart';
import '../repository/base_movies_repository.dart';

class GetTopRatedUseCase extends BaseUseCase<List<Movie>,NoParameters>{
  final BaseMoviesRepository baseMoviesRepository;

  GetTopRatedUseCase(this.baseMoviesRepository);
  @override
  Future<Either<Failure, List<Movie>>> call(NoParameters parameters)async{

    return  await baseMoviesRepository.getTopRatedMovies();


  }


}