import 'package:apps/shared/shared.dart';
import 'package:flutter/material.dart';

class NewsFormField extends StatefulWidget {
  const NewsFormField({
    Key key,
    @required this.label,
    @required this.hint,
    @required this.controller,
    this.labelColor,
    this.fillColor,
    this.passwordToggleIconColor,
    this.onSubmit,
    this.textCapitalization = TextCapitalization.none,
    this.inputType = TextInputType.text,
    this.inputAction = TextInputAction.next,
    this.obscureText = false,
    this.validator,
    this.focusNode,
  }) : super(key: key);

  final FocusNode focusNode;
  final TextEditingController controller;
  final String label;
  final String hint;
  final Color labelColor;
  final Color fillColor;
  final Color passwordToggleIconColor;
  final bool obscureText;
  final Function(String) onSubmit;
  final Function(String) validator;
  final TextCapitalization textCapitalization;
  final TextInputType inputType;
  final TextInputAction inputAction;

  @override
  _NewsFormFieldState createState() => _NewsFormFieldState();
}

class _NewsFormFieldState extends State<NewsFormField> {
  bool _showText = false;

  @override
  void initState() {
    super.initState();

    /// update show text property
    if (mounted) {
      _showText = widget.obscureText;
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    var kTheme = Theme.of(context);
    return Container(
      margin: EdgeInsets.only(top: kSpacingX16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            widget.label,
            style: kTheme.textTheme.bodyText1.copyWith(
              fontWeight: FontWeight.w600,
              fontFamily: kTheme.textTheme.headline6.fontFamily,
            ),
            textAlign: TextAlign.start,
          ),
          SizedBox(height: kSpacingX6),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(kSpacingX4),
            ),
            clipBehavior: Clip.hardEdge,
            child: TextFormField(
              focusNode: widget.focusNode,
              controller: widget.controller,
              textCapitalization: widget.textCapitalization,
              textInputAction: widget.inputAction,
              keyboardType: widget.inputType,
              obscureText: _showText,
              validator: widget.validator,
              onFieldSubmitted: widget.onSubmit,
              style: TextStyle(
                fontFamily: kTheme.textTheme.headline6.fontFamily,
              ),
              decoration: InputDecoration(
                hintText: widget.hint,
                filled: true,
                fillColor: widget.fillColor ?? kTheme.colorScheme.surface,
                hintStyle: TextStyle(
                  fontFamily: kTheme.textTheme.headline6.fontFamily,
                ),
                border: InputBorder.none,
                suffixIcon: widget.obscureText
                    ? IconButton(
                        icon: Icon(
                          _showText ? kHidePasswordIcon : kShowPasswordIcon,
                        ),
                        color: widget.passwordToggleIconColor ??
                            kTheme.colorScheme.onBackground,
                        onPressed: () {
                          setState(() {
                            _showText = !_showText;
                          });
                        },
                      )
                    : null,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
