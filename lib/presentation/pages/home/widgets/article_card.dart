import 'package:flutter/material.dart';
import 'package:web_lab/gen/assets.gen.dart';
import 'package:web_lab/presentation/styles/typography.dart';

class ArticleCard extends StatelessWidget {
  const ArticleCard({
    Key? key,
    required this.text,
    required this.icon,
    required this.fio,
  }) : super(key: key);

  final String text;
  final AssetGenImage icon;
  final String fio;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ConstrainedBox(
          constraints: BoxConstraints(minHeight: 210),
          child: SizedBox(
            width: 338,
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: AppTypography.v.s26.w400.black51,
            ),
          ),
        ),
        const SizedBox(height: 24),
        SizedBox(
          width: 64,
          height: 64,
          child: icon.image(
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          fio,
          style: AppTypography.m.s14.w400.textGrey,
        ),
      ],
    );
  }
}
