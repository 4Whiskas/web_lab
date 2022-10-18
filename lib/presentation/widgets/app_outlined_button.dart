import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web_lab/presentation/styles/colors.dart';
import 'package:web_lab/presentation/styles/typography.dart';

class AppOutlinedButton extends StatelessWidget {
  const AppOutlinedButton({
    Key? key,
    this.onTap,
    required this.text,
    this.textStyle,
    this.borderColor,
  }) : super(key: key);
  final VoidCallback? onTap;
  final String text;
  final TextStyle? textStyle;
  final Color? borderColor;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      onPressed: onTap,
      padding: EdgeInsets.zero,
      minSize: 0,
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
            color: borderColor ?? AppColors.black71,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 34.5,
            vertical: 13,
          ),
          child: Text(
            text,
            style: textStyle ?? AppTypography.v.s16.w400.black71,
          ),
        ),
      ),
    );
  }
}
