import 'package:bel_home_ui/app/view/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BannerIndicatorWidget extends StatelessWidget {
  const BannerIndicatorWidget({
    super.key,
    required this.itemCount,
    required this.currentIndex,
    required this.onDotTapped,
  });

  final int itemCount;
  final int currentIndex;
  final Function(int) onDotTapped;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(itemCount, (index) {
        return GestureDetector(
          onTap: () => onDotTapped(index),
          child: Container(
            width: currentIndex == index ? 25.w : 5.w,
            height: 5.h,
            margin: EdgeInsets.symmetric(horizontal: 4.w),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4.r),
              color:
                  currentIndex == index
                      ? AppColors.whiteBackgroundColour
                      : AppColors.iconGreyColour.withValues(alpha: 0.5),
            ),
          ),
        );
      }),
    );
  }
}
