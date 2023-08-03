import 'package:flutter/material.dart';
import 'package:m2_exam/core/constants/constants.dart';
import 'package:m2_exam/core/widgets/styles.dart';
import 'package:m2_exam/screens/main/pages/home/model/farm_item_model.dart';

class FarmItemsWidget extends StatefulWidget {
final FarmItem mItem;
  const FarmItemsWidget({Key? key, required this.mItem}) : super(key: key);

  @override
  State<FarmItemsWidget> createState() => _FarmItemsWidgetState();
}

class _FarmItemsWidgetState extends State<FarmItemsWidget> {
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
            Image.asset(widget.mItem.image,),
           SizedBox(height: MediaQuery.of(context).size.height*0.024,),
            Text(widget.mItem.name, style: AppStyle.fontAbelW40055(appcolor: Colors.black),),
            SizedBox(height: MediaQuery.of(context).size.height*0.0024,),
            Text(widget.mItem.age, style: AppStyle.fontAvenirW700(appcolor: Colors.black),),
            SizedBox(height: MediaQuery.of(context).size.height*0.016,),
            Container(
              width: 145,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.blueGrey[100],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(child: Text(widget.mItem.cost,style: AppStyle.fontAbelW700c(appcolor: Colors.black),)),
            )
          ],
        ),
      ),
    );
  }
}
