import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color kPrimaryColor = const Color(0xFF5C40CC);
Color kBlackColor = const Color(0xFF1F1449);
Color kWhiteColor = const Color(0xFFFFFFFF);
Color kGreyColor = const Color(0xFF9698A9);
Color kGreenColor = const Color(0xFF0EC3AE);
Color kRedColor = const Color(0xFFEB70A5);
Color kBackgroundColor = const Color(0xFFFAFAFA);
Color kInactiveColor = const Color(0xFFDBD7EC);
Color kTransparentColor = Colors.transparent;
Color kUnavailableColor = Color(0xFFEBECF1);
Color kAvailableColor = Color(0xFFE0D9FF);

double defaultMargin = 24.0;
double defaultRadius = 17.0;

// TextStyle ===========================================
TextStyle blackStyle = GoogleFonts.poppins(
  color: kBlackColor,
);

TextStyle whiteStyle = GoogleFonts.poppins(
  color: kWhiteColor,
);

TextStyle greyStyle = GoogleFonts.poppins(
  color: kGreyColor,
);

TextStyle greenStyle = GoogleFonts.poppins(
  color: kGreenColor,
);

TextStyle redStyle = GoogleFonts.poppins(
  color: kRedColor,
);

TextStyle purpleStyle = GoogleFonts.poppins(
  color: kPrimaryColor,
);

// Font Weight =============================
FontWeight light = FontWeight.w300;
FontWeight regular = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semibold = FontWeight.w600;
FontWeight bold = FontWeight.w700;
FontWeight extraBold = FontWeight.w800;
FontWeight black = FontWeight.w900;
