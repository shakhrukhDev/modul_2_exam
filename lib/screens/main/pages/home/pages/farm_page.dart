import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:m2_exam/core/constants/constants.dart';
import 'package:m2_exam/core/widgets/styles.dart';
import 'package:m2_exam/screens/main/pages/home/model/farm_item_chicken_model.dart';
import 'package:m2_exam/screens/main/pages/home/model/farm_item_model.dart';
import 'package:m2_exam/screens/main/pages/home/pages/grand_farm_page.dart';
import 'package:m2_exam/screens/main/pages/home/pages/ina_farm_page.dart';
import 'package:m2_exam/screens/main/pages/home/pages/products_page.dart';
import 'package:m2_exam/screens/main/pages/home/widgets/farm_chicken_items_widget.dart';
import 'package:m2_exam/screens/main/pages/home/widgets/farm_items_widget.dart';

class FarmPage extends StatefulWidget {
  const FarmPage({Key? key}) : super(key: key);

  @override
  State<FarmPage> createState() => _FarmPageState();
}

class _FarmPageState extends State<FarmPage> {

  List<String> item = ["Sigir","Ot","Tovuq","Sigir","Qo'y","Jo'ja","Qo'y"];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Colors.white,
            leading: GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: Stack(
                  alignment: AlignmentDirectional.center,
                  children: <Widget>[
                    Image.asset(AppImages.ellips),
                    SvgPicture.asset(AppIcons.backIcon)
                  ]),
            ),
            pinned: true,
            expandedHeight: 280,
            flexibleSpace: FlexibleSpaceBar(
                background: Stack(
                  fit: StackFit.expand,
                  children: [
                    Stack(
                      children: [
                        Image.asset(AppImages.inaFerma4, fit: BoxFit.cover,),
                        Positioned(
                            left: 15,
                            top: 181,
                            child: Text(
                              "Ina Ferma", style: AppStyle.fontAbhayaLibreW700(appcolor: Colors.white),)),
                        Positioned(
                          top: 220,
                          left: 15,
                          child: Container(
                            width: 76,
                            height: 50,
                            child: Center(child: Text("172 \nXaridorlar",style: AppStyle.fontAcmeW700(appcolor: Colors.white),)),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey[600]
                            ),
                          ),),
                        Positioned(
                          top: 220,
                          left: 96,
                          child: Container(
                            width: 50,
                            height: 50,
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: SvgPicture.asset(AppIcons.comment),
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color:Colors.grey[600]
                            ),
                          ),),
                      ],
                    ),
                  ],
                )
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: MediaQuery.of(context).size.height*0.005,),
                  SizedBox(
                    height: 40,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: item.length,
                      itemBuilder:(context, index) => Container(
                        width: 74,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white38,
                        ),
                        child: Center(child: Text(item[index])),
                      ), separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(width: 5,);
                    },
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height*0.008,),
                  Text("Sigir", style: AppStyle.fontAbelW400(appcolor:Colors.black),),
                  SizedBox(
                    height: 540,
                    child: GridView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 10,
                          childAspectRatio: 155/242,
                        ),
                        itemCount: FarmItem.farmItems.length,
                        itemBuilder:(context, index) => SizedBox(
                          child: FarmItemsWidget(mItem: FarmItem.farmItems[index]),
                        )),
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
                  Text("Tovuq", style: AppStyle.fontAbelW400(appcolor:Colors.black),),
                  SizedBox(
                    height: 540,
                    child: GridView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 10,
                          childAspectRatio: 155/242,
                        ),
                        itemCount: FarmItemChicken.farmItemsChicken.length,
                        itemBuilder:(context, index) => SizedBox(
                          child: FarmChickenItemsWidget(cItem:FarmItemChicken.farmItemsChicken[index]),
                        )),
                  ),
                  InaFarmPage(),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.024,
                  ),
                  GrandFarmPage(),
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}

