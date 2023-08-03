import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:m2_exam/core/constants/constants.dart';
import 'package:m2_exam/core/widgets/styles.dart';
import 'package:m2_exam/routes/app_routes.dart';
import 'package:m2_exam/screens/auth/login/widgets/login_decoration.dart';
import 'package:m2_exam/screens/auth/login/widgets/login_with_platform.dart';
import 'package:m2_exam/screens/auth/regiester/widgets/sign_account_text.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool light = true;
  bool isValidate = false;


  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SvgPicture.asset(AppIcons.backIcon),
                  Image.asset(AppImages.registerImage),
                  TextFormField(
                      controller: emailController,
                      decoration: LoginTextFieldDecoration.decoration(
                        hintText: 'Email',
                      ),
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return 'This field is required';
                        }
                        if (value.trim().length < 4) {
                          return 'Username must be at least 4 characters in length';
                        }
                      },
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.012),
                  TextFormField(
                      controller: passwordController,
                      decoration: LoginTextFieldDecoration.decoration(
                        hintText: 'Password',
                      ),
                      obscureText: false,
                      validator: (value) {
                        if (value == null ||value.trim().isEmpty) {
                          return 'This field is required';
                        }
                        if (value.trim().length < 8) {
                          return 'Password must be at least 8 characters in length';
                        }
                      },

                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.012),
                  TextFormField(
                    keyboardType: TextInputType.number,
                      controller: phoneNumberController,
                      decoration: LoginTextFieldDecoration.decoration(
                        hintText: 'Phone Number',
                      ),
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return 'This field is required';
                        }
                        if (value.trim().length < 8) {
                          return 'Password must be at least 8 characters in length';
                        }
                      },

                    /*  onChanged: (value){
                        if(value.trim().length > 8){
                          setState(() {
                            isValidate = true;
                          });
                        }else{
                          setState(() {
                            isValidate = false;
                          });
                        }
                      }*/
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.024),
                  const LoginWithPlatformWidget(),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.024),
                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Image.asset(AppImages.facebookImage),
                            SizedBox(
                              width: 10,
                            ),
                            Text("Facebook",
                                style: AppStyle.fontAcmeW400(appcolor: Colors.black)
                                    .copyWith(fontSize: 14))
                          ],
                        ),
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          backgroundColor: AppColors.C_0088DC.withOpacity(0.1),
                          fixedSize: Size(150, 50),
                          padding: const EdgeInsets.symmetric(
                              vertical: 4, horizontal: 24),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),),
                        ),
                      ),
                      Spacer(),
                      ElevatedButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Image.asset(AppImages.googleImage),
                            SizedBox(
                              width: 10,
                            ),
                            Text("Google",
                                style: AppStyle.fontAcmeW400(appcolor: Colors.black)
                                    .copyWith(fontSize: 14))
                          ],
                        ),
                        style: ElevatedButton.styleFrom(
                            elevation: 0,
                            backgroundColor: AppColors.C_0088DC.withOpacity(0.1),
                            padding: const EdgeInsets.symmetric(
                                vertical: 4, horizontal: 32),
                            fixedSize: Size(150, 50),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))
                        ),
                      ),

                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          if (emailController.text.isNotEmpty &&
                              passwordController.text.isNotEmpty &&
                              phoneNumberController.text.isNotEmpty) {
                            saveSignUp(context);
                          }
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text("Ma'lumot to'liq emas",style: TextStyle(fontSize: 20,color: Colors.red),),
                              duration: Duration(seconds: 3),
                            ),
                          );
                        }
                      },
                      style: ElevatedButton.styleFrom(
                          elevation: 0,
                          backgroundColor: AppColors.C_FF8843,
                          padding: const EdgeInsets.symmetric(
                              vertical: 18, horizontal: 40),
                          fixedSize: Size(160, 53),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))
                      ),
                      child: Text("Register",
                        style: AppStyle.fontAcmeW700(appcolor: Colors.white)
                            .copyWith(fontSize: 20),textAlign: TextAlign.center,),
                    ),
                  ),
                  Center(child: const SignAccountTextWidget())
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
  void saveSignUp(context)async{
    SharedPreferences pref=await SharedPreferences.getInstance();
    pref.setBool("isRegister", true);

    Navigator.pushNamedAndRemoveUntil(context, AppRoutes.mainPage, (route) => false);
  }
}
