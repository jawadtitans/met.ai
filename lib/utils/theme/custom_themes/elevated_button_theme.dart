

import 'package:flutter/material.dart';
import 'package:foodu/utils/constants/colors.dart';
import 'package:foodu/utils/constants/sizes.dart';

class TElevatedButtonTheme{
  TElevatedButtonTheme._();

  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: TSizes.buttonElevation,
      foregroundColor: Colors.white,
      backgroundColor: TColors.buttonPrimary,
      disabledBackgroundColor: Colors.grey,
      disabledForegroundColor: Colors.grey,
      side:  const BorderSide(color:TColors.buttonPrimary),
      padding: const EdgeInsets.symmetric(vertical:  14,horizontal: 14),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      textStyle:  const TextStyle(fontSize: 14, color: Colors.white,fontWeight: FontWeight.w700)
    )
  );

  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          elevation: TSizes.buttonElevation,
          foregroundColor: Colors.white,
          backgroundColor: TColors.buttonPrimary,
          disabledBackgroundColor: Colors.grey,
          disabledForegroundColor: Colors.grey,
          side:  const BorderSide(color:TColors.buttonPrimary),
          padding: const EdgeInsets.symmetric(vertical:  14,horizontal: 14),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
          textStyle:  const TextStyle(fontSize: 14, color: Colors.white,fontWeight: FontWeight.w700)
      )
  );
}