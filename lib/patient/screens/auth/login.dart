import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projectfinal/core/color_config/color.dart';
import 'package:projectfinal/patient/nav_pages/main_page.dart';
import 'package:projectfinal/patient/screens/auth/signup_screen.dart';
import 'package:projectfinal/patient/screens/common/custom_form_button.dart';
import 'package:projectfinal/patient/screens/common/custom_input_field.dart';
import 'package:projectfinal/patient/screens/common/page_header.dart';
import 'package:projectfinal/patient/screens/common/page_heading.dart';



class LogInPatient extends StatelessWidget {
  LogInPatient({Key? key}) : super(key: key);
  final _loginFormKey = GlobalKey<FormState>();
  var _email = TextEditingController();
  var _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;

    return Scaffold(
      backgroundColor: const Color(0xffEEF1F3),
      body: Column(
        children: [
          const PageHeader(),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(20),
                ),
              ),
              child: SingleChildScrollView(
                child: Form(
                  key: _loginFormKey,
                  child: Column(
                    children: [
                      const PageHeading(
                        title: 'Log-in',
                      ),
                      CustomInputField(
                        prefixIcon: true,
                        IsEmail: true,
                        suffixIcon: false,
                        onSave: (value) {
                          // controller.email = value!;
                        },
                        validator: (value) {
                          if (value!.isEmpty || !value.contains("@")) {
                            return "Please enter your email";
                          }
                          if (value == null) {
                            print('error');
                          }
                        },
                        labelText: 'Email',
                        hintText: 'Your email id',
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      CustomInputField(
                        prefixIcon: false,
                        IsEmail: false,
                        onSave: (value) {
                          //  controller.password = value!;
                        },
                        validator: (value) {
                          if (value!.isEmpty || value.length < 7) {
                            return "Please enter your password";
                          }
                          if (value == null) {
                            print('error');
                          }
                        },
                        labelText: 'Password',
                        hintText: 'Your password',
                        obscureText: true,
                        suffixIcon: true,
                      ),
                      const SizedBox(
                        height: 16,
                      ),

                      const SizedBox(
                        height: 20,
                      ),
                      CustomFormButton(
                        innerText: 'Login',
                        onPressed: () {
                          Get.to(MainPatientScreen());
                        },
                      ),
                      SizedBox(height: 18,),
                      Container(
                        width: size.width * 0.8,
                        decoration: BoxDecoration(
                          color: const Color(0xff233743),
                          borderRadius: BorderRadius.circular(26),
                        ),
                        child: TextButton(
                            onPressed: () {
                             // controller.googleSignInMethod();
                            },
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(CommunityMaterialIcons.google_plus,
                                  color: Palette.wColor, size: 29,),
                                SizedBox(width: 3,),
                                Text("Google", style: TextStyle(
                                    fontSize: 22, color: Colors.blue),),
                              ],
                            )
                        ),
                      ),
                      const SizedBox(
                        height: 18,
                      ),
                      SizedBox(
                        width: size.width * 0.8,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Don\'t have an account ? ',
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Color(0xff939393),
                                  fontWeight: FontWeight.bold),
                            ),
                            GestureDetector(
                              onTap: () =>
                              {
                                Get.to(SignUpScreen()),
                              },
                              child: const Text(
                                'Sign-up',
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Color(0xff748288),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),


        ],
      ),
    );

  }
}
