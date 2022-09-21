import 'package:equatable/equatable.dart';

import 'genres.dart';

class MovieDetail extends Equatable {
  final int id;
  final List<Genres> genres;
  final int runtime;
  final double voteAverage;
  final String title;
  final String backdropPath;
  final String overview;
  final String releaseDate;

  const MovieDetail({
    required this.genres,
    required this.releaseDate,
    required this.id,
    required this.runtime,
    required this.voteAverage,
    required this.title,
    required this.backdropPath,
    required this.overview,
  });


  @override

  List<Object?> get props => [releaseDate,id,runtime,voteAverage,title,backdropPath,overview,genres];
}
