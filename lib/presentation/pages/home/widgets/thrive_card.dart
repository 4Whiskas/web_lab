import 'package:flutter/material.dart';
import 'package:web_lab/gen/assets.gen.dart';
import 'package:web_lab/presentation/styles/colors.dart';
import 'package:web_lab/presentation/styles/typography.dart';

class ThriveCard extends StatelessWidget {
  const ThriveCard({
    Key? key,
    required this.icon,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  final AssetGenImage icon;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 219,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: AppColors.lightGrey,
              ),
              child: Center(
                child: icon.image(),
              ),
            ),
          ),
          const SizedBox(height: 38),
          Text(
            title,
            style: AppTypography.m.s16.w400,
          ),
          const SizedBox(height: 20),
          Text(
            subtitle,
            textAlign: TextAlign.center,
            style: AppTypography.v.s14.w400,
          ),
        ],
      ),
    );
  }
}
