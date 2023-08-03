import 'package:flutter/material.dart';
import 'package:m2_exam/core/constants/constants.dart';
import 'package:m2_exam/core/widgets/styles.dart';
import 'package:m2_exam/screens/main/pages/home/model/farm_item_chicken_model.dart';
import 'package:m2_exam/screens/main/pages/home/model/farm_item_model.dart';

class FarmChickenItemsWidget extends StatefulWidget {
  final FarmItemChicken cItem;
  const FarmChickenItemsWidget({Key? key, required this.cItem}) : super(key: key);

  @override
  State<FarmChickenItemsWidget> createState() => _FarmChickenItemsWidgetState();
}

class _FarmChickenItemsWidgetState extends State<FarmChickenItemsWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 155,
        height: 242,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: AppColors.C_DDDDDD),
        ),
        child: Column(
          children: [
            Image.asset(widget.cItem.image,),
            SizedBox(height: MediaQuery.of(context).size.height*0.024,),
            Text(widget.cItem.name, style: AppStyle.fontAbelW40055(appcolor: Colors.black),),
            SizedBox(height: MediaQuery.of(context).size.height*0.0024,),
            Text(widget.cItem.age, style: AppStyle.fontAvenirW700(appcolor: Colors.black),),
            SizedBox(height: MediaQuery.of(context).size.height*0.016,),
            Container(
              width: 145,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.blueGrey[100],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(child: Text(widget.cItem.cost,style: AppStyle.fontAbelW700c(appcolor: Colors.black),)),
            )
          ],
        ),
      ),
    );
  }
}
