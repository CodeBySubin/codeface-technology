import 'package:cached_network_image/cached_network_image.dart';
import 'package:codeface/core/constants/app_colors.dart';
import 'package:codeface/core/constants/app_icons.dart';
import 'package:codeface/core/widgets/loader.dart';
import 'package:codeface/features/map/features/bloc/map_bloc.dart';
import 'package:codeface/features/map/features/bloc/map_event.dart';
import 'package:codeface/features/map/features/bloc/map_state.dart';
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
      const ImageConfiguration(size: Size(18, 18)),
      'assets/images/camera.png',
    );
    final userIconBitmap = await BitmapDescriptor.fromAssetImage(
      const ImageConfiguration(size: Size(48, 48)),
      'assets/images/Image.png',
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
          return state.when(
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
                  onTap: () => _showImageDialog(context, camera.imageUrl),
                );
              }).toSet();

              if (userLat != null && userLng != null) {
                markers.add(
                  Marker(
                    markerId: const MarkerId('user'),
                    position: LatLng(userLat, userLng),
                    icon: userIcon!,
                    infoWindow: const InfoWindow(title: 'Your Location'),
                  ),
                );

                Future.microtask(() {
                  _mapController?.animateCamera(
                    CameraUpdate.newLatLng(
                      LatLng(userLat, userLng),
                    ),
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
                    myLocationEnabled: false,
                    zoomControlsEnabled: true,
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
          );
        },
      ),
    );
  }


void _showImageDialog(BuildContext context, String imageUrl) {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: const Text("Live Traffic Image"),
      content: SizedBox(
        height: 250.h, 
        child: CachedNetworkImage(
          imageUrl: imageUrl,
          fit: BoxFit.cover,
          placeholder: (context, url) => loader(),
          errorWidget: (context, url, error) => const Icon(Icons.error),
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text("Close"),
        ),
      ],
    ),
  );
}

}
