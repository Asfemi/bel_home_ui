import 'package:bel_home_ui/app/view/styles/app_colors.dart';
import 'package:bel_home_ui/app/view/styles/app_theme.dart';
import 'package:bel_home_ui/core/utilities/utilities.dart';
import 'package:bel_home_ui/features/home/presentation/view/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: AppColors.primaryColour,
        statusBarIconBrightness: Brightness.light,
        systemNavigationBarColor: AppColors.whiteBackgroundColour,
        systemNavigationBarIconBrightness: Brightness.light,
      ),
    );
    return ScreenUtilInit(
      useInheritedMediaQuery: true,
      designSize: const Size(428, 926),
      minTextAdapt: true,
      builder:
          (context, child) => MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: AppTheme.lightTheme,
            home: const HomeScreen(),
            navigatorKey: AppGlobal.navigatorKey,
          ),
    );
  }
}
