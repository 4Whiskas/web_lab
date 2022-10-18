import 'package:flutter/material.dart';
import 'package:web_lab/gen/assets.gen.dart';
import 'package:web_lab/presentation/styles/typography.dart';

class RecentCard extends StatelessWidget {
  const RecentCard({
    Key? key,
    required this.image,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  final AssetGenImage image;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(2),
      child: SizedBox(
        height: 387,
        width: 300,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 300,
              width: 300,
              child: image.image(fit: BoxFit.cover),
            ),
            const SizedBox(height: 19),
            Text(
              title.toUpperCase(),
              style: AppTypography.m.s16.w400.black51,
            ),
            const SizedBox(height: 4),
            Text(
              subtitle,
              style: AppTypography.m.s14.w400.black51,
            ),
            const SizedBox(height: 21),
          ],
        ),
      ),
    );
  }
}
