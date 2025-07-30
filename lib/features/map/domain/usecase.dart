import 'package:codeface/features/map/domain/map_enity.dart';
import 'package:codeface/features/map/domain/repository.dart';

class GetTrafficMapsUseCase {
  final MapRepository repository;
  GetTrafficMapsUseCase(this.repository);

  Future<List<MapEntity>> call() => repository.fetchTrafficMaps();
}