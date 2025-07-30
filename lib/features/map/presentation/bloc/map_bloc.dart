import 'package:codeface/features/map/domain/usecase/user_location.dart';
import 'package:codeface/features/map/domain/usecase/usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'map_event.dart';
import 'map_state.dart';

class MapBloc extends Bloc<MapEvent, MapState> {
  final GetTrafficMapsUseCase trafficUseCase;
  final GetUserLocationUseCase locationUseCase;

  MapBloc(this.trafficUseCase, this.locationUseCase)
    : super(const MapState.initial()) {
    on<MapEvent>((event, emit) async {
      await event.map(
        started: (_) async {
          emit(const MapState.loading());
          try {
            final cameras = await trafficUseCase();
            emit(
              MapState.loaded(cameras: cameras, userLat: null, userLng: null),
            );
          } catch (_) {
            emit(const MapState.error("Failed to load traffic data"));
          }
        },
        fetchUserLocation: (_) async {
          try {
            final position = await locationUseCase();
            add(
              MapEvent.locationUpdated(position.latitude, position.longitude),
            );
          } catch (e) {
            emit(const MapState.error("Failed to fetch user location"));
          }
        },
        locationUpdated: (e) {
          final current = state;
          if (current is Loaded) {
            emit(current.copyWith(userLat: e.lat, userLng: e.lng));
          }
        },
      );
    });
  }
}
