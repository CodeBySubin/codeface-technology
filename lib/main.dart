import 'package:codeface/core/constants/app_strings.dart';
import 'package:codeface/core/di/di.dart';
import 'package:codeface/core/routes/route_genarator.dart';
import 'package:codeface/core/theme/app_theme.dart';
import 'package:codeface/features/map/features/bloc/map_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  setupLocator(); 
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MultiBlocProvider(
          providers: [
            BlocProvider<MapBloc>(
              create: (context) => locator<MapBloc>(),
            ),
          ],
          child: MaterialApp.router(
            theme: AppTheme.lightTheme,
            debugShowCheckedModeBanner: false,
            title: AppStrings.appName,
            routerConfig: AppRouter.router,
          ),
        );
      },
    );
  }
}
