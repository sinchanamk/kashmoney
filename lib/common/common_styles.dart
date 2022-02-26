import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'color.dart';

class CommonStyles {
  CommonStyles._();

  static textField16w500primary() {
    return GoogleFonts.montserrat(
        textStyle: const TextStyle(
            letterSpacing: 0.3,
            fontSize: 16,
            color: ColorsConsts.primary,
            fontWeight: FontWeight.w500,
            fontFamily: 'Montserrat'));
  }

  static textField16w500primarypink() {
    return GoogleFonts.montserrat(
        textStyle: const TextStyle(
            letterSpacing: 0.3,
            fontSize: 16,
            color: ColorsConsts.primary,
            fontWeight: FontWeight.w500,
            fontFamily: 'Montserrat'));
  }

  static textField16w500yellow() {
    return GoogleFonts.montserrat(
        textStyle: const TextStyle(
            letterSpacing: 0.3,
            fontSize: 16,
            color: Color.fromARGB(255, 245, 160, 3),
            fontWeight: FontWeight.w500,
            fontFamily: 'Montserrat'));
  }

  static textField16w500amber() {
    return GoogleFonts.montserrat(
        textStyle: const TextStyle(
            letterSpacing: 0.3,
            fontSize: 16,
            color: ColorsConsts.amber,
            fontWeight: FontWeight.w500,
            fontFamily: 'Montserrat'));
  }

  static textField16w700red() {
    return GoogleFonts.montserrat(
        textStyle: const TextStyle(
            letterSpacing: 0.3,
            fontSize: 17,
            color: ColorsConsts.red,
            fontWeight: FontWeight.w500,
            fontFamily: 'Montserrat'));
  }

  static textField16w700blue() {
    return GoogleFonts.montserrat(
        textStyle: const TextStyle(
            letterSpacing: 0.3,
            fontSize: 17,
            color: ColorsConsts.blue,
            fontWeight: FontWeight.w700,
            fontFamily: 'Montserrat'));
  }

  static textField16w500red() {
    return GoogleFonts.montserrat(
        textStyle: const TextStyle(
            letterSpacing: 0.3,
            fontSize: 16,
            color: Colors.red,
            fontWeight: FontWeight.w500,
            fontFamily: 'Montserrat'));
  }

  static textField16w500green() {
    return GoogleFonts.montserrat(
        textStyle: const TextStyle(
            letterSpacing: 0.3,
            fontSize: 16,
            color: ColorsConsts.green,
            fontWeight: FontWeight.w700,
            fontFamily: 'Montserrat'));
  }

  static textField16w700primary() {
    return GoogleFonts.montserrat(
        textStyle: const TextStyle(
            letterSpacing: 0.3,
            fontSize: 18,
            color: Color.fromARGB(255, 121, 10, 2),
            fontWeight: FontWeight.w700,
            fontFamily: 'Montserrat'));
  }

  static appBarField16w600primary() {
    return GoogleFonts.montserrat(
        textStyle: const TextStyle(
            fontSize: 22,
            color: ColorsConsts.primary,
            backgroundColor: ColorsConsts.white,
            fontWeight: FontWeight.w500,
            fontFamily: 'Montserrat'));
  }

  static submitTextStyle15w600white() {
    return GoogleFonts.montserrat(
        textStyle: const TextStyle(
            letterSpacing: 0.1,
            color: Colors.white,
            backgroundColor: Color.fromARGB(0, 197, 196, 196),
            fontSize: 20,
            fontWeight: FontWeight.w600,
            fontFamily: 'Montserrat'));
  }

  static loginTextStyle() {
    return GoogleFonts.montserrat(
        textStyle: const TextStyle(
            // letterSpacing: 0.5,
            color: ColorsConsts.white,
            backgroundColor: ColorsConsts.primary,
            fontSize: 22,
            fontWeight: FontWeight.w700,
            fontFamily: 'Montserrat'));
  }

  static subheaderText20w600() {
    return GoogleFonts.montserrat(
        textStyle: const TextStyle(
            color: ColorsConsts.primary,
            backgroundColor: Colors.white,
            letterSpacing: 0.2,
            fontSize: 18,
            fontWeight: FontWeight.w600,
            fontFamily: 'Montserrat'));
  }

  static genderTextStyle() {
    return GoogleFonts.montserrat(
        textStyle: TextStyle(
            color: Colors.brown[900],
            backgroundColor: Colors.transparent,
            fontSize: 16,
            fontWeight: FontWeight.w400,
            fontFamily: 'Montserrat'));
  }

  static sendOTPButtonTextStyle() {
    return GoogleFonts.montserrat(
        textStyle: const TextStyle(
      color: ColorsConsts.primary,
      
      // backgroundColor: Colors.transparent,
      fontSize: 15,
      fontWeight: FontWeight.w600,
    ));
  }

  static text15w900robotowhite() {
    return GoogleFonts.montserrat(
        textStyle: const TextStyle(
      color: Colors.white,

      // backgroundColor: Colors.transparent,
      fontSize: 16,
      fontWeight: FontWeight.w600,
    ));
  }

  static errorTextStyleStyle() {
    return GoogleFonts.montserrat(
        textStyle: const TextStyle(
      color: Colors.redAccent,
      backgroundColor: Colors.transparent,
      fontSize: 14,
      letterSpacing: 0.1,
      fontWeight: FontWeight.w500,
    ));
  }

  static normalTextBrown() {
    return GoogleFonts.roboto(
        textStyle: const TextStyle(
            color: ColorsConsts.primary,
            fontSize: 13,
            fontWeight: FontWeight.w900,
            fontFamily: 'Montserrat'));
  }

  static normalTextPurple() {
    return GoogleFonts.roboto(
        textStyle: const TextStyle(
            color: Color.fromARGB(255, 77, 1, 112),
            backgroundColor: Colors.transparent,
            fontSize: 18,
            letterSpacing: 0.1,
            fontWeight: FontWeight.w900,
            fontFamily: 'Montserrat'));
  }

  static normalTextBlue() {
    return GoogleFonts.montserrat(
        textStyle: const TextStyle(
            color: Color.fromARGB(255, 3, 125, 182),
            backgroundColor: Colors.transparent,
            fontSize: 16,
            letterSpacing: 0.1,
            fontWeight: FontWeight.w600,
            fontFamily: 'Montserrat'));
  }

  static normalTextBlue14() {
    return GoogleFonts.montserrat(
        textStyle: const TextStyle(
            color: Color.fromARGB(255, 3, 125, 182),
            backgroundColor: Colors.transparent,
            fontSize: 15,
            letterSpacing: 0.1,
            fontWeight: FontWeight.w500,
            fontFamily: 'Montserrat'));
  }

  static textHeader16w900() {
    return GoogleFonts.montserrat(
        textStyle: const TextStyle(
            color: Color.fromARGB(255, 54, 14, 0),
            backgroundColor: Colors.transparent,
            fontSize: 18,
            letterSpacing: 0.1,
            fontWeight: FontWeight.w800,
            fontFamily: 'Montserrat'));
  }

  static labelText16w500Black() {
    return GoogleFonts.montserrat(
        textStyle: const TextStyle(
            color: Color.fromARGB(255, 0, 0, 0),
            backgroundColor: Colors.transparent,
            fontSize: 16,
            letterSpacing: 0.3,
            fontWeight: FontWeight.w600,
            fontFamily: 'Montserrat'));
  }

  static labelText15w500Blue() {
    return GoogleFonts.montserrat(
        textStyle: const TextStyle(
            color: ColorsConsts.primary,
            backgroundColor: Colors.transparent,
            fontSize: 15,
            letterSpacing: 0.3,
            fontWeight: FontWeight.w500,
            fontFamily: 'Montserrat'));
  }

  static labelText15w500White() {
    return GoogleFonts.montserrat(
        textStyle: const TextStyle(
            color: Colors.white,
            
            fontSize: 14,
            letterSpacing: 0.2,
            fontWeight: FontWeight.w500,
            fontFamily: 'Montserrat'));
  }

  static labelText15w500Grey() {
    return GoogleFonts.montserrat(
        textStyle: const TextStyle(
            color: Color.fromARGB(255, 51, 51, 51),
            backgroundColor: Colors.transparent,
            fontSize: 13,
            letterSpacing: 0.2,
            fontWeight: FontWeight.w500,
            fontFamily: 'Montserrat'));
  }
}
