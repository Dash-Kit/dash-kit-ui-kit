import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    required this.text,
    this.onPressed,
    this.expanded = true,
    Color? color,
    this.textColor = Colors.white,
    this.padding = const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
    this.shape,
    this.splashColor = Colors.deepPurple,
  }) : color = color ?? Colors.deepPurpleAccent;

  final String text;
  final VoidCallback? onPressed;
  final bool expanded;
  final Color color;
  final Color textColor;
  final EdgeInsets padding;
  final ShapeBorder? shape;
  final Color splashColor;

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: onPressed == null ? 0.5 : 1.0,
      child: IgnorePointer(
        ignoring: onPressed == null,
        child: SizedBox(
          width: expanded ? double.infinity : null,
          child: TextButton(
            style: TextButton.styleFrom(
              padding: padding,
              backgroundColor: color,
              primary: splashColor,
              shape: shape as OutlinedBorder? ??
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
              tapTargetSize: MaterialTapTargetSize.padded,
            ),
            onPressed: onPressed,
            child: Text(
              text.toUpperCase(),
              style: TextStyle(color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
