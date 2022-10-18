import 'package:flutter/material.dart';
import 'package:web_lab/gen/assets.gen.dart';
import 'package:web_lab/presentation/styles/typography.dart';
import 'package:web_lab/presentation/widgets/app_text_button.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 0.17 * MediaQuery.of(context).size.width,
        vertical: 18,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              if (MediaQuery.of(context).size.width > 100)
                SizedBox(
                  width: 65,
                  height: 70,
                  child: Assets.images.logo.image(),
                )
              else
                SizedBox(
                  width: 32.5,
                  height: 35,
                  child: Assets.images.logo.image(),
                ),
              if (MediaQuery.of(context).size.width > 235) ...[
                const SizedBox(width: 18),
                Text(
                  'MINIMAL',
                  style: AppTypography.o.s22.w400.black0,
                ),
              ],
            ],
          ),
          if (MediaQuery.of(context).size.width > 800)
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                AppLinkButton(
                  onTap: () {},
                  text: 'PROCESS',
                ),
                const SizedBox(width: 34),
                AppLinkButton(
                  onTap: () {},
                  text: 'PROJECTS',
                ),
                const SizedBox(width: 34),
                AppLinkButton(
                  onTap: () {},
                  text: 'TEAM',
                ),
                const SizedBox(width: 34),
                AppLinkButton(
                  onTap: () {},
                  text: 'CONTACT',
                ),
              ],
            ),
        ],
      ),
    );
  }
}
