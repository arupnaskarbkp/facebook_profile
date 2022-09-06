import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';


var fontSize6 = 6.sp;
var fontSize7 = 7.sp;
var fontSize8 = 8.sp;
var fontSize9 = 9.sp;
var fontSize10 = 10.sp;
var fontSize11 = 11.sp;
var fontSize12 = 12.sp;
var fontSize13 = 13.sp;
var fontSize14 = 14.sp;
var fontSize15 = 15.sp;
var fontSize16 = 16.sp;
var fontSize17 = 17.sp;
var fontSize18 = 18.sp;
var fontSize19 = 19.sp;
var fontSize20 = 20.sp;
var fontSize21 = 21.sp;
var fontSize22 = 22.sp;
var fontSize23 = 23.sp;
var fontSize24 = 24.sp;

TextStyle _getTextStyle(double fontSize, Color color,  double letterSpacing, FontWeight fontWeight,) {
  return GoogleFonts.lato(textStyle: TextStyle(fontSize: fontSize, color: color, letterSpacing: letterSpacing, fontWeight: fontWeight,));
}


TextStyle regular({required Color color, required double fontSize}) {
  return _getTextStyle(fontSize,color,0.2.w,FontWeight.w400);
}

TextStyle bold({required Color color, required double fontSize}) {
  return _getTextStyle(fontSize, color, 0.2.w, FontWeight.w700);
}
