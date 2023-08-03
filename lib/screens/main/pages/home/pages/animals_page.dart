import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:m2_exam/core/constants/constants.dart';

class AnimalsPage extends StatelessWidget {
  const AnimalsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: BouncingScrollPhysics(),
      // make it horizontal
      scrollDirection: Axis.horizontal,
      children: [
        Stack(
          children: [
            Container(
                margin: const EdgeInsets.all(10),
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.orange[200],
                ),
                alignment: Alignment.center,
                child: Text("")),
            Positioned(left: 20, top: 20, child: Text("Sigir")),
            Positioned(
                top: 55,
                left: 55,
                child: SvgPicture.asset(AppIcons.backIcon))
          ],
        ),
        Stack(
          children: [
            Container(
                margin: const EdgeInsets.all(10),
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.yellow[300],
                ),
                alignment: Alignment.center,
                child: Text("")),
            Positioned(left: 20, top: 20, child: Text("Tovuq")),
            Positioned(
                top: 55,
                left: 55,
                child: SvgPicture.asset(AppIcons.backIcon))
          ],
        ),
        Stack(
          children: [
            Container(
                margin: const EdgeInsets.all(10),
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[300],
                ),
                alignment: Alignment.center,
                child: Text("")),
            Positioned(left: 20, top: 20, child: Text("Qo'y")),
            Positioned(
                top: 55,
                left: 55,
                child: SvgPicture.asset(AppIcons.backIcon))
          ],
        ),
        Stack(
          children: [
            Container(
                margin: const EdgeInsets.all(10),
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue[300],
                ),
                alignment: Alignment.center,
                child: Text("")),
            Positioned(left: 20, top: 20, child: Text("Ot")),
            Positioned(
                top: 55,
                left: 55,
                child: SvgPicture.asset(AppIcons.backIcon))
          ],
        ),
      ],
    );
  }
}
