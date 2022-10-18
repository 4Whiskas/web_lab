import 'package:flutter/material.dart';
import 'package:web_lab/presentation/styles/colors.dart';
import 'package:web_lab/presentation/styles/typography.dart';
import 'package:web_lab/presentation/widgets/app_outlined_button.dart';

class GetInTouch extends StatelessWidget {
  const GetInTouch({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: AppColors.yellow,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 60),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 940,
                child: Text(
                  'Minimalist is a full-service digital creative agency located in Ontorio Canada. We focus on design, consulting, technology, and photography. We’ve been building unique digital products, platforms, and experiences for the past 6 years. Let us help your company grow.',
                  textAlign: TextAlign.center,
                  style: AppTypography.v.s18.w400.black71,
                ),
              ),
              const SizedBox(height: 39),
              AppOutlinedButton(
                text: 'Get in Touch',
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
