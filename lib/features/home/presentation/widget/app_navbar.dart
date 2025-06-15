import 'package:bel_home_ui/app/view/styles/app_colors.dart';
import 'package:bel_home_ui/app/view/widgets/svg.dart';
import 'package:bel_home_ui/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class AppNavbar extends StatefulWidget {
  final int selectedIndex;
  final Function(int) onTabSelected;

  const AppNavbar({
    super.key,
    required this.selectedIndex,
    required this.onTabSelected,
  });

  @override
  State<AppNavbar> createState() => _AppNavbarState();
}

class _AppNavbarState extends State<AppNavbar> {
  final List<_NavBarItem> items = [
    _NavBarItem(icon: Assets.icons.home2, label: 'Home'),
    _NavBarItem(icon: Assets.icons.send2, label: 'Send'),
    _NavBarItem(icon: Assets.icons.wallet3, label: 'Wallet'),
    _NavBarItem(icon: Assets.icons.explore1, label: 'Explore'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
      // padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 12.h),
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: AppColors.primaryColour,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children:
            items.asMap().entries.map((entry) {
              final index = entry.key;
              final item = entry.value;
              final isSelected = index == widget.selectedIndex;

              return GestureDetector(
                onTap: () => widget.onTabSelected(index),
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  padding: EdgeInsets.symmetric(
                    horizontal: 12.w,
                    vertical: 8.h,
                  ),
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    border:
                        isSelected
                            ? Border(
                              top: BorderSide(
                                color: AppColors.secoundaryColour,
                                width: 2.h,
                              ),
                            )
                            : null,
                    color:
                        isSelected
                            ? const Color(0xFF1F2F51)
                            : Colors.transparent,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Gap(10.h),
                      SvgIconWidget(
                        icon: item.icon,
                        height: 24.h,
                        width: 24.w,
                        color:
                            isSelected
                                ? AppColors
                                    .secoundaryColour // orange icon
                                : const Color(0xFFBBBBBB),
                      ),
                      Gap(6.h),
                      Text(
                        item.label,
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight:
                              isSelected ? FontWeight.bold : FontWeight.normal,
                          color:
                              isSelected
                                  ? AppColors.secoundaryColour
                                  : const Color(0xFFBBBBBB),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }).toList(),
      ),
    );
  }
}

class _NavBarItem {
  final String icon;
  final String label;

  _NavBarItem({required this.icon, required this.label});
}
