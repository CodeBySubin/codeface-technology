import 'package:codeface/features/map/domain/entity/map_enity.dart';

abstract class MapRepository {
  Future<List<MapEntity>> fetchTrafficMaps();
}