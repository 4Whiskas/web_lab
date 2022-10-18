import 'package:flutter/material.dart';
import 'package:web_lab/gen/assets.gen.dart';
import 'package:web_lab/presentation/styles/colors.dart';
import 'package:web_lab/presentation/styles/typography.dart';

class TeamCard extends StatelessWidget {
  const TeamCard({
    Key? key,
    required this.image,
    required this.socials,
    required this.fio,
    required this.role,
  }) : super(key: key);

  final AssetGenImage image;
  final List<SvgGenImage> socials;
  final String fio;
  final String role;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 220,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 220,
            width: 220,
            child: image.image(fit: BoxFit.cover),
          ),
          const SizedBox(height: 20),
          Text(
            fio.toUpperCase(),
            style: AppTypography.m.s16.w400.black51,
          ),
          const SizedBox(height: 6),
          Text(
            role,
            style: AppTypography.v.s14.w400,
          ),
          const SizedBox(height: 29),
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: socials
                .map(
                  (e) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 3),
                    child: SizedBox(
                      width: 29,
                      height: 14,
                      child: ColoredBox(
                        color: AppColors.lightGrey,
                        child: e.svg(),
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}
