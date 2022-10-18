import 'package:flutter/material.dart';
import 'package:web_lab/presentation/styles/colors.dart';
import 'package:web_lab/presentation/styles/typography.dart';

class MailInputField extends StatelessWidget {
  const MailInputField({
    Key? key,
    required this.primary,
    required this.hint,
    this.multi = false,
  }) : super(key: key);
  final bool primary;
  final String hint;
  final bool multi;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: primary
          ? Color.fromRGBO(46, 46, 46, 1)
          : Color.fromRGBO(51, 51, 51, 1),
      child: TextField(
        style: AppTypography.v.italic.s16.w400.white,
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: AppTypography.v.italic.s16.w400.white,
          contentPadding: EdgeInsets.symmetric(vertical: 18, horizontal: 31),
          border: InputBorder.none,
          errorBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          focusedErrorBorder: InputBorder.none,
        ),
        maxLines: multi ? 4 : null,
      ),
    );
  }
}
