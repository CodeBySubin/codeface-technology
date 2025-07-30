import 'package:codeface/core/di/di.dart';
import 'package:codeface/core/routes/app_routes.dart';
import 'package:codeface/features/splash/bloc/splash_bloc.dart';
import 'package:codeface/features/splash/bloc/splash_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:codeface/core/constants/app_colors.dart';
import 'package:codeface/core/constants/app_icons.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  BlocListener<SplashCubit, SplashState>(
        listener: (context, state) {
          state.maybeWhen(
            loaded: () => context.go(AppRoutes.map),
            orElse: () {},
          );
        },
        child: Scaffold(
          backgroundColor: AppColors.primary,
          body: Center(child: SvgPicture.asset(AppIcons.logo)),
      ),
    );
  }
}
