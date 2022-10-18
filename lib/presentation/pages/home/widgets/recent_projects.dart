import 'package:flutter/material.dart';
import 'package:web_lab/gen/assets.gen.dart';
import 'package:web_lab/presentation/styles/colors.dart';
import 'package:web_lab/presentation/styles/typography.dart';

import 'recent_card.dart';

class RecentProjects extends StatelessWidget {
  const RecentProjects({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: AppColors.lightGrey,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 79),
          Text(
            'RECENT PROJECTS',
            style: AppTypography.m.s22.w400.black51,
          ),
          const SizedBox(height: 28),
          SizedBox(
            height: 2,
            width: 80,
            child: ColoredBox(
              color: AppColors.black0.withOpacity(.09),
            ),
          ),
          const SizedBox(height: 43),
          SizedBox(
            width: 940,
            child: Wrap(
              alignment: WrapAlignment.center,
              spacing: 20,
              runSpacing: 20,
              children: [
                RecentCard(
                  image: Assets.images.recent0,
                  title: 'WOODS',
                  subtitle: 'Photography',
                ),
                RecentCard(
                  image: Assets.images.recent1,
                  title: 'path',
                  subtitle: 'Website • Photography',
                ),
                RecentCard(
                  image: Assets.images.recent2,
                  title: 'darkness',
                  subtitle: 'Website',
                ),
                RecentCard(
                  image: Assets.images.recent3,
                  title: 'waves',
                  subtitle: 'Photography',
                ),
                RecentCard(
                  image: Assets.images.recent4,
                  title: 'drops',
                  subtitle: 'Website',
                ),
                RecentCard(
                  image: Assets.images.recent5,
                  title: 'ocean',
                  subtitle: 'Website',
                ),
                RecentCard(
                  image: Assets.images.recent6,
                  title: 'town',
                  subtitle: 'Website',
                ),
                RecentCard(
                  image: Assets.images.recent7,
                  title: 'mountain',
                  subtitle: 'Website',
                ),
                RecentCard(
                  image: Assets.images.recent8,
                  title: 'camera',
                  subtitle: 'Website',
                ),
              ],
            ),
          ),
          const SizedBox(height: 89),
        ],
      ),
    );
  }
}
