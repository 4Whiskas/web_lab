import 'package:flutter/material.dart';

import 'colors.dart';

extension AppTextExtensions on TextStyle {
  //Colors
  TextStyle get white => copyWith(color: AppColors.white);
  TextStyle get black0 => copyWith(color: AppColors.black0);
  TextStyle get black51 => copyWith(color: AppColors.black51);
  TextStyle get black64 => copyWith(color: AppColors.black64);
  TextStyle get black71 => copyWith(color: AppColors.black71);
  TextStyle get semiWhite => copyWith(color: AppColors.semiWhite);
  TextStyle get yellow => copyWith(color: AppColors.yellow);
  TextStyle get lightGrey => copyWith(color: AppColors.lightGrey);
  TextStyle get transGrey => copyWith(color: AppColors.transGrey);
  TextStyle get textTransGrey => copyWith(color: AppColors.textTransGrey);
  TextStyle get textGrey => copyWith(color: AppColors.textGrey);
  TextStyle get green => copyWith(color: AppColors.green);

  //Weights
  TextStyle get w100 => copyWith(fontWeight: FontWeight.w100);
  TextStyle get w200 => copyWith(fontWeight: FontWeight.w200);
  TextStyle get w300 => copyWith(fontWeight: FontWeight.w300);
  TextStyle get w400 => copyWith(fontWeight: FontWeight.w400);
  TextStyle get w500 => copyWith(fontWeight: FontWeight.w500);
  TextStyle get w600 => copyWith(fontWeight: FontWeight.w600);
  TextStyle get w700 => copyWith(fontWeight: FontWeight.w700);
  TextStyle get w800 => copyWith(fontWeight: FontWeight.w800);
  TextStyle get w900 => copyWith(fontWeight: FontWeight.w900);

  //Sizes
  TextStyle get s10 => copyWith(fontSize: 10);
  TextStyle get s12 => copyWith(fontSize: 12);
  TextStyle get s14 => copyWith(fontSize: 14);
  TextStyle get s15 => copyWith(fontSize: 15);
  TextStyle get s16 => copyWith(fontSize: 16);
  TextStyle get s18 => copyWith(fontSize: 18);
  TextStyle get s20 => copyWith(fontSize: 20);
  TextStyle get s22 => copyWith(fontSize: 22);
  TextStyle get s24 => copyWith(fontSize: 24);
  TextStyle get s26 => copyWith(fontSize: 26);
  TextStyle get s28 => copyWith(fontSize: 28);
  TextStyle get s30 => copyWith(fontSize: 30);
  TextStyle get s32 => copyWith(fontSize: 32);
  TextStyle get s34 => copyWith(fontSize: 34);
  TextStyle get s36 => copyWith(fontSize: 36);
  TextStyle get s38 => copyWith(fontSize: 38);
  TextStyle get s40 => copyWith(fontSize: 40);
  TextStyle get s42 => copyWith(fontSize: 42);
  TextStyle get s44 => copyWith(fontSize: 44);
  TextStyle get s46 => copyWith(fontSize: 46);

  //Decorations
  TextStyle get underlined => copyWith(decoration: TextDecoration.underline);
  TextStyle get italic => copyWith(fontStyle: FontStyle.italic);
}
