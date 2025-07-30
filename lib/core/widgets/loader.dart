import 'package:codeface/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

Widget loader({Color color = AppColors.primary}) {
  return Center(child: CircularProgressIndicator(color: color));
}
