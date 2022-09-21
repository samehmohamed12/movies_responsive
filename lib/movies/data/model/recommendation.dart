import 'package:movies_app/movies/domain/entities/recommendation.dart';

class RecommendationModel extends Recommendation{
  const RecommendationModel({ super.backdropPath, required super.id});


  factory RecommendationModel.fromJson(Map<String, dynamic> json) {
    return RecommendationModel(
      backdropPath: json['backdrop_path']?? "/rr7E0NoGKxvbkb89eR1GwfoYjpA.jpg",
      id:json['id']
    );
  }
}