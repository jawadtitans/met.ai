


import 'package:flutter/material.dart';

class TColors{
  TColors._();

  // App Basic Color
  static const Color primary = Color(0xff1BAC4B);

  // Background Color

  static const Color backgroundLight = Colors.white;
  static const Color backgroundDark = Color(0xff181A20);
  static const Color darkCard = Color(0xFF1F222A);



  // Text Color
  static const Color textPrimary = Color(0xff1BAC4B);
  static const Color textblack = Color(0xFF212121);
  static const Color textGrey = Color(0xFF9E9E9E);
  static const Color textWhite = Colors.white;

  // Button Color
  static const Color buttonPrimary = Color(0xff1BAC4B);
  static const Color buttonSecondary = Color(0xffE8F7ED);

  //Container Border
  static const Color borderGrey = Color(0xFFEEEEEE);

  //Container Shadow Color
  static const Color containerShadow =  Color(0x3F1BAC4B);

  //Text Field Fill Color
  static const Color textFieldFillColor = Color(0xFFF9F9F9);
  static const Color textFieldFillTapColor = Color(0x141BAC4B);

  //Rating Color
  static const Color rating = Colors.orange;

  // Icon Color
  static const Color iconGreyColor = Color(0xFF9E9E9E);
  static const Color iconBlackColor = Color(0xFF212121);

  // Gradient color
  static const Gradient greenGradient =  LinearGradient(
    begin: Alignment(-0.96, 0.28),
    end: Alignment(0.96, -0.28),
    colors: [Color(0xFF1BAC4B), Color(0xFF46D375)],
  );

  static const Gradient yellowGradient =  LinearGradient(
    begin: Alignment(-0.96, 0.28),
    end: Alignment(0.96, -0.28),
    colors: [Color(0xFFFACC15), Color(0xFFFFE580)],
  );

  static const Gradient blueGradient = LinearGradient(
    begin: Alignment(-0.96, 0.28),
    end: Alignment(0.96, -0.28),
    colors: [Color(0xFF246BFD), Color(0xFF4F89FF)],
  );

  static const Gradient orangeGradient = LinearGradient(
  begin: Alignment(-0.96, 0.28),
  end: Alignment(0.96, -0.28),
  colors: [Color(0xFFFB9400), Color(0xFFFFAB38)],
  );

  static const Gradient redGradient = LinearGradient(
  end: Alignment(-0.96, 0.28),
  begin: Alignment(0.96, -0.28),
  colors: [Color(0xFFFF4D67), Color(0xFFFF8A9B)],
  );




}