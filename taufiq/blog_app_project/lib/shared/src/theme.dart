import 'package:blog_app_project/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final _kDefaultTextStyle = GoogleFonts.poppins();

final kDefaultTextTheme = TextTheme(
  headline1: _kDefaultTextStyle.copyWith(
      fontSize: 98, fontWeight: FontWeight.w300, letterSpacing: -1.5),
  headline2: _kDefaultTextStyle.copyWith(
      fontSize: 61, fontWeight: FontWeight.w300, letterSpacing: -0.5),
  headline3:
      _kDefaultTextStyle.copyWith(fontSize: 49, fontWeight: FontWeight.w500),
  headline4: _kDefaultTextStyle.copyWith(
    fontSize: 35,
    fontWeight: FontWeight.w700,
    letterSpacing: 0.25,
    color: kBlackColor.withOpacity(kEmphasisHigh),
  ),
  headline5:
      _kDefaultTextStyle.copyWith(fontSize: 24, fontWeight: FontWeight.w700),
  headline6: _kDefaultTextStyle.copyWith(
      fontSize: 18, fontWeight: FontWeight.w500, letterSpacing: 0.15),
  subtitle1: _kDefaultTextStyle.copyWith(
      fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0.15),
  subtitle2: _kDefaultTextStyle.copyWith(
      fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 0.1),
  bodyText1: _kDefaultTextStyle.copyWith(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.5,
    color: kBlackColor.withOpacity(kEmphasisLow),
  ),
  bodyText2: _kDefaultTextStyle.copyWith(
      fontSize: 14, fontWeight: FontWeight.w400, letterSpacing: 0.25),
  button: _kDefaultTextStyle.copyWith(
      fontSize: 14, fontWeight: FontWeight.w600, letterSpacing: 1.25),
  caption: _kDefaultTextStyle.copyWith(
      fontSize: 12, fontWeight: FontWeight.w400, letterSpacing: 0.4),
  overline: _kDefaultTextStyle.copyWith(
      fontSize: 10, fontWeight: FontWeight.w400, letterSpacing: 1.5),
);
