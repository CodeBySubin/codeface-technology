import 'package:cached_network_image/cached_network_image.dart';
import 'package:codeface/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NetworkImageWidget extends StatelessWidget {
  final String url;
  final double? width;
  final double? height;
  final BoxFit? fit;

  const NetworkImageWidget({
    super.key,
    required this.url,
    this.width,
    this.height,
    this.fit = BoxFit.fill,
  });

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: url,
      imageBuilder: (context, imageProvider) => Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.r),
          image: DecorationImage(fit:fit, image: imageProvider),
        ),
      ),
      placeholder: (context, url) => Container(
        width: width,
        height: height,
        color: Colors.white,
        child: const Center(child: CircularProgressIndicator()),
      ),
   errorWidget: (context, url, error) => Container(
  width: width,
  height: height,
  color: AppColors.white,
  alignment: Alignment.center,
  child: const Text(
    'No image found',
    style: TextStyle(
      color: Colors.white,
      fontSize: 14,
      fontWeight: FontWeight.w500,
    ),
  ),
),

    );
  }
}
