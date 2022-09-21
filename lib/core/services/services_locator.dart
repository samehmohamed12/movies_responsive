import 'package:get_it/get_it.dart';
import 'package:movies_app/movies/data/datasource/movie_remote.dart';
import 'package:movies_app/movies/data/repository/movies_repository.dart';
import 'package:movies_app/movies/domain/repository/base_movies_repository.dart';
import 'package:movies_app/movies/domain/usecases/get_movie_detail.dart';
import 'package:movies_app/movies/domain/usecases/get_now_playing.dart';
import 'package:movies_app/movies/domain/usecases/get_popular.dart';
import 'package:movies_app/movies/domain/usecases/get_recommendation.dart';
import 'package:movies_app/movies/domain/usecases/get_top_rated.dart';
import 'package:movies_app/movies/presentation/controller/movies_bloc.dart';

import '../../movies/presentation/controller/movie_detail_bloc.dart';

final sl = GetIt.instance;
class ServicesLocator{
    void init(){
      /// Movie Bloc
      sl.registerFactory(() => MoviesBloc(sl(),sl(),sl()));
      sl.registerFactory(() => MovieDetailBloc(sl(),sl()));
      /// Use Cases
      sl.registerLazySingleton(() => GetNowPlayingUseCase(sl()));
      sl.registerLazySingleton(() => GetPopularUseCase(sl()));
      sl.registerLazySingleton(() => GetTopRatedUseCase(sl()));
      sl.registerLazySingleton(() => GetMovieDetailUseCase(sl()));
      sl.registerLazySingleton(() => GetRecommendationUseCase(sl()));
    /// Repository
      sl.registerLazySingleton<BaseMoviesRepository>(() => MoviesRepository(sl()));
   /// Dara Source
      sl.registerLazySingleton<BaseMovieRemoteDataSource>(() => MovieRemoteDataSource());



    }

}