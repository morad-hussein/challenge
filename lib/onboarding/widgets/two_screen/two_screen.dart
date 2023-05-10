import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projectfinal/doctor/auth_screen/sign_in_screen.dart';
import 'package:projectfinal/patient/screens/auth/login.dart';

class TwoButtonScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(height: 50,),
              Image.asset("assets/image/logo .png"),
              Container(

                width: double.infinity,
                decoration: BoxDecoration(

                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(35),
                    bottomRight: Radius.circular(35),
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //  Text("Welcome Dear let's login "),
                    Text(
                      'Hello Dear  you can ',
                      style: TextStyle(
                        fontSize: 18.0, // Set the font size
                        fontWeight: FontWeight.bold, // Set the font weight
                        color: Colors.green, // Set the text color
                        letterSpacing: 1.2, // Set the letter spacing
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Text(
                      'Login ',
                      style: TextStyle(
                        fontSize: 40.0, // Set the font size
                        fontWeight: FontWeight.bold, // Set the font weight
                        color: Colors.green, // Set the text color
                        letterSpacing: 2.0, // Set the letter spacing
                      ),
                    ),
                    SizedBox(height: 20.0), //
                    ElevatedButton(
                      onPressed: () {
                        Get.to( LogInPatient());
                      },
                      child: Text('Login Dear'),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue,
                        // Set the background color of the button
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              20.0), // Set the border radius
                        ),
                        padding: EdgeInsets.symmetric(
                            horizontal: 50.0,
                            vertical: 20.0), // Set the padding
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(

                width: double.infinity,
                decoration: BoxDecoration(

                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Hello Doctor  you can ',
                      style: TextStyle(
                        fontSize: 18.0, // Set the font size
                        fontWeight: FontWeight.bold, // Set the font weight
                        color: Colors.blue, // Set the text color
                        letterSpacing: 1.2, // Set the letter spacing
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Text(
                      'Login ',
                      style: TextStyle(
                        fontSize: 40.0, // Set the font size
                        fontWeight: FontWeight.bold, // Set the font weight
                        color: Colors.blue, // Set the text color
                        letterSpacing: 2.0, // Set the letter spacing
                      ),
                    ),
                    SizedBox(height: 20.0), // Add some vertical spacing

                    ElevatedButton(
                      onPressed: () {
                          Get.to( SignIn());
                      },
                      child: Text('Login Doctor'),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green,
                        // Set the background color of the button
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              20.0), // Set the border radius
                        ),
                        padding: EdgeInsets.symmetric(
                            horizontal: 50.0,
                            vertical: 20.0), // Set the padding
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}