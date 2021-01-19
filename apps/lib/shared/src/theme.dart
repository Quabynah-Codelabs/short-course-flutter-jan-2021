import 'package:apps/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// Fonts
final _kTitleFontFamily = GoogleFonts.poppins().fontFamily;
final _kBodyFontFamily = GoogleFonts.rubik().fontFamily;

/// Light theme
ThemeData themeData(BuildContext context) => ThemeData(
      selectedRowColor: kSecondaryColor,
      appBarTheme: appBarTheme(kBackgroundColor, kBlackColor),
      disabledColor: kDisabledColor,
      errorColor: kErrorColor,
      toggleableActiveColor: kPrimaryColor,
      dividerTheme: DividerThemeData(
        thickness: kSpacingNone,
        color: kDisabledColor.withOpacity(kOpacityX70),
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(kSpacingX8),
        ),
        backgroundColor: kSecondaryColor,
      ),
      inputDecorationTheme: InputDecorationTheme(
        focusColor: kPrimaryColor,
        border: InputBorder.none,
        labelStyle: TextStyle(
          color: kBlackColor,
          fontFamily: _kBodyFontFamily,
        ),
        hintStyle: TextStyle(
          color: kPrimaryColor,
          fontFamily: _kBodyFontFamily,
          fontWeight: FontWeight.normal,
        ),
        suffixStyle: TextStyle(
          color: kPrimaryColor,
          fontFamily: _kBodyFontFamily,
          fontWeight: FontWeight.normal,
        ),
        fillColor: kDisabledColor,
        filled: true,
      ),
      tabBarTheme: TabBarTheme(
        labelColor: kPrimaryColor,
        indicatorSize: TabBarIndicatorSize.label,
        unselectedLabelColor: kDisabledColor,
      ),
      primaryColor: kPrimaryColor,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      accentColor: kSecondaryColor,
      scaffoldBackgroundColor: kBackgroundColor,
      cardColor: kCardColor,
      colorScheme: ColorScheme.light(
        secondary: kSecondaryColor,
        surface: kSurfaceColor,
        primary: kPrimaryColor,
        onPrimary: kWhiteColor,
        onSecondary: kWhiteColor,
        onError: kWhiteColor,
      ),
      backgroundColor: kBackgroundColor,
      iconTheme: IconThemeData(color: kBlackColor),
      accentIconTheme: IconThemeData(color: kBlackColor),
      primaryIconTheme: IconThemeData(color: kBlackColor),
      textTheme: TextTheme(
        headline1: TextStyle(
            fontFamily: _kTitleFontFamily,
            color: kTextColor,
            fontWeight: FontWeight.w500),
        headline2: TextStyle(
            fontFamily: _kTitleFontFamily,
            color: kTextColor,
            fontWeight: FontWeight.w500),
        headline3: TextStyle(
            fontFamily: _kTitleFontFamily,
            color: kTextColor,
            fontWeight: FontWeight.w500),
        headline4: TextStyle(
            fontFamily: _kTitleFontFamily,
            color: kTextColor,
            fontWeight: FontWeight.w600),
        headline5: TextStyle(
            color: kTextColor,
            fontFamily: _kTitleFontFamily,
            fontWeight: FontWeight.w600),
        headline6: TextStyle(
            color: kTextColor,
            fontFamily: _kTitleFontFamily,
            fontSize: 18,
            fontWeight: FontWeight.w600),
        bodyText1: TextStyle(color: kTextColor, fontFamily: _kBodyFontFamily),
        bodyText2: TextStyle(
            color: kTextColor.withOpacity(kEmphasisMedium),
            fontFamily: _kTitleFontFamily),
        subtitle1: TextStyle(color: kTextColor, fontFamily: _kBodyFontFamily),
        subtitle2: TextStyle(
            color: kTextColor.withOpacity(kEmphasisMedium),
            fontFamily: _kTitleFontFamily),
        overline: TextStyle(color: kTextColor, fontFamily: _kBodyFontFamily),
        caption: TextStyle(
            color: kTextColor.withOpacity(kEmphasisMedium),
            fontFamily: _kTitleFontFamily),
        button: TextStyle(
            color: kWhiteColor,
            fontFamily: _kBodyFontFamily,
            fontWeight: FontWeight.w600),
      ),
    );

/// Dark theme
ThemeData darkThemeData(BuildContext context) => ThemeData.dark().copyWith(
      selectedRowColor: kSecondaryDarkColor,
      errorColor: kErrorColor,
      appBarTheme: appBarTheme(kBackgroundDarkColor, kWhiteColor),
      disabledColor: kDisabledDarkColor,
      cardColor: kCardDarkColor,
      toggleableActiveColor: kSecondaryDarkColor,
      dividerTheme: DividerThemeData(
        thickness: 1,
        color: kDisabledColor.withOpacity(kOpacityX70),
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(kSpacingX16),
        ),
        backgroundColor: kPrimaryDarkColor,
      ),
      tabBarTheme: TabBarTheme(
        labelColor: kPrimaryDarkColor,
        indicatorSize: TabBarIndicatorSize.label,
        unselectedLabelColor: kDisabledColor,
      ),
      inputDecorationTheme: InputDecorationTheme(
        border: UnderlineInputBorder(),
      ),
      visualDensity: VisualDensity.adaptivePlatformDensity,
      primaryColor: kPrimaryDarkColor,
      accentColor: kSecondaryDarkColor,
      scaffoldBackgroundColor: kBackgroundDarkColor,
      colorScheme: ColorScheme.dark(
        secondary: kSecondaryDarkColor,
        primary: kPrimaryDarkColor,
        background: kBackgroundDarkColor,
        onPrimary: kWhiteColor,
        onSecondary: kWhiteColor,
        onError: kBlackColor,
        surface: kSurfaceDarkColor,
      ),
      backgroundColor: kBackgroundDarkColor,
      iconTheme: IconThemeData(color: kWhiteColor),
      accentIconTheme: IconThemeData(color: kWhiteColor),
      primaryIconTheme: IconThemeData(color: kWhiteColor),
      textTheme: TextTheme(
        headline1: TextStyle(
            color: kTextDarkColor,
            fontWeight: FontWeight.w500,
            fontFamily: _kTitleFontFamily),
        headline2: TextStyle(
            color: kTextDarkColor,
            fontWeight: FontWeight.w500,
            fontFamily: _kTitleFontFamily),
        headline3: TextStyle(
            color: kTextDarkColor,
            fontWeight: FontWeight.w500,
            fontFamily: _kTitleFontFamily),
        headline4: TextStyle(
            color: kTextDarkColor,
            fontFamily: _kTitleFontFamily,
            fontWeight: FontWeight.w600),
        headline5: TextStyle(
            color: kTextDarkColor,
            fontFamily: _kTitleFontFamily,
            fontWeight: FontWeight.w600),
        headline6: TextStyle(
            color: kTextDarkColor,
            fontFamily: _kTitleFontFamily,
            fontSize: 18,
            fontWeight: FontWeight.w600),
        bodyText1: TextStyle(color: kWhiteColor, fontFamily: _kBodyFontFamily),
        bodyText2: TextStyle(
            color: kWhiteColor.withOpacity(kEmphasisMedium),
            fontFamily: _kTitleFontFamily),
        subtitle1: TextStyle(color: kWhiteColor, fontFamily: _kBodyFontFamily),
        subtitle2: TextStyle(
            color: kWhiteColor.withOpacity(kEmphasisMedium),
            fontFamily: _kTitleFontFamily),
        overline: TextStyle(color: kWhiteColor, fontFamily: _kBodyFontFamily),
        caption: TextStyle(
            color: kWhiteColor.withOpacity(kEmphasisMedium),
            fontFamily: _kTitleFontFamily),
        button: TextStyle(
          color: kTextColor,
          fontFamily: _kBodyFontFamily,
          fontWeight: FontWeight.w600,
        ),
      ),
    );

AppBarTheme appBarTheme(Color color, Color textColor) => AppBarTheme(
      color: color,
      centerTitle: true,
      elevation: 0,
      textTheme: TextTheme(
        headline6: TextStyle(
          fontFamily: _kTitleFontFamily,
          fontWeight: FontWeight.w600,
          fontSize: kSpacingX16,
          color: textColor,
        ),
      ),
    );
