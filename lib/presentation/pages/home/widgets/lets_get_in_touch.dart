import 'package:flutter/material.dart';
import 'package:web_lab/gen/assets.gen.dart';
import 'package:web_lab/presentation/styles/colors.dart';
import 'package:web_lab/presentation/styles/typography.dart';

class LetsGetInTouch extends StatelessWidget {
  const LetsGetInTouch({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.width > 825
          ? 587
          : MediaQuery.of(context).size.width > 510
              ? 924
              : 1270,
      child: Stack(
        alignment: Alignment.center,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.width > 825
                ? 587
                : MediaQuery.of(context).size.width > 510
                    ? 924
                    : 1270,
            width: double.infinity,
            child: Assets.images.bg2.image(
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 79,
              bottom: 75,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'LET`S GET IN TOUCH',
                  style: AppTypography.m.s22.w400,
                ),
                const SizedBox(height: 28),
                SizedBox(
                  height: 2,
                  width: 80,
                  child: ColoredBox(
                    color: AppColors.black0.withOpacity(.09),
                  ),
                ),
                const SizedBox(height: 56),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Wrap(
                    spacing: 120,
                    runSpacing: 120,
                    alignment: WrapAlignment.center,
                    children: [
                      SizedBox(
                        width: 195,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Assets.images.bigGeo.image(),
                            const SizedBox(height: 26),
                            Text(
                              'MEET US IN PERSON',
                              style: AppTypography.m.s16.w400.black51,
                            ),
                            const SizedBox(height: 20),
                            Text(
                              '8776 Juniper Street\nUnit #204\nMerriweather, Ontorio\nCanada',
                              textAlign: TextAlign.center,
                              style: AppTypography.v.s16.black51,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 195,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Assets.images.bigMail.image(),
                            const SizedBox(height: 34),
                            Text(
                              'The traditional way',
                              style: AppTypography.m.s16.w400.black51,
                            ),
                            const SizedBox(height: 20),
                            Text(
                              'Email us contact@minimal.com',
                              textAlign: TextAlign.center,
                              style: AppTypography.v.s16.black51,
                            ),
                            const SizedBox(height: 22),
                            Text(
                              'Contact form\nScroll down',
                              textAlign: TextAlign.center,
                              style: AppTypography.v.s16.black51,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 195,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Assets.images.bigLike.image(),
                            const SizedBox(height: 28),
                            Text(
                              'Let’s get social'.toUpperCase(),
                              style: AppTypography.m.s16.w400.black51,
                            ),
                            const SizedBox(height: 19),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Assets.icons.facebook.svg(),
                                const SizedBox(width: 9),
                                Text(
                                  'Facebook',
                                  style: AppTypography.v.s16.black51,
                                ),
                              ],
                            ),
                            const SizedBox(height: 11),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Assets.icons.twitter.svg(),
                                const SizedBox(width: 9),
                                Text(
                                  'Twitter',
                                  style: AppTypography.v.s16.black51,
                                ),
                              ],
                            ),
                            const SizedBox(height: 11),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Assets.icons.inbox.svg(),
                                const SizedBox(width: 9),
                                Text(
                                  'Linkedin',
                                  style: AppTypography.v.s16.black51,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 75),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
