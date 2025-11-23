import 'package:cinemapedia/domain/datasources/actors_datasource.dart';
import 'package:cinemapedia/domain/entities/actor.dart';
import 'package:cinemapedia/domain/repositories/actors_repository.dart';

class ActorRepositoryImpl extends ActorsRepository {
  final ActorsDatasource actorsDatasource;
  ActorRepositoryImpl(this.actorsDatasource);

  @override
  Future<List<Actor>> getActosByMovie(String movieId) {
    return actorsDatasource.getActosByMovie( movieId);
  }
}
