import 'package:flutter/material.dart';

import 'package:responsive_dashboard/constants.dart';

abstract class AppStyles {
  //todo Regular:
  static TextStyle styleRegular12(BuildContext context) {
    return TextStyle(
      color: kSubtitlesColor,
      fontSize: getResponsiveFontSize(fontSize: 12, context),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
      height: 0,
    );
  }

  static TextStyle styleRegular14(BuildContext context) {
    return TextStyle(
      color: kSubtitlesColor,
      fontSize: getResponsiveFontSize(fontSize: 14, context),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
      height: 0,
    );
  }

  static TextStyle styleRegular16(BuildContext context) {
    return TextStyle(
      color: kTitlesColor,
      fontSize: getResponsiveFontSize(fontSize: 16, context),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
      height: 0,
    );
  }

//--------------------------------------------------------------------------------

//todo Medium:
  static TextStyle styleMedium16(BuildContext context) {
    return TextStyle(
      color: kTitlesColor,
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
      height: 0,
    );
  }

  static TextStyle styleMedium20(BuildContext context) {
    return TextStyle(
      color: Colors.white,
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
      height: 0,
    );
  }

//--------------------------------------------------------------------------------

//todo SemiBold:
  static TextStyle styleSemiBold16(BuildContext context) {
    return TextStyle(
      color: kTitlesColor,
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
      height: 0,
    );
  }

  static TextStyle styleSemiBold18(BuildContext context) {
    return TextStyle(
      color: Colors.white,
      fontSize: getResponsiveFontSize(context, fontSize: 18),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
      height: 0,
    );
  }

  static TextStyle styleSemiBold20(BuildContext context) {
    return TextStyle(
      color: kTitlesColor,
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
      height: 0,
    );
  }

  static TextStyle styleSemiBold24(BuildContext context) {
    return TextStyle(
      color: kPrimaryColor,
      fontSize: getResponsiveFontSize(context, fontSize: 24),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
      height: 0,
    );
  }

//--------------------------------------------------------------------------------

//todo Bold:
  static TextStyle styleBold16(BuildContext context) {
    return TextStyle(
      color: kPrimaryColor,
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w700,
      height: 0,
    );
  }
}

double getResponsiveFontSize(BuildContext context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsvieFontSize = scaleFactor * fontSize;
  double lowerLimit = fontSize * .8;
  double upperLimit = fontSize * 1.2;
  return responsvieFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(BuildContext context) {
  // ! another way without context:
  // PlatformDispatcher dispatcher = PlatformDispatcher.instance;
  // double physicalWidth = dispatcher.views.first.physicalSize.width;
  // double devicePexelRatio = dispatcher.views.first.devicePixelRatio;
  // double width = physicalWidth / devicePexelRatio;

  //! with context:
  double width = MediaQuery.sizeOf(context).width;

  if (width < 800) {
    return width / 1000;
  } else if (width < 1200) {
    return width / 1200;
  } else {
    return width / 1920;
  }
}
