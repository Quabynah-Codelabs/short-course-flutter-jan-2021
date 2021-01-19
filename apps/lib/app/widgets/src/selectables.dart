import 'package:apps/app/widgets/widgets.dart';
import 'package:apps/shared/shared.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

/// card with checkable state
class CheckableImageCard extends StatefulWidget {
  const CheckableImageCard({
    Key key,
    @required this.imageUrl,
    @required this.onChecked,
    this.assetImage = false,
    this.width,
    this.fit = BoxFit.cover,
    this.height,
    this.outlineColor,
  }) : super(key: key);

  final String imageUrl;
  final bool assetImage;
  final double width;
  final double height;
  final BoxFit fit;
  final Color outlineColor;
  final Function(bool) onChecked;

  @override
  _CheckableImageCardState createState() => _CheckableImageCardState();
}

class _CheckableImageCardState extends State<CheckableImageCard> {
  bool _selected = false;
  ThemeData kTheme;

  @override
  Widget build(BuildContext context) {
    kTheme = Theme.of(context);
    var kWidth = widget.width ?? SizeConfig.screenWidth;
    var kHeight = widget.height ?? SizeConfig.screenHeight * 0.15;
    return InkWell(
      splashColor: kTheme.splashColor,
      borderRadius: BorderRadius.circular(kSpacingX8),
      onTap: () {
        setState(() {
          _selected = !_selected;
        });
        widget.onChecked(_selected);
      },
      child: Container(
        width: kWidth,
        height: kHeight,
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          border: _selected
              ? Border.all(
                  color: widget.outlineColor ?? kTheme.colorScheme.onBackground,
                )
              : null,
          borderRadius: BorderRadius.circular(kSpacingX8),
        ),
        child: widget.imageUrl == null || widget.imageUrl.isEmpty
            ? PlaceholderImage(width: kWidth, height: kHeight)
            : CachedNetworkImage(
                imageUrl: widget.imageUrl,
                width: kWidth,
                height: kHeight,
                fit: widget.fit,
                placeholder: (_, __) => Container(
                  width: kWidth,
                  height: kHeight,
                  color: kTheme.colorScheme.surface,
                ),
              ),
      ),
    );
  }
}
