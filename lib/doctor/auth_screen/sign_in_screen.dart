
import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:projectfinal/core/color_config/color.dart';
import 'package:projectfinal/doctor/auth_screen/sign_up_screen.dart';
import 'package:projectfinal/doctor/main_page_doctor/main_doctor.dart';


class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  final _formKey = GlobalKey<FormState>();
  var _email = TextEditingController();
  var _username = TextEditingController();
  var _password = TextEditingController();
  bool isHiddenPassword = true;
  bool isRememberMe = false;
  bool isMale = true;

  void _isPassword() {
    setState(() {
      if (isHiddenPassword == true) {
        isHiddenPassword = false;
      } else {
        isHiddenPassword = true;
      }
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 20,
                    top: 20.0,
                  ),
                  child: Container(
                    height: 300,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 40),
                          child: Text(
                            "Welcome Doctor please SignIn",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.w700),
                          ),
                        ),
                        Center(
                            child: CircleAvatar(
                          radius: 100,
                          backgroundImage: AssetImage("assets/image/doctor.jpg"),

                        )
                        ),
                      ],
                    ),
                  ),
                ),
                TextForm(
                  Email: true,
                  icon: Icons.email_outlined,
                  hintText: "Email",
                  isEmail: true,
                  isHiddenPassword: false,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 20.0,
                    right: 20,
                    left: 20,
                    bottom: 20,
                  ),
                  child: TextFormField(
                    controller: _password,
                    obscureText: isHiddenPassword,
                    keyboardType: TextInputType.text,
                    validator: (value) {
                      if (value!.isEmpty || value.length < 5) {
                        return "Please enter your password";
                      }

                      return null;
                    },
                    decoration: InputDecoration(
                        fillColor: Colors.white.withOpacity(0.6),
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Palette.textColor1),
                          borderRadius: BorderRadius.all(Radius.circular(35.0)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Palette.textColor1),
                          borderRadius: BorderRadius.all(Radius.circular(35.0)),
                        ),
                        border: new OutlineInputBorder(
                          borderRadius: const BorderRadius.all(
                            const Radius.circular(30.0),
                          ),
                          borderSide: new BorderSide(
                            color: Colors.transparent,
                            width: 1.0,
                          ),
                        ),
                        contentPadding: EdgeInsets.symmetric(vertical: 20),
                        label: Text("Password"),
                        labelStyle: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.w600),
                        suffixIcon: IconButton(
                          onPressed: _isPassword,
                          icon: Icon(
                            isHiddenPassword
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: Palette.bColor,
                          ),
                        ),
                        prefixIcon: Icon(
                          CommunityMaterialIcons.lock,
                          color: Palette.bColor,
                        )),
                  ),
                ),

                Center(
                  child: Container(
                    margin: EdgeInsets.only(
                      right: 110,
                      left: 120,
                    ),
                    child: TextButton(
                      onPressed: () {
                     /*   if (_formKey.currentState!.validate()) {
                          print(_email.text);
                          print(_password.text);
                        }*/
                        print("logIn");
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>MainDoctor()));
                      },
                      style: TextButton.styleFrom(
                          side: BorderSide(width: 1, color: Colors.grey),
                          minimumSize: Size(150, 50),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          primary: Colors.white,
                          backgroundColor: Palette.bColor),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "LogIn",
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            CommunityMaterialIcons.login,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Or",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 20, left: 20, top: 15),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Signup with",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text("Signup with",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              )),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            TextButton(
                              onPressed: () {},
                              style: TextButton.styleFrom(
                                  side:
                                      BorderSide(width: 1, color: Colors.grey),
                                  minimumSize: Size(165, 50),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                  primary: Colors.white,
                                  backgroundColor: Palette.googleColor),
                              child: Row(
                                children: [
                                  Icon(
                                    CommunityMaterialIcons.google_plus,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "Google",
                                  )
                                ],
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              style: TextButton.styleFrom(
                                  side:
                                      BorderSide(width: 1, color: Colors.grey),
                                  minimumSize: Size(165, 50),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                  primary: Colors.white,
                                  backgroundColor: Palette.facebookColor),
                              child: Row(
                                children: [
                                  Icon(
                                    CommunityMaterialIcons.facebook,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "FaceBook",
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0,left: 20),
                      child: Text(
                        "OR  You can create a new account",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 118.0),
                      child: TextButton(
                          onPressed: () {
                            Navigator.push(context,
                            MaterialPageRoute(builder: (context)=>SignUp()));
                          },
                          child: Text(
                            "Create account",
                            style: TextStyle(color: Colors.red, fontSize: 16),
                          )),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/*
  Widget buildTextField(
      {IconData? icon,
      String? hintText,
      bool? isHiddenPassword,
      bool? isEmail,
      TextEditingController? controller,
      IconData? icons}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: TextField(
        controller: controller,
        obscureText: isHiddenPassword!,
        keyboardType:
            isEmail! ? TextInputType.emailAddress : TextInputType.text,
        decoration: InputDecoration(
          suffixIcon: GestureDetector(
            onTap: _ispssswords,
            child: Icon(
              icons,
              color: Palette.iconColor,
            ),
          ),
          prefixIcon: Icon(
            icon,
            color: Palette.iconColor,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Palette.textColor1),
            borderRadius: BorderRadius.all(Radius.circular(35.0)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Palette.textColor1),
            borderRadius: BorderRadius.all(Radius.circular(35.0)),
          ),
          contentPadding: EdgeInsets.all(10),
          hintText: hintText,
          hintStyle: TextStyle(fontSize: 14, color: Palette.textColor1),
        ),
      ),
    );
  }
}

 */
Widget TextForm({
  IconData? icon,
  String? hintText,
  bool? isHiddenPassword,
  bool? isEmail,
  TextEditingController? controller,
  IconData? icons,
  bool? Email,
}) {
  return Padding(
    padding: const EdgeInsets.only(
      top: 20.0,
      right: 20,
      left: 20,
    ),
    child: TextFormField(
      controller: controller,
      obscureText: isHiddenPassword!,
      keyboardType: isEmail! ? TextInputType.emailAddress : TextInputType.text,
      validator: Email!
          ? (value) {
              if (value!.isEmpty || !value.contains("@")) {
                return "Please enter your email";
              }
              return null;
            }
          : (value) {
              if (value!.isEmpty) {
                return "Please enter your name";
              }
              return null;
            },
      decoration: InputDecoration(
        fillColor: Colors.white.withOpacity(0.6),
        filled: true,
        prefixIcon: Icon(
          icon,
          color: Palette.bColor,
        ),
        suffixIcon: Icon(
          icons,
          color: Palette.bColor,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Palette.textColor1),
          borderRadius: BorderRadius.all(Radius.circular(35.0)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Palette.textColor1),
          borderRadius: BorderRadius.all(Radius.circular(35.0)),
        ),
        border: new OutlineInputBorder(
          borderRadius: const BorderRadius.all(
            const Radius.circular(30.0),
          ),
          borderSide: new BorderSide(
            color: Colors.transparent,
            width: 1.0,
          ),
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 20),
        hintText: hintText,
        hintStyle: TextStyle(
            fontSize: 20, color: Colors.black, fontWeight: FontWeight.w600),
      ),
    ),
  );
}

Widget buildPassword(
  bool? isHiddenPassword,
  TextEditingController? controller,
  Function() _isPassword,
) {
  return Padding(
    padding: const EdgeInsets.only(
      top: 20.0,
      right: 20,
      left: 20,
    ),
    child: TextFormField(
      controller: controller,
      obscureText: isHiddenPassword!,
      keyboardType: TextInputType.text,
      validator: (value) {
        if (value!.isEmpty || value.length < 5) {
          return "Please enter your password";
        }

        return null;
      },
      decoration: InputDecoration(
          fillColor: Colors.white.withOpacity(0.6),
          filled: true,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Palette.textColor1),
            borderRadius: BorderRadius.all(Radius.circular(35.0)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Palette.textColor1),
            borderRadius: BorderRadius.all(Radius.circular(35.0)),
          ),
          border: new OutlineInputBorder(
            borderRadius: const BorderRadius.all(
              const Radius.circular(30.0),
            ),
            borderSide: new BorderSide(
              color: Colors.transparent,
              width: 1.0,
            ),
          ),
          contentPadding: EdgeInsets.symmetric(vertical: 20),
          label: Text("Password"),
          labelStyle: TextStyle(
              fontSize: 20, color: Colors.black, fontWeight: FontWeight.w600),
          suffixIcon: IconButton(
            onPressed: _isPassword,
            icon: Icon(
              isHiddenPassword ? Icons.visibility_off : Icons.visibility,
              color: Palette.bColor,
            ),
          ),
          prefixIcon: Icon(
            CommunityMaterialIcons.lock,
            color: Palette.bColor,
          )),
    ),
  );
}
