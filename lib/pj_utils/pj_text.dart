import 'package:flutter/material.dart';

class PjText extends StatelessWidget {
  final String text;
  final TextStyle style;
  final double? boxHeight;
  final double? boxWidth;
  final bool isCenterAlignment;
  final TextAlign? textAlign;

  const PjText({
    Key? key,
    required this.text,
    required this.style,
    this.boxHeight,
    this.boxWidth,
    this.isCenterAlignment = true,
    this.textAlign,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: boxHeight,
      width: boxWidth,
      child: Align(
        alignment: isCenterAlignment
            ? textAlign == TextAlign.center
                ? Alignment.center
                : Alignment.centerLeft
            : Alignment.topLeft,
        child: Text(
          text,
          style: style,
          textAlign: textAlign,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}
