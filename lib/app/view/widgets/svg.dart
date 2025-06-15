
import 'package:bel_home_ui/app/view/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';



class SvgIconWidget extends StatelessWidget {
  const SvgIconWidget({
    required this.icon,
    this.onTap,
    this.size,
    this.height,
    this.width,
    this.color,
    super.key,
  });

  final String icon;
  final double? size;
  final double? height;
  final double? width;
  final VoidCallback? onTap;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SvgPicture.asset(
        icon,
        height: height == null ? height : size  ?? 20.h ,
        width:  width == null ? width : size ?? 20.w,
        color: color ?? AppColors.iconGreyColour,
      ),
    );
  }
}

