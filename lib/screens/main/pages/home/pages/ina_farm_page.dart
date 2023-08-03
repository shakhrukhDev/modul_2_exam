import 'package:flutter/material.dart';
import 'package:m2_exam/core/constants/constants.dart';
import 'package:m2_exam/core/widgets/styles.dart';

class InaFarmPage extends StatelessWidget {
  const InaFarmPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Stack(
      children: [
        Image.asset(AppImages.fermaImage2),
        Positioned(
          top: 10,
          left: 10,
          child: Container(
            width: 42,
            height: 21,
            child: Center(
                child: Text(
                  "140",
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
          left: 275,
          child: Container(
            width: 45,
            height: 24,
            child: Center(
                child: Text(
                  "Sigir",
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
