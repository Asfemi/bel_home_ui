import 'package:bel_home_ui/app/view/styles/app_colors.dart';
import 'package:bel_home_ui/core/extensions/widget_extensions.dart';
import 'package:bel_home_ui/gen/assets.gen.dart';
import 'package:bel_home_ui/gen/fonts.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class AppDrawerHeader extends StatelessWidget {
  const AppDrawerHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.h,
      // padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
      decoration: BoxDecoration(
        color: AppColors.primaryColour,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 16.r,
            backgroundColor: Colors.white,
            backgroundImage: AssetImage(
              Assets.images.flag.path,
            ), // Add your profile image here
          ),
          Gap(10.w),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'David Williams',

                style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColors.whiteBackgroundColour,
                  fontFamily: FontFamily.montserrat,
                ),
              ),
              Text(
                'davidwilliams@gmail.com',
                style: TextStyle(
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w400,
                  color: AppColors.whiteBackgroundColour,
                  fontFamily: FontFamily.montserrat,
                ),
              ),
            ],
          ),
        ],
      ).withAllPadding(10.w),
    ).withAllPadding(16.w);
  }
}
