import 'package:apps/shared/shared.dart';
import 'package:flutter/material.dart';

/// secondary button -> button with colored outline border
class SecondaryButton extends StatefulWidget {
  const SecondaryButton({
    @required this.label,
    @required this.onPressed,
    this.width,
    this.color,
    this.textColor,
    this.progressIndicatorColor,
    this.isLoading = false,
  });

  final String label;
  final double width;
  final Color color;
  final Color textColor;
  final Color progressIndicatorColor;
  final Function onPressed;
  final bool isLoading;

  @override
  _SecondaryButtonState createState() => _SecondaryButtonState();
}

class _SecondaryButtonState extends State<SecondaryButton> {
  @override
  Widget build(BuildContext context) {
    var kTheme = Theme.of(context);
    return Padding(
      padding: EdgeInsets.only(top: kSpacingX8),
      child: InkWell(
        splashColor: kTheme.splashColor,
        borderRadius: BorderRadius.circular(kSpacingX4),
        onTap: widget.isLoading ? null : widget.onPressed,
        child: AnimatedContainer(
          duration: kFadeDuration,
          alignment: Alignment.center,
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            border: Border.all(
              color: widget.isLoading
                  ? kTheme.disabledColor
                  : widget.color ?? kTheme.colorScheme.secondary,
            ),
            borderRadius: BorderRadius.circular(kSpacingX4),
          ),
          width: widget.width ?? SizeConfig.screenWidth * 0.8,
          padding: EdgeInsets.symmetric(
            horizontal: kSpacingX24,
            vertical: widget.isLoading ? kSpacingX16 : kSpacingX20,
          ),
          child: widget.isLoading
              ? CircularProgressIndicator.adaptive(
                  valueColor: AlwaysStoppedAnimation(
                    widget.progressIndicatorColor ??
                        kTheme.colorScheme.secondary,
                  ),
                )
              : Text(
                  widget.label,
                  style: kTheme.textTheme.button.copyWith(
                    color: widget.textColor ?? kTheme.colorScheme.secondary,
                  ),
                ),
        ),
      ),
    );
  }
}

/// primary button -> button with colored background
class PrimaryButton extends StatefulWidget {
  const PrimaryButton({
    @required this.label,
    @required this.onPressed,
    this.width,
    this.color,
    this.textColor,
    this.progressIndicatorColor,
    this.isLoading = false,
  });

  final String label;
  final double width;
  final Color color;
  final Color textColor;
  final Color progressIndicatorColor;
  final Function onPressed;
  final bool isLoading;

  @override
  _PrimaryButtonState createState() => _PrimaryButtonState();
}

class _PrimaryButtonState extends State<PrimaryButton> {
  @override
  Widget build(BuildContext context) {
    var kTheme = Theme.of(context);
    return Padding(
      padding: EdgeInsets.only(top: kSpacingX8),
      child: InkWell(
        splashColor: kTheme.splashColor,
        borderRadius: BorderRadius.circular(kSpacingX4),
        onTap: widget.isLoading ? null : widget.onPressed,
        child: AnimatedContainer(
          duration: kFadeDuration,
          clipBehavior: Clip.hardEdge,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: widget.isLoading
                ? kTheme.disabledColor
                : widget.color ?? kTheme.colorScheme.secondary,
            borderRadius: BorderRadius.circular(kSpacingX4),
          ),
          width: widget.width ?? SizeConfig.screenWidth * 0.8,
          padding: EdgeInsets.symmetric(
            horizontal: kSpacingX24,
            vertical: widget.isLoading ? kSpacingX16 : kSpacingX20,
          ),
          child: widget.isLoading
              ? CircularProgressIndicator.adaptive(
                  valueColor: AlwaysStoppedAnimation(
                    widget.progressIndicatorColor ??
                        kTheme.colorScheme.onSecondary,
                  ),
                )
              : Text(
                  widget.label,
                  style: kTheme.textTheme.button.copyWith(
                    color: widget.textColor ?? kTheme.colorScheme.onSecondary,
                  ),
                ),
        ),
      ),
    );
  }
}

/// clear button -> a button with no background or outline color
class ButtonClear extends StatelessWidget {
  const ButtonClear(
      {Key key, @required this.label, @required this.onPressed, this.color})
      : super(key: key);

  final String label;
  final Function onPressed;
  final Color color;

  @override
  Widget build(BuildContext context) {
    var kTheme = Theme.of(context);

    return InkWell(
      onTap: onPressed,
      splashColor: kTheme.splashColor,
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: kSpacingX12,
          horizontal: kSpacingX16,
        ),
        child: Text(
          label,
          style: kTheme.textTheme.button.copyWith(
            color: color ??
                kTheme.colorScheme.onBackground.withOpacity(kEmphasisMedium),
          ),
        ),
      ),
    );
  }
}
