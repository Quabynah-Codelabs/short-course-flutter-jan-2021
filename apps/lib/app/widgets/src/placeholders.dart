import 'package:apps/shared/shared.dart';
import 'package:flutter/material.dart';

/// placeholder image widget for creating mockups
class PlaceholderImage extends StatelessWidget {
  const PlaceholderImage({
    Key key,
    this.width,
    this.height,
  }) : super(key: key);

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    var kTheme = Theme.of(context);

    return Container(
      width: width ?? SizeConfig.screenWidth,
      height: height ?? SizeConfig.screenHeight * 0.15,
      alignment: Alignment.center,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(kSpacingX8),
        color: kTheme.colorScheme.surface.withOpacity(kEmphasisHigh),
      ),
      child: Icon(
        kImageIcon,
        size: kSpacingX36,
        color: kTheme.colorScheme.onBackground.withOpacity(kEmphasisLow),
      ),
    );
  }
}
