import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppStyle {
  AppStyle._();

  static TextStyle fontAbhayaLibreW700({required Color appcolor}) {
    return GoogleFonts.leagueSpartan(
      textStyle: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w700,
        color: appcolor,
      ),
    );
  }

  static TextStyle fontAcmeW400({required Color appcolor}) {
    return GoogleFonts.leagueSpartan(
      textStyle: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: appcolor,
      ),
    );
  }

  static TextStyle fontAcmeW700({required Color appcolor}) {
    return GoogleFonts.leagueSpartan(
      textStyle: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w700,
        color: appcolor,
      ),
    );
  }

  static TextStyle fontAcmeW500({required Color appcolor}) {
    return GoogleFonts.leagueSpartan(
      textStyle: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500,
        color: appcolor,
      ),
    );
  }

  static TextStyle fontAbelW400({required Color appcolor}) {
    return GoogleFonts.abel(
      textStyle: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w400,
        color: appcolor,
      ),
    );
  }
  static TextStyle fontAbxayaLibreW700({required Color appcolor}) {
    return GoogleFonts.leagueSpartan(
      textStyle: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w700,
        color: appcolor,
      ),
    );
  }

  static TextStyle fontAbelW40055({required Color appcolor}) {
    return GoogleFonts.abel(
      textStyle: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: appcolor,
      ),
    );
  }

  static TextStyle fontAvenirW700({required Color appcolor}) {
    return GoogleFonts.average(
      textStyle: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w700,
        color: appcolor,
      ),
    );
  }


  static TextStyle fontAvenirW400({required Color appcolor}) {
    return GoogleFonts.average(
      textStyle: TextStyle(
        fontSize: 10,
        fontWeight: FontWeight.w400,
        color: appcolor,
      ),
    );
  }

  static TextStyle fontAbelW700c({required Color appcolor}) {
    return GoogleFonts.abel(
      textStyle: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w700,
        color: appcolor,
      ),
    );
  }
}