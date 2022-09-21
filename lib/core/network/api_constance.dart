class ApiConstance{
  static const String baseUrl='https://api.themoviedb.org/3';
  static const String apiKey='51fe1a8c9ebb5a87eb1f5df5d7f75582';
  static const String nowPlayingMoviesPath='$baseUrl/movie/now_playing?api_key=$apiKey';
  static const String popularMoviesPath='$baseUrl/movie/popular?api_key=$apiKey';
  static const String topRatedMoviesPath='$baseUrl/movie/top_rated?api_key=$apiKey';
  static const String baseImageUrl='https://image.tmdb.org/t/p/w500';
  static   String detailMoviePath(int movieId)=>'$baseUrl/movie/$movieId?api_key=$apiKey';
  static   String recommendationPath(int movieId)=>'$baseUrl/movie/$movieId/recommendations?api_key=$apiKey';
  static   String  imageUrl(String path)=>'$baseImageUrl$path';


}
