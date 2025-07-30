import 'package:codeface/core/network/api_client.dart';
import 'package:codeface/core/network/api_endpoint.dart';
import 'package:codeface/features/map/data/model/map_model.dart';
import 'package:codeface/features/map/domain/entity/map_enity.dart';
import 'package:codeface/features/map/domain/repository/repository.dart';

class MapRepositoryImpl implements MapRepository {
  final ApiClient apiClient;
  MapRepositoryImpl(this.apiClient);

  @override
  Future<List<MapEntity>> fetchTrafficMaps() async {
    final response = await apiClient.get(APIEndPoints.map);
    final cameras = response.data['items'][0]['cameras'] as List;
    return cameras.map((json) => MapModel.fromJson(json)).toList();
  }
}
