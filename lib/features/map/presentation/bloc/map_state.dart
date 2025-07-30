import 'package:codeface/features/map/domain/entity/map_enity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'map_state.freezed.dart';

@freezed
class MapState with _$MapState {
  const factory MapState.initial() = Initial;
  const factory MapState.loading() = Loading;
  const factory MapState.loaded({
    required List<MapEntity> cameras,
    required double? userLat,
    required double? userLng,
  }) = Loaded;
  const factory MapState.error(String message) = Error;
}
