import 'package:blog_app_project/shared/shared.dart';
import 'package:flutter/material.dart';

/// Button with primary colored background
class ButtonPrimary extends StatelessWidget {
  const ButtonPrimary({
    @required this.buttonText,
    @required this.onTap,
    this.buttonWidth,
  });

  final String buttonText;
  final double buttonWidth;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    var kTheme = Theme.of(context);
    var kWidth  = MediaQuery.of(context).size.width;

    return InkWell(
      borderRadius: BorderRadius.circular(kSpacingX20),
      onTap: onTap,
      child: Container(
        width: buttonWidth ?? kWidth * 0.35,
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(
          vertical: kSpacingX12,
          horizontal: kSpacingX28,
        ),
        child: Text(
          buttonText,
          style: kTheme.textTheme.button.copyWith(
            color: kTheme.colorScheme.onPrimary,
          ),
        ),
        decoration: BoxDecoration(
          color: kTheme.colorScheme.primary,
          borderRadius: BorderRadius.circular(kSpacingX28),
        ),
      ),
    );
  }
}

/// Button with outlined background
class ButtonOutlined extends StatelessWidget {
  const ButtonOutlined({
    @required this.buttonText,
    @required this.onTap,
    this.buttonWidth,
  });

  final String buttonText;
  final double buttonWidth;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    var kTheme = Theme.of(context);
    var kWidth  = MediaQuery.of(context).size.width;

    return InkWell(
      borderRadius: BorderRadius.circular(kSpacingX20),
      onTap: onTap,
      child: Container(
        width: buttonWidth ?? kWidth * 0.35,
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(
          vertical: kSpacingX12,
          horizontal: kSpacingX28,
        ),
        child: Text(
          buttonText,
          style: kTheme.textTheme.button.copyWith(
            color: kTheme.colorScheme.onBackground,
          ),
        ),
        decoration: BoxDecoration(
          border: Border.all(color: kTheme.colorScheme.onBackground),
          borderRadius: BorderRadius.circular(kSpacingX28),
        ),
      ),
    );
  }
}
