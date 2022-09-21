import 'package:movies_app/movies/data/model/genres.dart';

import '../../domain/entities/movie_details.dart';

class MovieDetailModel extends MovieDetail {
  const MovieDetailModel(
      {required super.releaseDate,
      required super.id,
      required super.runtime,
      required super.voteAverage,
      required super.title,
      required super.backdropPath,
      required super.overview,
      required super.genres});

  factory MovieDetailModel.fromJson(Map<String, dynamic> json) {
    return MovieDetailModel(
        runtime: json['runtime'],
        id: json['id'],
        releaseDate: json['release_date'],
        title: json['title'],
        overview: json['overview'],
        backdropPath: json['backdrop_path'],
        voteAverage: json['vote_average'].toDouble(),
        genres:List<GenresModel>.from(json['genres'].map((x)=>GenresModel.fromJson(x))));
  }
}
