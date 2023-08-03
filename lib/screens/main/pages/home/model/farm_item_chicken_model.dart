import 'package:m2_exam/core/constants/constants.dart';

class FarmItemChicken{
  String image;
  String name;
  String age;
  String cost;

  FarmItemChicken({
    required this.image,
    required this.name,
    required this.age,
    required this.cost
  });

  static List<FarmItemChicken>farmItemsChicken = [
    FarmItemChicken(image: AppImages.chicken1,name: "Tovuq", age: '5 oylik', cost: "900 000"),
    FarmItemChicken(image: AppImages.chicken2,name: "Tovuq", age: '2 oylik', cost: "600 000"),
    FarmItemChicken(image: AppImages.chicken3,name: "Tovuq", age: '5 oylik', cost: "900 000"),
    FarmItemChicken(image: AppImages.chicken4,name: "Tovuq", age: '2 oylik', cost: "600 000"),


  ];
}