import 'package:flutter/material.dart';
import 'package:web_lab/gen/assets.gen.dart';
import 'package:web_lab/presentation/pages/home/widgets/article.dart';
import 'package:web_lab/presentation/pages/home/widgets/mail_input_form.dart';
import 'package:web_lab/presentation/pages/home/widgets/our_team.dart';
import 'package:web_lab/presentation/pages/home/widgets/recent_card.dart';
import 'package:web_lab/presentation/styles/colors.dart';
import 'package:web_lab/presentation/styles/typography.dart';
import 'package:web_lab/presentation/widgets/app_outlined_button.dart';

import 'widgets/get_in_touch.dart';
import 'widgets/header.dart';
import 'widgets/home_app_bar.dart';
import 'widgets/lets_get_in_touch.dart';
import 'widgets/recent_projects.dart';
import 'widgets/thrives.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Column(
        children: [
          HomeAppBar(),
          Expanded(
            child: ListView(
              children: [
                const Header(),
                const GetInTouch(),
                const SizedBox(height: 79),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'HOW WE MAKE BRANDS THRIVE',
                    style: AppTypography.m.s22.w400.black51,
                  ),
                ),
                const SizedBox(height: 73),
                const Thrives(),
                const SizedBox(height: 74),
                const RecentProjects(),
                const OurTeam(),
                const Article(),
                const LetsGetInTouch(),
                ColoredBox(
                  color: AppColors.black0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(height: 69),
                      MailInputForm(),
                      const SizedBox(height: 21.95),
                      AppOutlinedButton(
                        text: 'Send message',
                        onTap: () {},
                        borderColor: AppColors.green,
                        textStyle: AppTypography.v.italic.s16.green,
                      ),
                      const SizedBox(height: 37.5),
                      Assets.images.logoWhite.image(),
                      const SizedBox(height: 14),
                      Text(
                        'Minimal Template made in Webflow. All rights reserved.',
                        style: AppTypography.v.s14.w400.textTransGrey,
                      ),
                      const SizedBox(height: 75),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
