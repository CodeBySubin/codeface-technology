import 'package:cached_network_image/cached_network_image.dart';
import 'package:codeface/core/constants/app_colors.dart';
import 'package:codeface/core/constants/app_icons.dart';
import 'package:codeface/core/constants/app_image.dart';
import 'package:codeface/core/constants/app_strings.dart';
import 'package:codeface/core/widgets/loader.dart';
import 'package:codeface/features/map/presentation/bloc/map_bloc.dart';
import 'package:codeface/features/map/presentation/bloc/map_event.dart';
import 'package:codeface/features/map/presentation/bloc/map_state.dart';
import 'package:codeface/features/map/presentation/widget/image_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  GoogleMapController? _mapController;
  BitmapDescriptor? cameraIcon;
  BitmapDescriptor? userIcon;

  @override
  void initState() {
    super.initState();
    _loadCustomIcons();
    Future.microtask(() {
      context.read<MapBloc>().add(const MapEvent.started());
    });
  }

  Future<void> _loadCustomIcons() async {
    final cameraIconBitmap = await BitmapDescriptor.fromAssetImage(
      const ImageConfiguration(size: Size(48, 48)),
      AppImage.camera,
    );
    final userIconBitmap = await BitmapDescriptor.fromAssetImage(
      const ImageConfiguration(size: Size(48, 48)),
      AppImage.vehicle,
    );

    setState(() {
      cameraIcon = cameraIconBitmap;
      userIcon = userIconBitmap;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<MapBloc, MapState>(
        builder: (context, state) {
          return state.maybeWhen(
            initial: () => const Center(child: Text("Initializing...")),
            loading: () => const Center(child: CircularProgressIndicator()),
            loaded: (cameras, userLat, userLng) {
              if (cameraIcon == null || userIcon == null) {
                return const Center(child: CircularProgressIndicator());
              }
              final markers = cameras.map((camera) {
                return Marker(
                  markerId: MarkerId(camera.id),
                  position: LatLng(camera.latitude, camera.longitude),
                  icon: cameraIcon!,
                  infoWindow: InfoWindow(title: 'Camera ${camera.id}'),
                  onTap: () => showImageDialog(context, camera.imageUrl),
                );
              }).toSet();

              if (userLat != null && userLng != null) {
                markers.add(
                  Marker(
                    markerId: const MarkerId('user'),
                    position: LatLng(userLat, userLng),
                    icon: userIcon!,
                    infoWindow: const InfoWindow(
                      title: AppStrings.yourLocation,
                    ),
                  ),
                );

                Future.microtask(() {
                  _mapController?.animateCamera(
                    CameraUpdate.newLatLng(LatLng(userLat, userLng)),
                  );
                });
              }

              return Stack(
                children: [
                  GoogleMap(
                    onMapCreated: (controller) {
                      _mapController = controller;
                    },
                    myLocationButtonEnabled: false,
                    zoomControlsEnabled: false,
                    mapToolbarEnabled: false,
                    initialCameraPosition: CameraPosition(
                      target: LatLng(
                        userLat ?? cameras.first.latitude,
                        userLng ?? cameras.first.longitude,
                      ),
                      zoom: 16,
                    ),
                    markers: markers,
                  ),
                  Positioned(
                    bottom: 30,
                    right: 15,
                    child: FloatingActionButton(
                      onPressed: () {
                        context.read<MapBloc>().add(
                          const MapEvent.fetchUserLocation(),
                        );
                      },
                      backgroundColor: AppColors.primary,
                      shape: const CircleBorder(),
                      elevation: 4,
                      child: SvgPicture.asset(AppIcons.currentLocation),
                    ),
                  ),
                ],
              );
            },
            error: (msg) => Center(child: Text(msg)),
            orElse: () => const SizedBox.shrink(),
          );
        },
      ),
    );
  }
}
