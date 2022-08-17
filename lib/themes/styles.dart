import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData appTheme() {
  return ThemeData(
    textTheme: GoogleFonts.promptTextTheme(),
    // สีหลัก
    primaryColor: Color.fromARGB(255, 180, 121, 240), 
    // สีพวกปุ่ม
    accentColor: Colors.purple,
    hintColor: Colors.lightBlue,
    buttonColor: Colors.white,
    scaffoldBackgroundColor: Colors.white,
    // การวาดกล่องต่าง ๆ
    canvasColor: Colors.white
  );
}
