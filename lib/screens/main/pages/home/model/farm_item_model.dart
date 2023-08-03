
import 'package:m2_exam/core/constants/constants.dart';

class FarmItem{
  String image;
  String name;
  String age;
  String cost;

  FarmItem({
    required this.image,
    required this.name,
    required this.age,
    required this.cost
  });

  static List<FarmItem>farmItems = [
    FarmItem(image: AppImages.cow1,name: "Golland sigiri", age: '1 yosh', cost: "5 000 000"),
    FarmItem(image: AppImages.cow2,name: "Golland sigiri", age: '6 oylik', cost: "2 000 000"),
    FarmItem(image: AppImages.cow3,name: "Golland sigiri", age: '1 yosh', cost: "5 000 000"),
    FarmItem(image: AppImages.cow4,name: "Golland sigiri", age: '6 oylik', cost: "2 000 000"),


  ];

}
