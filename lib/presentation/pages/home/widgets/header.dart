import 'package:flutter/material.dart';
import 'package:web_lab/gen/assets.gen.dart';
import 'package:web_lab/presentation/styles/colors.dart';
import 'package:web_lab/presentation/styles/typography.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.width > 350
          ? 391
          : MediaQuery.of(context).size.width > 120
              ? 580
              : 700,
      child: Stack(
        alignment: Alignment.center,
        children: [
          SizedBox(
            width: double.infinity,
            height: MediaQuery.of(context).size.width > 350
                ? 391
                : MediaQuery.of(context).size.width > 120
                    ? 580
                    : 700,
            child: Assets.images.bg1.image(
              fit: BoxFit.cover,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'MAKING BRANDS TAND OUT\nIS OUR OBSESSION',
                style: AppTypography.m.s30.white.w400,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 28),
              SizedBox(
                height: 2,
                width: 80,
                child: ColoredBox(
                  color: AppColors.white,
                ),
              ),
              const SizedBox(height: 25),
              Text(
                'Let us help your brand stand out.',
                style: AppTypography.m.s15.w400.semiWhite,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
