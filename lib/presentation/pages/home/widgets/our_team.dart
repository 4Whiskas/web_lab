import 'package:flutter/material.dart';
import 'package:web_lab/gen/assets.gen.dart';
import 'package:web_lab/presentation/pages/home/widgets/team_card.dart';
import 'package:web_lab/presentation/styles/typography.dart';

class OurTeam extends StatelessWidget {
  const OurTeam({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: 79),
        Text(
          'OUR TEAM',
          style: AppTypography.m.s22.w400,
        ),
        const SizedBox(height: 73),
        SizedBox(
          width: 940,
          child: Wrap(
            spacing: 20,
            runSpacing: 20,
            alignment: WrapAlignment.center,
            children: [
              TeamCard(
                image: Assets.images.people0,
                socials: [
                  Assets.icons.twitter,
                  Assets.icons.inbox,
                  Assets.icons.mail,
                ],
                fio: 'Ron Swanson',
                role: 'Founder',
              ),
              TeamCard(
                image: Assets.images.people1,
                socials: [
                  Assets.icons.twitter,
                  Assets.icons.inbox,
                  Assets.icons.mail,
                ],
                fio: 'Julia Depish',
                role: 'Marketing',
              ),
              TeamCard(
                image: Assets.images.people2,
                socials: [
                  Assets.icons.instagram,
                  Assets.icons.twitter,
                  Assets.icons.be,
                  Assets.icons.ball,
                  Assets.icons.mail,
                ],
                fio: 'Danny Devry',
                role: 'Designer',
              ),
              TeamCard(
                image: Assets.images.people3,
                socials: [
                  Assets.icons.facebook,
                  Assets.icons.twitter,
                  Assets.icons.mail,
                ],
                fio: 'Lisa Smith',
                role: 'Developer',
              ),
            ],
          ),
        ),
        const SizedBox(height: 99),
      ],
    );
  }
}
