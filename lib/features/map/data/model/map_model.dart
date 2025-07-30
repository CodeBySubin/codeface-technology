import 'package:codeface/features/map/domain/entity/map_enity.dart';

class MapModel extends MapEntity {
  MapModel({
    required super.id,
    required super.imageUrl,
    required super.latitude,
    required super.longitude,
  });

  factory MapModel.fromJson(Map<String, dynamic> json) => MapModel(
        id: json['camera_id'],
        imageUrl: json['image'],
        latitude: json['location']['latitude'],
        longitude: json['location']['longitude'],
      );
}