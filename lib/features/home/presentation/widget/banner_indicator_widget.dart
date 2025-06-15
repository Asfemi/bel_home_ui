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
            width: 8.w,
            height: 8.h,
            margin: EdgeInsets.symmetric(horizontal: 4.w),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color:
                  currentIndex == index
                      ? AppColors.primaryColour
                      : AppColors.primaryColour.withValues(alpha: 0.3),
            ),
          ),
        );
      }),
    );
  }
}
