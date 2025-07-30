import 'package:codeface/features/map/domain/map_enity.dart';

abstract class MapRepository {
  Future<List<MapEntity>> fetchTrafficMaps();
}