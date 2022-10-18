import 'package:flutter/material.dart';
import 'package:web_lab/presentation/pages/home/widgets/article.dart';
import 'package:web_lab/presentation/pages/home/widgets/our_team.dart';
import 'package:web_lab/presentation/styles/colors.dart';
import 'package:web_lab/presentation/styles/typography.dart';

import 'widgets/footer.dart';
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
      body: SelectableRegion(
        focusNode: FocusNode(),
        selectionControls: MaterialTextSelectionControls(),
        child: Column(
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
                  const Footer(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
