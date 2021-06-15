import 'package:flutter/material.dart';
import 'package:flutter_clubhouse_ui/screens/home_page.dart';
import 'package:flutter_clubhouse_ui/style/color/custom_colors.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Clubhouse UI Clone',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: CustomColor.background,
        ),
        scaffoldBackgroundColor: CustomColor.background,
        primarySwatch: Colors.blue,
        primaryColor: Colors.white,
        accentColor: Colors.green,
        iconTheme: const IconThemeData(color: Colors.black),
        fontFamily: GoogleFonts.montserrat().fontFamily,
        textTheme: GoogleFonts.montserratTextTheme(),
      ),
      home: HomePage(),
    );
  }
}
