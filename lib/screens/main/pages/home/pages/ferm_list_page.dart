import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:m2_exam/core/constants/constants.dart';
import 'package:m2_exam/core/widgets/styles.dart';
import 'package:m2_exam/routes/app_routes.dart';

class FermListPage extends StatelessWidget {
  const FermListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ListView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      children: [
        GestureDetector(
          onTap: (){
            Navigator.pushNamed(context, AppRoutes.farmPage);
          },
          child: Stack(
            children: [
              Container(
                width: 160,
                height: 138,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset(
                  AppImages.sigirFerma1,
                ),
              ),
              Positioned(
                  top: 95,
                  left: 12,
                  right: 75,
                  bottom: 15,
                  child: Text(
                    "Ina Ferma",
                    style: AppStyle.fontAbelW40055(
                        appcolor: Colors.white),
                  ))
            ],
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.024,
        ),
        Stack(
          children: [
            Container(
              width: 160,
              height: 138,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.asset(
                AppImages.sigirFerma1,
              ),
            ),
            Positioned(
                top: 95,
                left: 12,
                right: 65,
                bottom: 15,
                child: Text(
                  "Sigir Ferma",
                  style: AppStyle.fontAbelW40055(
                      appcolor: Colors.white),
                ))
          ],
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.024,
        ),
        Stack(
          children: [
            Container(
              width: 160,
              height: 138,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.asset(
                AppImages.sigirFerma1,
              ),
            ),
            Positioned(
                top: 95,
                left: 12,
                right: 65,
                bottom: 15,
                child: Text(
                  "Sigir Ferma",
                  style: AppStyle.fontAbelW40055(
                      appcolor: Colors.white),
                ))
          ],
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.024,
        ),
        Stack(
          children: [
            Container(
              width: 160,
              height: 138,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.asset(
                AppImages.sigirFerma1,
              ),
            ),
            Positioned(
                top: 95,
                left: 12,
                right: 65,
                bottom: 15,
                child: Text(
                  "Sigir Ferma",
                  style: AppStyle.fontAbelW40055(
                      appcolor: Colors.white),
                ))
          ],
        ),
      ],
    );
  }
}
