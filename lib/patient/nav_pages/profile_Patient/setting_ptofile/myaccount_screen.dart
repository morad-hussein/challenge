
import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:projectfinal/core/color_config/color.dart';
import 'package:projectfinal/patient/nav_pages/profile_Patient/setting_ptofile/setting_screen.dart';

class MyAccount extends StatefulWidget {
  const MyAccount({Key? key}) : super(key: key);

  @override
  State<MyAccount> createState() => _MyAccountState();
}

class _MyAccountState extends State<MyAccount> {
  bool isHiddenPassword = true;
  void _ispssswords() {
    setState(() {
      if (isHiddenPassword == true) {
        isHiddenPassword = false;
      } else {
        isHiddenPassword = true;
      }
    });
  }
  var _email = TextEditingController();
  var _username = TextEditingController();
  var _password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: IconButton(
          onPressed: (){
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SettingScreenP(),
                ));
          },
          icon: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Palette.bColor,),
        ),

        title: Text("My Account "
          , style: TextStyle(
            color: Palette.bColor,
          ),),
        centerTitle: true,

      ),
      body: SingleChildScrollView(
        child: Column(
          children: [

            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: buildProfilePri(),
            ),
            Container(

              margin: EdgeInsets.symmetric(horizontal: 40, vertical: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,

              children: [


                Padding(
                  padding: const EdgeInsets.only(bottom: 30.0),
                  child:  buildTextField(
                      controller: _username,
                      icon: CommunityMaterialIcons.account_outline,
                      hintText: "User Name",
                      isHiddenPassword: false,
                      isEmail: false),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 30.0),
                  child: buildTextField(
                      controller: _email,
                      icon: Icons.mail_outline,
                      hintText: "info@demouri.com",
                      isHiddenPassword: false,
                      isEmail: true),
                ),

              


              ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  Widget buildTextField({IconData? icon, String? hintText,
    bool? isHiddenPassword, bool? isEmail, TextEditingController? controller, IconData? icons}) {
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
  Widget ProfileSettings(
      String text,
      IconData icon,
      IconData icons,
      Function() OnTap,

      ) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
      child:
      GestureDetector(
        onTap: OnTap,
        child: Container(
          padding: EdgeInsets.only(),
          height: 55,
          width: 400,
          decoration: BoxDecoration(
            color: Color(0xfff5f6f9),
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 4,
                spreadRadius: 2,
              ),
            ],
          ),
          child: Row(
            children: [
              SizedBox(width: 15,),
              Icon(
                icon,
                color: Palette.pColor,
                size: 25,),
              SizedBox(width: 15,),
              Expanded(
                child: Text(text,
                  style: TextStyle(
                    color: Palette.bColor,
                    fontWeight: FontWeight.w600,

                  ),
                ),
              ),
              Icon(
                icons,
                color: Palette.pColor,
                size: 25,
              ),

            ],
          ),

        ),
      ),
    );
  }
}
