import 'package:bel_home_ui/app/view/styles/app_colors.dart';
import 'package:bel_home_ui/app/view/widgets/svg.dart';
import 'package:bel_home_ui/core/extensions/widget_extensions.dart';
import 'package:bel_home_ui/gen/fonts.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({
    required this.buttonText,
    this.iconPath,
    required this.pitchText,
    this.withIcon = false,
    required this.imagePath,
    this.buttonColor = AppColors.primaryColour,
    this.buttonTextColor = const Color(0xffEEF5FC),
    super.key,
  });

  final String buttonText;
  final String pitchText;
  final String? iconPath;
  final String imagePath;
  final bool withIcon;
  final Color buttonColor;
  final Color buttonTextColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.h,
      width: 378.w,
      decoration: BoxDecoration(
        color: AppColors.whiteBackgroundColour,
        borderRadius: BorderRadius.circular(15.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'New',
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w700,
                    color: AppColors.highlightColour,
                    fontFamily: FontFamily.montserrat,
                  ),
                ),
                Container(
                  height: 28.h,
                  width: 133.w,
                  decoration: BoxDecoration(
                    color: buttonColor,
                    borderRadius: BorderRadius.circular(15.r),
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        if (withIcon && iconPath != null) ...[
                          SvgIconWidget(
                            icon: iconPath!,
                            width: 24.w,
                            height: 24.h,
                            color: buttonTextColor,
                          ),
                          Gap(16.w),
                        ],
                        Gap(2.w),
                        Text(
                          buttonText,
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700,
                            color: buttonTextColor,
                            fontFamily: FontFamily.montserrat,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Text(
                  pitchText,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColors.secondaryTextColour,
                    fontFamily: FontFamily.montserrat,
                  ),
                ),
              ],
            ).withSymmetricPadding(vertical: 14.w),
          ),
          Image.asset(imagePath, fit: BoxFit.scaleDown, width: 135.w),
        ],
      ).withOnlyPadding(left: 16.w),
    );
  }
}
