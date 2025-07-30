import 'package:codeface/core/network/api_client.dart';
import 'package:codeface/features/map/data/map_repository_impl.dart';
import 'package:codeface/features/map/domain/get_user_location.dart';
import 'package:codeface/features/map/domain/repository.dart';
import 'package:codeface/features/map/domain/usecase.dart';
import 'package:codeface/features/map/features/bloc/map_bloc.dart';
import 'package:codeface/features/splash/bloc/splash_bloc.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

void setupLocator() {
  locator.registerFactory(() => SplashCubit());

  /////////////Map/////////////////////////
  locator.registerLazySingleton(() => Dio());
  locator.registerLazySingleton(() => ApiClient(locator<Dio>()));
  locator.registerLazySingleton<MapRepository>(
    () => MapRepositoryImpl(locator()),
  );
  locator.registerLazySingleton(() => GetTrafficMapsUseCase(locator()));
  locator.registerLazySingleton(() => GetUserLocationUseCase());

locator.registerFactory(() => MapBloc(
  locator<GetTrafficMapsUseCase>(),
  locator<GetUserLocationUseCase>(),
));
}
