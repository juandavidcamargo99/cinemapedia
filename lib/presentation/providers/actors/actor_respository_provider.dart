import 'package:cinemapedia/infraestructure/datasources/actor_themoviedb_datasource.dart';
import 'package:cinemapedia/infraestructure/repositories/actor_repository_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// este repositorio es inmutable solo para consultar informacion
final actorRepositoryProvider = Provider((ref) {
  return ActorRepositoryImpl(ActorThemoviedbDatasource());
});
