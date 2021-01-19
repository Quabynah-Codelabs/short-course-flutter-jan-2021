import 'package:apps/shared/shared.dart';
import 'package:flutter/material.dart';

class BottomNavItem {
  const BottomNavItem({@required this.icon, this.label});

  final IconData icon;
  final String label;
}

class BottomNavView extends StatefulWidget {
  const BottomNavView({
    Key key,
    @required this.items,
    @required this.onNavSelected,
    @required this.selectedIndex,
    this.activeColor,
    this.inactiveColor,
  }) : super(key: key);

  final List<BottomNavItem> items;
  final Color activeColor;
  final Color inactiveColor;
  final Function(int) onNavSelected;
  final int selectedIndex;

  @override
  _BottomNavViewState createState() => _BottomNavViewState();
}

class _BottomNavViewState extends State<BottomNavView> {
  ThemeData kTheme;

  @override
  Widget build(BuildContext context) {
    kTheme = Theme.of(context);

    return Align(
      alignment: Alignment.bottomCenter,
      child: Material(
        type: MaterialType.card,
        elevation: kSpacingX24,
        child: Container(
          constraints: BoxConstraints(minHeight: kSpacingX56),
          width: SizeConfig.screenWidth,
          decoration: BoxDecoration(
            color: kTheme.colorScheme.background,
          ),
          padding: EdgeInsets.symmetric(
              vertical: kSpacingX12, horizontal: kSpacingX8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ...widget.items
                  .map(
                    (item) => _buildNavItem(item,
                        widget.items.indexOf(item) == widget.selectedIndex),
                  )
                  .toList(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildNavItem(BottomNavItem item, bool isActive) {
    var activeColor = widget.activeColor ??
        kTheme.colorScheme.onSurface.withOpacity(kEmphasisHigh);
    var inactiveColor = widget.inactiveColor ??
        kTheme.colorScheme.onSurface.withOpacity(kEmphasisLow);
    return InkWell(
      onTap: () {
        widget.onNavSelected(widget.items.indexOf(item));
      },
      child: Padding(
        padding: const EdgeInsets.only(),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(item.icon, color: isActive ? activeColor : inactiveColor),
            if (item.label != null) ...{
              AnimatedOpacity(
                duration: kSheetDuration,
                opacity: isActive ? 1 : 0,
                child: isActive
                    ? Padding(
                        padding: EdgeInsets.only(top: kSpacingX4),
                        child: Text(
                          item.label,
                          style: kTheme.textTheme.button.copyWith(
                            color: activeColor,
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                      )
                    : SizedBox.shrink(),
              ),
            }
          ],
        ),
      ),
    );
  }
}
