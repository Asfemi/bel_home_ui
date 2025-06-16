import 'package:bel_home_ui/app/view/styles/app_colors.dart';
import 'package:bel_home_ui/app/view/widgets/svg.dart';
import 'package:bel_home_ui/core/extensions/widget_extensions.dart';
import 'package:bel_home_ui/gen/assets.gen.dart';
import 'package:bel_home_ui/gen/fonts.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:badges/badges.dart' as badges;

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  final VoidCallback? onMenuPressed;
  const HomeAppBar({super.key, this.onMenuPressed});

  @override
  Size get preferredSize => Size.fromHeight(100.h);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: onMenuPressed,
          child: Container(
            height: 52.h,
            width: 52.w,

            decoration: BoxDecoration(
              color: AppColors.buttonOverlayColour.withValues(alpha: 0.5),

              shape: BoxShape.circle,
            ),
            child: Padding(
              padding: EdgeInsets.all(2.w),
              child: Image.asset(
                Assets.images.flag.path,
                fit: BoxFit.scaleDown,
                height: 38.h,
                width: 38.w,
              ),
            ),
          ),
        ),

        Spacer(),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Welcome.',
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.w400,
                color: AppColors.whiteBackgroundColour,
                fontFamily: FontFamily.montserrat,
              ),
            ),
            Text(
              'Martin Jones',
              style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.w700,
                color: AppColors.whiteBackgroundColour,
                fontFamily: FontFamily.montserrat,
              ),
            ),
          ],
        ),
        Spacer(),
        badges.Badge(
          badgeContent: Text(
            '5',
            style: TextStyle(fontSize: 12.sp, color: Colors.white),
          ), // No content inside the badge, just the dot
          badgeStyle: badges.BadgeStyle(
            badgeColor: AppColors.badgeColour,
            shape: badges.BadgeShape.circle,
            padding: EdgeInsets.all(6.w),
          ),
          position: badges.BadgePosition.topEnd(
            top: -10.w,
            end: -8.h,
          ), // Adjust position as needed
          child: Container(
            height: 36.h,
            width: 36.w,
            decoration: BoxDecoration(
              color: AppColors.whiteBackgroundColour,
              borderRadius: BorderRadius.circular(10.r),
            ),

            child: SvgIconWidget(
              icon: Assets.icons.notification,
              color: AppColors.primaryTextColour,
              height: 20.h,
              width: 15.w,
            ).withAllPadding(6.w),
          ),
        ),
      ],
    ).withSymmetricPadding(horizontal: 24.w);
  }
}
