import 'package:app_atlatic_bank/pages/home_page.dart';
import 'package:app_atlatic_bank/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: AppColors.primaryBlue,
        scaffoldBackgroundColor: AppColors.offWhite,
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: AppColors.washedBlue,
          error: AppColors.error,
        ),
        textTheme: GoogleFonts.dmSansTextTheme(),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
