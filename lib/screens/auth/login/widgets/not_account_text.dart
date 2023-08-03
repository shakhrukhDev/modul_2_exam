import 'package:flutter/material.dart';
import 'package:m2_exam/core/widgets/styles.dart';
import 'package:m2_exam/routes/app_routes.dart';

class NotAccountTextWidget extends StatelessWidget {
  const NotAccountTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Don’t have an account?",),
        TextButton(onPressed: (){
          Navigator.pushReplacementNamed(context, AppRoutes.registerPage);
        }, child: Text("Sign Up", style: AppStyle.fontAcmeW400(appcolor: Colors.red),))
      ],
    );
  }
}
