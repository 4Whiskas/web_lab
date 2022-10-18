import 'package:flutter/material.dart';
import 'package:web_lab/gen/assets.gen.dart';

import 'thrive_card.dart';

class Thrives extends StatelessWidget {
  const Thrives({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        width: MediaQuery.of(context).size.width - 20,
        child: Wrap(
          spacing: 20,
          runSpacing: 20,
          alignment: WrapAlignment.center,
          runAlignment: WrapAlignment.center,
          children: [
            ThriveCard(
              icon: Assets.images.target,
              title: 'SET A TARGET',
              subtitle:
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse varius enim in eros elementum tristique.',
            ),
            ThriveCard(
              icon: Assets.images.solution,
              title: 'DESIGN A SOLUTION',
              subtitle:
                  'Duis cursus, mi quis viverra ornare, eros dolor interdum nulla, ut commodo diam libero vitae erat.',
            ),
            ThriveCard(
              icon: Assets.images.progress,
              title: 'RACK THE PROGRESS',
              subtitle:
                  'Aenean faucibus nibh et justo cursus id rutrum lorem imperdiet. Nunc ut sem vitae risus tristique posuere.',
            ),
          ],
        ),
      ),
    );
  }
}
