import 'package:flutter/cupertino.dart';
import 'package:web_lab/presentation/styles/typography.dart';

class AppLinkButton extends StatelessWidget {
  const AppLinkButton({
    Key? key,
    required this.onTap,
    required this.text,
  }) : super(key: key);

  final VoidCallback onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      onPressed: onTap,
      padding: EdgeInsets.zero,
      minSize: 0,
      child: Text(
        text,
        style: AppTypography.m.s12.w400.black64,
      ),
    );
  }
}
