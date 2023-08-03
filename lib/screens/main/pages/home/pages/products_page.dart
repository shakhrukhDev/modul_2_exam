import 'package:flutter/material.dart';
import 'package:m2_exam/core/constants/constants.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: BouncingScrollPhysics(),
      // make it horizontal
      scrollDirection: Axis.horizontal,
      children: [
        Container(
            padding: EdgeInsets.only(left: 10, top: 5, bottom: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            alignment: Alignment.center,
            child: Image.asset(AppImages.eggImage)),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.04,
        ),
        Container(
            padding: EdgeInsets.only(top: 5, bottom: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            alignment: Alignment.center,
            child: Image.asset(AppImages.meatImage)),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.04,
        ),
        Container(
            padding: EdgeInsets.only(top: 5, bottom: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            alignment: Alignment.center,
            child: Image.asset(AppImages.milkImage)),
      ],
    );
  }
}
