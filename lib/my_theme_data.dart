import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemeData{
  static const Color primary=Color(0XFFB7935F);
  static const Color black=Color(0XFF242424);
  static ThemeData lightTheme=ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      iconTheme:IconThemeData(
        color: primary,
      ),
      centerTitle: true,
      elevation: 0.0,
      backgroundColor: Colors.transparent,

    ),
    textTheme: TextTheme(

      bodyLarge: GoogleFonts.elMessiri(
        fontSize: 30,
        color:black,
        fontWeight: FontWeight.bold,
      ),
      bodyMedium: GoogleFonts.elMessiri(
        fontSize: 25,
        color: black,
        fontWeight: FontWeight.w700,
      ),
      bodySmall: GoogleFonts.elMessiri(
        fontSize: 20,
        color: Color(0XFFFFFFFF),
        fontWeight: FontWeight.w100,
      ),

    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.shifting,
      backgroundColor: primary,
      selectedItemColor: black,
      unselectedItemColor: Colors.white,

    )
  );
}
