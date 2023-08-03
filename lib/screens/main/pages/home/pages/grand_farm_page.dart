import 'package:flutter/material.dart';
import 'package:m2_exam/core/constants/constants.dart';
import 'package:m2_exam/core/widgets/styles.dart';

class GrandFarmPage extends StatelessWidget {
  const GrandFarmPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(AppImages.fermaImage3),
        Positioned(
          top: 10,
          left: 10,
          child: Container(
            width: 42,
            height: 21,
            child: Center(
                child: Text(
                  "101",
                  style: TextStyle(color: Colors.white, fontSize: 10),
                )),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: Colors.green),
          ),
        ),
        Positioned(
            left: 10,
            top: 105,
            child: Text(
              "Ina Ferma",
              style:
              AppStyle.fontAvenirW700(appcolor: Colors.white),
            )),
        Positioned(
            left: 10,
            top: 125,
            child: Text(
              "Eng yaxshi fermalardan biri...",
              style:
              AppStyle.fontAvenirW400(appcolor: Colors.white),
            )),
        Positioned(
          top: 113,
          left: 237,
          child: Container(
            width: 35,
            height: 24,
            child: Center(
                child: Text(
                  "Ot",
                  style: TextStyle(color: Colors.white, fontSize: 10),
                )),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: AppColors.C_FF8843),
          ),
        ),
        Positioned(
          top: 113,
          left: 277,
          child: Container(
            width: 43,
            height: 24,
            child: Center(
                child: Text(
                  "+11",
                  style: TextStyle(color: Colors.white, fontSize: 10),
                )),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: AppColors.C_FF8843),
          ),
        ),
      ],
    );
  }
}
