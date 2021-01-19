import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:logger/logger.dart';

/// texts
const String kAppName = 'Flutter News App';
const String kAppDesc = '...your daily read';

/// helpers
const String kInterestHelperText =
    'Tap on the topics below to customize what you want to appear on your feed. You can update this through your profile settings anytime.';
const kRegisterHelperText =
    'Provide your details to get started. Your experience will be customized and personal details kept from other bloggers';

/// icons
const kAppIcon = Icons.article_outlined;
const kShowPasswordIcon = Feather.eye;
const kHidePasswordIcon = Feather.eye_off;
const kImageIcon = Icons.image;
const kBookmarkIcon = Icons.bookmark;
const kUnBookmarkIcon = Icons.bookmark_outline;
const kBackIcon = Icons.keyboard_backspace_outlined;
const kCommentIcon = Entypo.message;
const kSettingsIcon = Feather.settings;
const kNotificationIcon = Feather.bell;
const kSearchIcon = Feather.search;
const kHomeIcon = Feather.home;

/// colors
const kBlueColor = Color(0xff1B32FF);
const kBlackColor = Colors.black;
const kWhiteColor = Colors.white;
const kTransparent = Colors.transparent;

/// light mode colors
const kPrimaryColor = kBlueColor;
const kSecondaryColor = kBlueColor;
const kBackgroundColor = Color(0xFFF8F8F8);
const kCardColor = Color(0xFFF7F7F7);
const kDisabledColor = Color(0xFFDEE4EB);
const kInActiveIconColor = Color(0xFFCACAD3);
const kSurfaceColor = Color(0xFFEEEFF3);
const kCheckedColor = Color(0xFF43C370);
const kErrorColor = Color(0xFFE82D4C);
const kTextColor = Color(0xFF1E2939);

/// dark mode colors
const kPrimaryDarkColor = Color(0xff3700b3);
const kSecondaryDarkColor = Color(0xff4329EB);
const kBackgroundDarkColor = Color(0xFF05050B);
const kCardDarkColor = Color(0xFF121212);
const kSurfaceDarkColor = Color(0xFF212121);
const kDisabledDarkColor = Color(0xFF121212);
const kTextDarkColor = Color(0xFFFAFAFA);

/// logging
final logger = Logger(printer: PrettyPrinter(printEmojis: false));
