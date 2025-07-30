import 'package:freezed_annotation/freezed_annotation.dart';
part 'map_event.freezed.dart';

@freezed
class MapEvent with _$MapEvent {
  const factory MapEvent.started() = Started;
  const factory MapEvent.locationUpdated(double lat, double lng) = LocationUpdated;
  const factory MapEvent.fetchUserLocation() = FetchUserLocation;

}