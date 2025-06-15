import 'package:bel_home_ui/app/view/styles/app_colors.dart';
import 'package:bel_home_ui/features/home/presentation/widget/banner_widget.dart';
import 'package:bel_home_ui/features/home/presentation/data/banner_data.dart';
import 'package:bel_home_ui/features/home/presentation/state/banner_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart'
    as carousel;

class HomeBannerWidget extends StatefulWidget {
  final BannerState bannerState;

  const HomeBannerWidget({super.key, required this.bannerState});

  @override
  State<HomeBannerWidget> createState() => _HomeBannerWidgetState();
}

class _HomeBannerWidgetState extends State<HomeBannerWidget> {
  @override
  Widget build(BuildContext context) {
    return carousel.FlutterCarousel(
      items:
          BannerData.banners.map((banner) {
            return BannerWidget(
              buttonText: banner['buttonText'],
              pitchText: banner['pitchText'],
              imagePath: banner['imagePath'],
              withIcon: banner['withIcon'] ?? false,
              iconPath: banner['iconPath'],
              buttonColor: banner['buttonColor'] ?? AppColors.primaryColour,
              buttonTextColor:
                  banner['buttonTextColor'] ?? const Color(0xffEEF5FC),
            );
          }).toList(),
      options: carousel.CarouselOptions(
        height: 120.h,
        viewportFraction: 1.0,
        padEnds: true,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 5),
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: false,
        onPageChanged: (index, reason) {
          widget.bannerState.updateIndex(index);
        },
      ),
    );
  }
}
