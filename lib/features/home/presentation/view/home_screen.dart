import 'package:bel_home_ui/app/view/styles/styles.dart';
import 'package:bel_home_ui/core/extensions/extensions.dart';
import 'package:bel_home_ui/features/home/presentation/widget/widgets.dart';
import 'package:bel_home_ui/features/home/data/data.dart';
import 'package:bel_home_ui/features/home/presentation/state/state.dart';
import 'package:bel_home_ui/features/drawer/presentation/view/side_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:flutter_animate/flutter_animate.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final BannerState _bannerState = BannerState();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void dispose() {
    _bannerState.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: AppColors.primaryColour,
      drawer: const SideMenu(),
      body: Column(
        children: [
          Gap(32),
          HomeAppBar(
            onMenuPressed: () {
              _scaffoldKey.currentState?.openDrawer();
            },
          ),
          Gap(24),
          Column(
            children: [
              BalanceCard(),
              Gap(16.h),
              HomeBannerWidget(bannerState: _bannerState),
              Gap(9.h),
              ListenableBuilder(
                listenable: _bannerState,
                builder: (context, _) {
                  return BannerIndicatorWidget(
                    itemCount: BannerData.banners.length,
                    currentIndex: _bannerState.currentIndex,
                    onDotTapped: (index) {
                      // You can add carousel controller here if needed
                    },
                  );
                },
              ),
              Gap(9.h),
            ],
          ).withSymmetricPadding(horizontal: 24.w),

          Expanded(
            child: RecentTransactionWidget()
                .animate()
                .slide(
                  begin: Offset(0, 1.0),
                  duration: 1000.ms,
                  curve: Curves.easeOutCubic,
                )
                .fadeIn(duration: 800.ms),
          ),
        ],
      ),
    );
  }
}
