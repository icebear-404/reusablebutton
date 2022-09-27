library reusablebutton;

import 'package:flutter/material.dart';

enum AppButtonColor { primary, basic }

class ButtonComponent extends StatelessWidget {
  final AppButtonColor variant;
  final Widget child;
  final VoidCallback? onTap;
  final Color buttoncolor;

  const ButtonComponent({
    this.variant = AppButtonColor.primary,
    required this.child,
    this.onTap,
    required this.buttoncolor,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: color,
        ),
        child: DefaultTextStyle(
          style: style,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: child,
            ),
          ),
        ),
      ),
    );
  }

  Color get color {
    if (variant == AppButtonColor.primary) return buttoncolor;
    return Colors.white;
  }

  TextStyle get style {
    return const TextStyle(
        color: Colors.white, fontFamily: 'hero', fontSize: 16);
  }
}
