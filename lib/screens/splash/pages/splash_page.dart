import 'package:flutter/material.dart';
import 'package:m2_exam/core/constants/constants.dart';
import 'package:m2_exam/core/widgets/styles.dart';
import 'package:m2_exam/routes/app_routes.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  bool isRegister = false;
  Future<bool> isSignUp()async{
    SharedPreferences pref=await SharedPreferences.getInstance();
    isRegister=pref.getBool('isRegister')?? false;
    return pref.getBool('isRegister')?? false;
  }
  @override
  void initState() {
   super.initState();
   isSignUp();
   Future.delayed(const Duration(seconds: 3)).then((value) {
     isRegister?Navigator.pushReplacementNamed(context, AppRoutes.mainPage):Navigator.pushReplacementNamed(context, AppRoutes.registerPage);
   }
   );

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.C_FF8843,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(AppImages.splashLogo),
            SizedBox(height: MediaQuery.of(context).size.height * 0.024),
            Text(
              "Smart Farm",
              style: AppStyle.fontAbelW400(appcolor: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
