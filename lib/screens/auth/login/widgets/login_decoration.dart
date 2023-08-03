import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:m2_exam/core/constants/constants.dart';
import 'package:m2_exam/core/widgets/styles.dart';

class LoginTextFieldDecoration {
  static InputDecoration decoration({
    required String hintText,
  }) {
    return InputDecoration(
      hintText: hintText,
      hintStyle: AppStyle.fontAbhayaLibreW700(appcolor: AppColors.C_999999)
          .copyWith(fontSize: 16),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
      ),
    );
  }



}
