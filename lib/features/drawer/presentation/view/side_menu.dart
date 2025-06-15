import 'package:bel_home_ui/app/view/styles/app_colors.dart';
import 'package:bel_home_ui/app/view/widgets/svg.dart';
import 'package:bel_home_ui/core/extensions/context_extensions.dart';
import 'package:bel_home_ui/features/drawer/data/data.dart';
import 'package:bel_home_ui/features/drawer/presentation/widgets.dart/widgets.dart';
import 'package:bel_home_ui/gen/fonts.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: context.screenWidth * 0.75,
      backgroundColor: AppColors.whiteBackgroundColour,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          Gap(32.h),
          AppDrawerHeader(),
          DrawerSection(title: 'Account', items: accountItems),
          DrawerSection(title: 'Finances', items: financeItems),
          DrawerSection(title: 'Security', items: securityItems),
          DrawerSection(title: 'Others', items: othersItems),
          ListTile(
            leading: SvgIconWidget(
              icon: logoutItem.icon!,
              color: AppColors.badgeColour,
              height: 18.h,
              width: 18.w,
            ),
            title: Text(
              logoutItem.title,
              style: TextStyle(
                fontSize: 13.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.badgeColour,
                fontFamily: FontFamily.montserrat,
              ),
            ),
            onTap: () {
              // Handle logout
            },
          ),
        ],
      ),
    );
  }
}
