import 'package:bel_home_ui/app/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      // App Bar Theme
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.primaryColour,
        foregroundColor: Colors.white,
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
      ),

      // Card Theme
      cardTheme: CardTheme(
        color: AppColors.whiteBackgroundColour,
        elevation: 2,
        shadowColor: Colors.black.withOpacity(0.1),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),

      // Divider Theme
      dividerTheme: const DividerThemeData(
        color: Colors.grey,
        thickness: 1,
        // space: 1,
      ),

      expansionTileTheme: ExpansionTileThemeData(),

      // // Bottom Navigation Bar Theme
      // bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      //   backgroundColor: Colors.white,
      //   selectedItemColor: accentOrange,
      //   unselectedItemColor: Colors.white70,
      //   type: BottomNavigationBarType.fixed,
      //   elevation: 8,
      // ),

      // Scaffold Background Color
      scaffoldBackgroundColor: AppColors.whiteBackgroundColour,
    );
  }
}
