

import 'package:flutter/material.dart';
import 'package:foodu/utils/constants/colors.dart';

class  TTabBarTheme {
  TTabBarTheme._();

  static TabBarTheme lightTabBarTheme = const TabBarTheme(
    indicatorColor: TColors.primary,
    tabAlignment: TabAlignment.start,
    labelStyle: TextStyle(fontSize: 14.0,fontFamily: 'Urbanist', fontWeight: FontWeight.bold, color: TColors.primary),
    unselectedLabelStyle: TextStyle(fontSize: 14.0,fontFamily: 'Urbanist', fontWeight: FontWeight.bold, color: TColors.textGrey)
  );

  static TabBarTheme darkTabBarTheme = const TabBarTheme(
      indicatorColor: TColors.primary,
      tabAlignment: TabAlignment.start,
      labelStyle: TextStyle(fontSize: 14.0,fontFamily: 'Urbanist', fontWeight: FontWeight.bold, color: TColors.primary),
      unselectedLabelStyle: TextStyle(fontSize: 14.0,fontFamily: 'Urbanist', fontWeight: FontWeight.bold, color: TColors.textGrey)
  );
}