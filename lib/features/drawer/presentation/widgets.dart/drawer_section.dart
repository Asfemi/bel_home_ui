import 'package:bel_home_ui/app/view/styles/app_colors.dart';
import 'package:bel_home_ui/app/view/widgets/svg.dart';
import 'package:bel_home_ui/features/drawer/domain/model/drawer_item.dart';
import 'package:bel_home_ui/gen/fonts.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:animated_toggle_switch/animated_toggle_switch.dart';

class DrawerSection extends StatelessWidget {
  const DrawerSection({required this.items, required this.title, super.key});

  final String title;
  final List<DrawerItem> items;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        dividerColor: AppColors.borderOverlayColour.withValues(alpha: 0.09),
      ),
      child: ExpansionTile(
        initiallyExpanded: true,

        title: Text(
          title,
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w600,
            color: AppColors.primaryColour,
            fontFamily: FontFamily.montserrat,
          ),
        ),
        children:
            items.map((item) {
              return ListTile(
                leading:
                    item.icon != null
                        ? SvgIconWidget(
                          icon: item.icon!,
                          color: AppColors.primaryColour,
                          height: 18.h,
                          width: 18.w,
                        )
                        : null,
                title: Text(
                  item.title,
                  style: TextStyle(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColors.primaryColour,
                    fontFamily: FontFamily.montserrat,
                  ),
                ),
                trailing:
                    item.hasSwitch
                        ? AnimatedToggleSwitch<bool>.size(
                          current: true,
                          values: const [false, true],
                          onChanged: (value) {},
                          height: 18.h,
                          indicatorSize: Size.square(12.r * 2),
                          customIconBuilder:
                              (context, local, global) => SizedBox(),
                          style: ToggleStyle(
                            backgroundColor: Colors.grey,
                            indicatorColor: AppColors.whiteBackgroundColour,
                            borderColor: Colors.transparent,
                            borderRadius: BorderRadius.circular(15.r),
                            boxShadow: [
                              // BoxShadow(
                              //   color: Colors.black26,
                              //   spreadRadius: 1,
                              //   blurRadius: 2,
                              //   offset: Offset(0, 1.5),
                              // ),
                            ],
                          ),
                          styleBuilder:
                              (b) => ToggleStyle(
                                backgroundColor:
                                    b
                                        ? AppColors.secoundaryColour
                                        : Colors.grey, // Active track color
                              ),
                        )
                        : null,
                onTap: () {
                  // Handle item tap
                },
              );
            }).toList(),
      ),
    );
  }
}
