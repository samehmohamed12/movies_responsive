import 'package:flutter/foundation.dart';
import 'package:movies_app/movies/domain/entities/movie.dart';

class MovieModel extends Movie {
  const MovieModel(
      {required super.voteAverage,
      required super.releaseDate,
      required super.id,
      required super.title,
      required super.backdropPath,
      required super.genreIds,
      required super.overview});

  factory MovieModel.fromJson(Map<String, dynamic> json) => MovieModel(
      voteAverage: json['vote_average'].toDouble(),
      releaseDate: json['release_date'],
      id:  json['id'],
      title:  json['title'],
      backdropPath:  json['backdrop_path'],
      genreIds: List<int>.from(json['genre_ids'].map((e) => e)),
      overview:  json['overview']);
}
