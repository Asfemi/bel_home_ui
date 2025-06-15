import 'package:bel_home_ui/app/view/styles/app_colors.dart';
import 'package:bel_home_ui/app/view/widgets/svg.dart';
import 'package:bel_home_ui/core/extensions/widget_extensions.dart';
import 'package:bel_home_ui/gen/assets.gen.dart';
import 'package:bel_home_ui/gen/fonts.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class BalanceCard extends StatelessWidget {
  const BalanceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            color: AppColors.cardOverlayColour,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40.r),
              topRight: Radius.circular(40.r),
              bottomLeft: Radius.circular(20.r),
              bottomRight: Radius.circular(20.r),
            ),
            border: Border.all(
              strokeAlign: BorderSide.strokeAlignOutside,
              color: AppColors.borderOverlayColour.withValues(alpha: 0.3),
            ),
          ),
          height: 215.h,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                children: [
                  Container(
                    height: 49.h,
                    width: 197.w,
                    decoration: BoxDecoration(
                      color: AppColors.buttonOverlayColour,
                      borderRadius: BorderRadius.circular(40.r),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgIconWidget(icon: Assets.icons.send2, size: 24.h),
                        Gap(3.w),
                        Text(
                          'Send',
                          style: Theme.of(
                            context,
                          ).textTheme.titleMedium!.copyWith(
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                            fontSize: 14.sp,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Gap(17.w),
                  Container(
                    height: 49.h,
                    width: 49.w,
                    decoration: BoxDecoration(
                      color: AppColors.buttonOverlayColour,
                      shape: BoxShape.circle,
                    ),
                    child: SvgIconWidget(
                      icon: Assets.icons.add,
                      width: 16.w,
                      height: 16.h,
                    ).withAllPadding(9.w),
                  ),
                  Gap(17.w),
                  Container(
                    height: 49.h,
                    width: 49.w,
                    decoration: BoxDecoration(
                      color: AppColors.buttonOverlayColour,
                      shape: BoxShape.circle,
                    ),
                    child: SvgIconWidget(
                      icon: Assets.icons.refresh2,
                      width: 16.w,
                      height: 16.h,
                    ).withAllPadding(9.w),
                  ),
                ],
              ),
            ],
          ).withSymmetricPadding(vertical: 19.h, horizontal: 23.w),
        ),

        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: Container(
            height: 132.h,
            decoration: BoxDecoration(
              color: AppColors.secoundaryColour,
              borderRadius: BorderRadius.circular(40.r),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 28.h,
                      width: 100.w,
                      decoration: BoxDecoration(
                        color: AppColors.whiteBackgroundColour.withValues(
                          alpha: 0.05,
                        ),
                        borderRadius: BorderRadius.circular(25.r),
                        border: Border.all(
                          color: AppColors.borderOverlayColour.withValues(
                            alpha: 0.12,
                          ),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius: 10.r,
                            child: Image.asset(
                              Assets.images.user.path,
                              fit: BoxFit.scaleDown,
                            ),
                          ),
                          Gap(4.w),
                          Text(
                            'GBP',
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff031E45),
                              fontFamily: FontFamily.montserrat,
                            ),
                          ),
                          Spacer(),
                          SvgIconWidget(
                            icon: Assets.icons.arrowDown,
                            color: AppColors.primaryTextColour,
                          ),
                        ],
                      ).withSymmetricPadding(vertical: 4.h, horizontal: 8.w),
                    ),
                    Spacer(),
                    SvgIconWidget(
                      icon: Assets.icons.eyeSlash,
                      color: AppColors.primaryTextColour,
                    ),
                  ],
                ),

                Text(
                  'Total balance',
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColors.primaryColour,
                    fontFamily: FontFamily.montserrat,
                  ),
                ),

                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: '£ 0',
                        style: TextStyle(
                          fontSize: 28.sp,
                          fontWeight: FontWeight.w700,
                          color: AppColors.primaryColour,
                          fontFamily: FontFamily.montserrat,
                        ),
                      ),
                      TextSpan(
                        text: '.00',
                        style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w500,
                          color: AppColors.secondaryTextColour,
                          fontFamily: FontFamily.montserrat,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ).withSymmetricPadding(vertical: 18.h, horizontal: 24.w),
          ),
        ),
      ],
    );
  }
}
