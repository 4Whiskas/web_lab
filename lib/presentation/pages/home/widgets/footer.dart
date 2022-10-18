import 'package:flutter/material.dart';
import 'package:web_lab/gen/assets.gen.dart';
import 'package:web_lab/presentation/styles/colors.dart';
import 'package:web_lab/presentation/styles/typography.dart';
import 'package:web_lab/presentation/widgets/app_outlined_button.dart';

import 'mail_input_form.dart';

class Footer extends StatelessWidget {
  const Footer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
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
    );
  }
}
