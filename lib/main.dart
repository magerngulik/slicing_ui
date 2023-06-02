import 'package:google_fonts/google_fonts.dart';
import 'package:slicing/core.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      navigatorKey: Get.navigatorKey,
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.grey),
          useMaterial3: true,
          buttonTheme: const ButtonThemeData(
              textTheme: ButtonTextTheme.normal, buttonColor: Colors.green),
          textTheme: TextTheme(
            headlineSmall: GoogleFonts.montserrat(
                fontSize: 16, fontWeight: FontWeight.w600),
            headlineMedium: GoogleFonts.montserrat(
                fontSize: 18, fontWeight: FontWeight.w500),
            displaySmall: GoogleFonts.montserrat(
                fontSize: 16, fontWeight: FontWeight.w500),
            displayMedium: GoogleFonts.montserrat(
                fontSize: 20, fontWeight: FontWeight.w500),
            bodySmall: GoogleFonts.montserrat(
                fontSize: 12, fontWeight: FontWeight.w500),
            titleSmall: GoogleFonts.montserrat(
                fontSize: 16, fontWeight: FontWeight.w400),
          )),
      home: const OrderDetailView(),
    );
  }
}
