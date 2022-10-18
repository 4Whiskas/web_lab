import 'package:flutter/material.dart';
import 'package:web_lab/presentation/styles/colors.dart';
import 'package:web_lab/presentation/styles/typography.dart';

import 'mail_input_field.dart';

class MailInputForm extends StatelessWidget {
  const MailInputForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 564,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MailInputField(
              primary: true,
              hint: 'Name',
            ),
            MailInputField(
              primary: false,
              hint: 'Email',
            ),
            MailInputField(
              primary: true,
              hint: 'Budget',
            ),
            MailInputField(
              primary: false,
              hint: 'Describe youre project...',
              multi: true,
            ),
          ],
        ),
      ),
    );
  }
}
