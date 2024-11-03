import 'package:flutter/material.dart';
import 'package:responsive_dashboard/constants.dart';

abstract class AppStyles {
  //Regular:
  static const styleRegular12 = TextStyle(
    color: kSubtitlesColor,
    fontSize: 12,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w400,
    height: 0,
  );

  static const styleRegular14 = TextStyle(
    color: kSubtitlesColor,
    fontSize: 14,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w400,
    height: 0,
  );

  static const styleRegular16 = TextStyle(
    color: kTitlesColor,
    fontSize: 16,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w400,
    height: 0,
  );

//--------------------------------------------------------------------------------

//Medium:
  static const styleMedium16 = TextStyle(
    color: kTitlesColor,
    fontSize: 16,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w500,
    height: 0,
  );

  static const styleMedium20 = TextStyle(
    color: Colors.white,
    fontSize: 20,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w500,
    height: 0,
  );

//--------------------------------------------------------------------------------

//SemiBold:
  static const styleSemiBold16 = TextStyle(
    color: kTitlesColor,
    fontSize: 16,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
    height: 0,
  );

  static const styleSemiBold18 = TextStyle(
    color: Colors.white,
    fontSize: 18,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
    height: 0,
  );

  static const styleSemiBold20 = TextStyle(
    color: kTitlesColor,
    fontSize: 20,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
    height: 0,
  );

  static const styleSemiBold24 = TextStyle(
    color: kPrimaryColor,
    fontSize: 24,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
    height: 0,
  );

//--------------------------------------------------------------------------------

//Bold:
  static const styleBold16 = TextStyle(
    color: kPrimaryColor,
    fontSize: 16,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w700,
    height: 0,
  );
}
