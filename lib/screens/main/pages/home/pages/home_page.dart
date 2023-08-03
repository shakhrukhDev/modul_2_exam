import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:m2_exam/core/constants/constants.dart';
import 'package:m2_exam/core/widgets/styles.dart';
import 'package:m2_exam/routes/app_routes.dart';
import 'package:m2_exam/screens/main/pages/home/pages/animals_page.dart';
import 'package:m2_exam/screens/main/pages/home/pages/farms_page.dart';
import 'package:m2_exam/screens/main/pages/home/pages/ferm_list_page.dart';
import 'package:m2_exam/screens/main/pages/home/pages/products_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 10,),
              Row(
                children: [
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                          width: 230,
                          height: 190,
                          child: Image.asset(AppImages.cipImage)),
                      Positioned(
                        top: 154,
                        left: 10,
                        child: Container(
                          width: 63,
                          height: 29,
                          child: Center(
                              child: Text(
                            "5 dona",
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          )),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                              color: Colors.orange[200]),
                        ),
                      ),
                      Positioned(
                          left: 198,
                          bottom: 158,
                          child: CircleAvatar(
                            backgroundColor: AppColors.C_FF8843,
                            child: SvgPicture.asset(AppIcons.medkit),
                          ))
                    ],
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.04,
                  ),
                  Container(
                    width: 85,
                    height: 190,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: AppColors.C_DDDDDD)),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 47, left: 22, right: 23, bottom: 63),
                          child: Image.asset(
                            AppImages.cipEatImage,
                            width: 40,
                            height: 40,
                          ),
                        ),
                        Container(
                          width: 71,
                          height: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: AppColors.C_FF4949)),
                          child: Center(
                              child: Text(
                            "12%",
                            style: TextStyle(color: AppColors.C_FF4949),
                          )),
                        )
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.024,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.2,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: AppColors.C_DDDDDD)),
                child: Padding(
                  padding: const EdgeInsets.only(top: 20, left: 15),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Broller tovuq",
                            style:
                                AppStyle.fontAbelW400(appcolor: Colors.black),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.012,
                          ),
                          Text(
                            "Izoh",
                            style: AppStyle.fontAbxayaLibreW700(
                                appcolor: Colors.black),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.012,
                          ),
                          Text(
                            "Shu kunlari infektsiya tarqaldi \nva sizning tovuqlaringiz ham...",
                            style: TextStyle(color: AppColors.C_999999),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.024,
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 10),
                        width: MediaQuery.of(context).size.width * 0.24,
                        height: MediaQuery.of(context).size.height,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColors.C_FF8843,
                        ),
                        child: Center(
                            child: Text(
                          "55%",
                          style:
                              AppStyle.fontAbelW40055(appcolor: Colors.white),
                        )),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              const PhysicalModel(
                color: Colors.black,
                elevation: 6.0,
                shape: BoxShape.circle,
                child: CircleAvatar(
                  radius: 24.0,
                  backgroundColor: Colors.white,
                  child: Text(
                    "+",
                    style: TextStyle(fontSize: 24),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              const Center(
                child: Divider(
                  color: AppColors.C_DDDDDD,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.024,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Fermalar",
                    style: AppStyle.fontAbelW400(appcolor: Colors.black),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.024,
                  ),
                SizedBox(
                  width: double.infinity,
                  height: 130,
                  child:FermListPage(),
                )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.024,
              ),
              Row(
                children: [
                  Text(
                    "Hayvonlar",
                    style: AppStyle.fontAbelW400(appcolor: Colors.black),
                  ),
                  Spacer(),
                  Text(
                    "Barchasi",
                    style: AppStyle.fontAcmeW700(appcolor: Colors.black),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.012,
              ),
              SizedBox(
                width: double.infinity,
                height: 100,
                // implement ListView
                child: AnimalsPage(),
              ),
              Row(
                children: [
                  Text(
                    "Mahsulotlar",
                    style: AppStyle.fontAbelW400(appcolor: Colors.black),
                  ),
                  Spacer(),
                  Text(
                    "Barchasi",
                    style: AppStyle.fontAcmeW700(appcolor: Colors.black),
                  ),
                ],
              ),
              SizedBox(
                width: double.infinity,
                height: 100,
                // implement ListView
                child: ProductsPage(),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.024,
              ),
              FarmsPage(),
            ],
          ),
        ),
      ),
    ));
  }
}
