import 'package:community_material_icon/community_material_icon.dart';
import 'package:csc_picker/csc_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:projectfinal/core/color_config/color.dart';
import 'package:projectfinal/doctor/auth_screen/sign_in_screen.dart';



class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();
  var _email = TextEditingController();
  var _firstName = TextEditingController();
  var _lastName = TextEditingController();

  var _username = TextEditingController();
  var _password = TextEditingController();
  var _confirmpassword = TextEditingController();

  bool isHiddenPassword = true;
  bool isRememberMe = false;
  bool isMale = true;
  var _nationalId = TextEditingController();

  void _isPassword() {
    setState(() {
      if (isHiddenPassword == true) {
        isHiddenPassword = false;
      } else {
        isHiddenPassword = true;
      }
    });
  }

  DateTime date = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                // image profile
                Container(
                  height: 250,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Text(
                          "Welcome Doctor please Signup",
                          style: const TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w700),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          print("Image");
                        },
                        child: Center(
                            child: CircleAvatar(
                          radius: 80,
                         backgroundImage: AssetImage("assets/image/doctor.jpg"),
                        )),
                      ),
                    ],
                  ),
                ),
                // first name and last name
                Padding(
                  padding: const EdgeInsets.only(left: 5.0, right: 5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        child: buildName(_firstName, "First Name "),
                      ),
                      const Padding(
                          padding: EdgeInsets.only(left: 6, right: 6)),
                      Expanded(
                        child: buildName(_lastName, "Last Name"),
                      ),
                    ],
                  ),
                ),
                // email address
                TextForm(
                  Email: true,
                  icon: Icons.email_outlined,
                  hintText: "Email",
                  isEmail: true,
                  isHiddenPassword: false,
                ),
                // Country
                Padding(
                  padding:
                      const EdgeInsets.only(top: 16.0, left: 16, right: 16),
                  child: Container(
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.black26,
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: TextButton(
                      onPressed: () {
                        showModalBottomSheet(
                            context: context,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                top: const Radius.circular(40.0),
                              ),
                            ),
                            builder: (context) {
                              return SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.30,
                                child: Container(
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 20),
                                  decoration: const BoxDecoration(),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.all(10.0),
                                        child: Text(
                                          "Selet Your Country",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20,
                                              fontWeight: FontWeight.w800),
                                        ),
                                      ),
                                      CSCPicker(
                                        layout: Layout.vertical,
                                        onCountryChanged: (country) {},
                                        onStateChanged: (state) {},
                                        onCityChanged: (city) {},
                                        dropdownDialogRadius: 30,
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Center(
                              child: Text(
                            "Selet Your Country",
                            style: TextStyle(
                                fontSize: 19,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          )),
                        ],
                      ),
                    ),
                  ),
                  /*    Column(
                    children: [
                      Center(
                          child: Text(
                        "Selet Your Country",
                        style: TextStyle(
                            fontSize: 19, fontWeight: FontWeight.w500),
                      )),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CSCPicker(
                          layout: Layout.vertical,
                          onCountryChanged: (country) {},
                          onStateChanged: (state) {},
                          onCityChanged: (city) {},
                          dropdownDialogRadius: 30,
                        ),
                      ),
                    ],
                  ),*/
                ),
                //national id
                Padding(
                  padding: const EdgeInsets.only(
                    top: 20.0,
                    right: 20,
                    left: 20,
                    bottom: 20,
                  ),
                  child: TextFormField(
                    controller: _nationalId,
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value!.isEmpty || value.length < 14) {
                        return "Please enter your National Id";
                      }

                      return null;
                    },
                    decoration: InputDecoration(
                        fillColor: Colors.white.withOpacity(0.6),
                        filled: true,
                        enabledBorder:  OutlineInputBorder(
                          borderSide: BorderSide(color: Palette.textColor1),
                          borderRadius: BorderRadius.all(Radius.circular(35.0)),
                        ),
                        focusedBorder:  OutlineInputBorder(
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
                        contentPadding:
                            const EdgeInsets.symmetric(vertical: 20),
                        hintText: "National ID",
                        hintStyle: const TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.w600),
                        prefixIcon: const Icon(
                          CommunityMaterialIcons.id_card,
                          color: Palette.bColor,
                        )),
                  ),
                ),
                // male and female
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 10,
                  ),
                  margin:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white.withOpacity(0.70),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Text(
                        'Gender',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10, left: 10),
                        child: Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  isMale = true;
                                });
                              },
                              child: Row(
                                children: [
                                  Container(
                                    width: 30,
                                    height: 30,
                                    margin: const EdgeInsets.only(right: 8),
                                    decoration: BoxDecoration(
                                        color: isMale
                                            ? Palette.textColor2
                                            : Colors.transparent,
                                        border: Border.all(
                                            width: 1,
                                            color: isMale
                                                ? Colors.transparent
                                                : Palette.textColor1),
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    child: Icon(
                                      CommunityMaterialIcons.account_outline,
                                      color: isMale
                                          ? Colors.white
                                          : Palette.iconColor,
                                    ),
                                  ),
                                  const Text(
                                    "Male",
                                    style: TextStyle(
                                        color: Palette.bColor,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 16),
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 30,
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  isMale = false;
                                });
                              },
                              child: Row(
                                children: [
                                  Container(
                                    width: 30,
                                    height: 30,
                                    margin: const EdgeInsets.only(right: 8),
                                    decoration: BoxDecoration(
                                        color: isMale
                                            ? Colors.transparent
                                            : Palette.textColor2,
                                        border: Border.all(
                                            width: 1,
                                            color: isMale
                                                ? Palette.textColor1
                                                : Colors.transparent),
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    child: Icon(
                                      CommunityMaterialIcons.account_outline,
                                      color: isMale
                                          ? Palette.iconColor
                                          : Colors.white,
                                    ),
                                  ),
                                  const Text(
                                    "Female",
                                    style: const TextStyle(
                                        color: Palette.bColor,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 16),
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
                // Age
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please enter your  age ";
                      }

                      return null;
                    },
                    decoration: InputDecoration(
                      fillColor: Colors.white.withOpacity(0.6),
                      filled: true,
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Palette.textColor1),
                        borderRadius: BorderRadius.all(Radius.circular(35.0)),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Palette.textColor1),
                        borderRadius:
                            const BorderRadius.all(const Radius.circular(35.0)),
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
                      contentPadding: const EdgeInsets.symmetric(vertical: 20),
                      hintText: " Age",
                      hintStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                      prefixIcon: const Icon(
                        Icons.support_agent_rounded,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                //Write Brief about  yourself
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: TextFormField(
                    validator: (value) {
                      if (value!.isEmpty || value.length < 100) {
                        return "Please Write Brief about  yourself ";
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
                      contentPadding: EdgeInsets.symmetric(vertical: 40),
                      hintText: " Write Brief about  yourself",
                      hintStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                      prefixIcon: Icon(
                        Icons.pending_actions,
                        color: Colors.black,
                      ),
                    ),
                    maxLines: 10, // <-- SEE HERE
                    minLines: 3,
                  ),
                ),
                // password
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
                        enabledBorder: const OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Palette.textColor1),
                          borderRadius: const BorderRadius.all(
                              const Radius.circular(35.0)),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Palette.textColor1),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(35.0)),
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
                        contentPadding:
                            const EdgeInsets.symmetric(vertical: 20),
                        label: const Text("Password"),
                        labelStyle: const TextStyle(
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
                        prefixIcon: const Icon(
                          CommunityMaterialIcons.lock,
                          color: Palette.bColor,
                        )),
                  ),
                ),
                // confirmpassword
                Padding(
                  padding: const EdgeInsets.only(
                    top: 10.0,
                    right: 20,
                    left: 20,
                    bottom: 20,
                  ),
                  child: TextFormField(
                    controller: _confirmpassword,
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
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Palette.textColor1),
                          borderRadius: BorderRadius.all(Radius.circular(35.0)),
                        ),
                        focusedBorder: const OutlineInputBorder(
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
                        contentPadding:
                            const EdgeInsets.symmetric(vertical: 20),
                        hintText: "confirm password",
                        hintStyle: const TextStyle(
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
                        prefixIcon: const Icon(
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
                        if (_formKey.currentState!.validate()) {
                          print(_email.text);
                          print(_password.text);
                        }
                        print("SignUp");
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
                            "SignUp",
                            style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          SvgPicture.asset(
                            'assets/undraw_sign_up_5lnd.svg',
                            height: 20,
                            width: 20,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SignIn()));
                    },
                    child: Text(
                      "Already have an account?",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w700),
                    )),
                SizedBox(
                  height: 16,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

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
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Palette.textColor1),
          borderRadius: BorderRadius.all(Radius.circular(35.0)),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Palette.textColor1),
          borderRadius: const BorderRadius.all(const Radius.circular(35.0)),
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
        contentPadding: const EdgeInsets.symmetric(vertical: 20),
        hintText: hintText,
        hintStyle: const TextStyle(
            fontSize: 20, color: Colors.black, fontWeight: FontWeight.w600),
      ),
    ),
  );
}

Widget buildName(
  TextEditingController? controller,
  String? hintText,
) {
  return TextFormField(
    controller: controller,
    keyboardType: TextInputType.text,
    validator: (value) {
      if (value!.isEmpty) {
        return "Please enter your name";
      }
      return null;
    },
    decoration: InputDecoration(
      fillColor: Colors.white.withOpacity(0.6),
      filled: true,
      prefixIcon: const Icon(
        CommunityMaterialIcons.account,
        color: Palette.bColor,
      ),
      enabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Palette.textColor1),
        borderRadius: BorderRadius.all(Radius.circular(35.0)),
      ),
    /*  focusedBorder: const Outline056InputBorder(
        borderSide: const BorderSide(color: Palette.textColor1),
        borderRadius: const BorderRadius.all(Radius.circular(35.0)),
      ),*/
      border: new OutlineInputBorder(
        borderRadius: const BorderRadius.all(
          const Radius.circular(30.0),
        ),
        borderSide: new BorderSide(
          color: Colors.transparent,
          width: 1.0,
        ),
      ),
      contentPadding: const EdgeInsets.symmetric(vertical: 20),
      hintText: hintText,
      hintStyle: const TextStyle(
        color: Colors.black,
        fontSize: 20,
        fontWeight: FontWeight.w700,
      ),
    ),
  );
}
