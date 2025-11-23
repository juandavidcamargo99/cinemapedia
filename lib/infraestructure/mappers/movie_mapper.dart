import 'package:cinemapedia/domain/entities/movie.dart';
import 'package:cinemapedia/infraestructure/models/themoviedb/movie_details.dart';
import 'package:cinemapedia/infraestructure/models/themoviedb/moviefrommoviedb.dart';

class MovieMapper {
  static Movie movieDbToEntity(MovieFromMovieDb moviedb) => Movie(
    adult: moviedb.adult,
    backdropPath: (moviedb.backdropPath != '')
        ? 'https://image.tmdb.org/t/p/w500/${moviedb.backdropPath}'
        : 'https://cdn.pixabay.com/photo/2024/07/02/17/56/lost-8868214_1280.jpg',
    genreIds: moviedb.genreIds.map((e) => e.toString()).toList(),
    id: moviedb.id,
    originalLanguage: moviedb.originalLanguage,
    originalTitle: moviedb.originalTitle,
    overview: moviedb.overview,
    popularity: moviedb.popularity,
    posterPath: (moviedb.posterPath != '')
        ? 'https://image.tmdb.org/t/p/w500/${moviedb.posterPath}'
        : 'https://cdn.pixabay.com/photo/2024/07/02/17/56/lost-8868214_1280.jpg',
    releaseDate: moviedb.releaseDate,
    title: moviedb.title,
    video: moviedb.video,
    voteAverage: moviedb.voteAverage,
    voteCount: moviedb.voteCount,
  );

  static Movie moviesDetailsToEntity(MovieDetails movieDetails) => Movie(
    adult: movieDetails.adult,
    backdropPath: (movieDetails.backdropPath != '')
        ? 'https://image.tmdb.org/t/p/w500/${movieDetails.backdropPath}'
        : 'https://cdn.pixabay.com/photo/2024/07/02/17/56/lost-8868214_1280.jpg',
    genreIds: movieDetails.genres.map((e) => e.name).toList(),
    id: movieDetails.id,
    originalLanguage: movieDetails.originalLanguage,
    originalTitle: movieDetails.originalTitle,
    overview: movieDetails.overview,
    popularity: movieDetails.popularity,
    posterPath: (movieDetails.posterPath != '')
        ? 'https://image.tmdb.org/t/p/w500/${movieDetails.posterPath}'
        : 'https://cdn.pixabay.com/photo/2024/07/02/17/56/lost-8868214_1280.jpg',
    releaseDate: movieDetails.releaseDate,
    title: movieDetails.title,
    video: movieDetails.video,
    voteAverage: movieDetails.voteAverage,
    voteCount: movieDetails.voteCount,
  );
}
