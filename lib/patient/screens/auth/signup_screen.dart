import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projectfinal/patient/screens/auth/login.dart';
import 'package:projectfinal/patient/screens/common/custom_form_button.dart';
import 'package:projectfinal/patient/screens/common/custom_input_field.dart';
import 'package:projectfinal/patient/screens/common/page_header.dart';
import 'package:projectfinal/patient/screens/common/page_heading.dart';


class SignUpScreen extends StatelessWidget {
   SignUpScreen({Key? key}) : super(key: key);
  final _loginFormKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
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
                         //   controller.name = value!;
                          },
                          validator: (value) {
                            if (value!.isEmpty || value.length < 7) {
                              return "Please enter your full name";
                            }
                            if (value == null) {
                              print('error');
                            }
                          },
                          labelText: 'Name',
                          hintText: 'Enter full name',
                        ),
                        const SizedBox(
                          height: 16,
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
                         //   controller.password = value!;
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
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CustomFormButton(
                            innerText: 'SignUp',
                            onPressed: () {
                          /*    _loginFormKey.currentState!.save();

                              if (_loginFormKey.currentState!.validate()) {
                                controller.signUpWithEmailAndPassword();
                              }*/
                            },
                          ),
                        ),
                        SizedBox(height: 18,),

                        const SizedBox(
                          height: 18,
                        ),
                        SizedBox(
                          width: size.width * 0.8,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                'Do you  have an account ? ',
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Color(0xff939393),
                                    fontWeight: FontWeight.bold),
                              ),
                              GestureDetector(
                                onTap: () => {
                                  Get.to(LogInPatient()),
                                },
                                child: const Text(
                                  'Sign-in',
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
      ),
    );
  }
}
