import 'package:flutter/material.dart';
import 'package:web_lab/gen/assets.gen.dart';
import 'package:web_lab/presentation/pages/home/widgets/article_card.dart';
import 'package:web_lab/presentation/styles/colors.dart';

class Article extends StatelessWidget {
  const Article({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: AppColors.lightGrey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 69),
          Assets.icons.article.svg(),
          const SizedBox(height: 65),
          if (MediaQuery.of(context).size.width > 784)
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ArticleCard(
                  text:
                      '“I love these guys! They did a great job. I would recommend them to anyone.”',
                  icon: Assets.images.article0,
                  fio: 'Julius Von Uberstien',
                ),
                const SizedBox(width: 52),
                SizedBox(
                  width: 2,
                  height: 215,
                  child: ColoredBox(
                    color: AppColors.black0.withOpacity(.04),
                  ),
                ),
                const SizedBox(width: 52),
                ArticleCard(
                  text:
                      '“Elexis Corp. has grown immensely with the help of Minimal.”',
                  icon: Assets.images.article1,
                  fio: 'Rachel Stamos',
                ),
              ],
            )
          else
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ArticleCard(
                  text:
                      '“I love these guys! They did a great job. I would recommend them to anyone.”',
                  icon: Assets.images.article0,
                  fio: 'Julius Von Uberstien',
                ),
                const SizedBox(height: 50),
                ArticleCard(
                  text:
                      '“Elexis Corp. has grown immensely with the help of Minimal.”',
                  icon: Assets.images.article1,
                  fio: 'Rachel Stamos',
                ),
              ],
            ),
          const SizedBox(height: 98),
        ],
      ),
    );
  }
}
