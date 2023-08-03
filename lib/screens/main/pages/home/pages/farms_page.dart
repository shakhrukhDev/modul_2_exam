import 'package:flutter/material.dart';
import 'package:m2_exam/core/constants/constants.dart';
import 'package:m2_exam/core/widgets/styles.dart';

class FarmsPage extends StatelessWidget {
  const FarmsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Fermalar",
          style: AppStyle.fontAbelW400(appcolor: Colors.black),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.024,
        ),
        Row(),
        Stack(
          children: [
            Image.asset(AppImages.fermaImage),
            Positioned(
              top: 10,
              left: 10,
              child: Container(
                width: 42,
                height: 21,
                child: Center(
                    child: Text(
                      "172",
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
              left: 187,
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
                      "+12",
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    )),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: AppColors.C_FF8843),
              ),
            ),
          ],
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.024,
        ),
        Stack(
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
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.024,
        ),
        Stack(
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
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.024,
        ),
        Stack(
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
                      "46",
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
              left: 234,
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
            Positioned(
              top: 113,
              left: 284,
              child: Container(
                width: 36,
                height: 24,
                child: Center(
                    child: Text(
                      "+5",
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    )),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: AppColors.C_FF8843),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
