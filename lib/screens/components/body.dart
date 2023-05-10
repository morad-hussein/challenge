import 'package:flutter/material.dart';
import 'package:projectfinal/screens/widgets/headerwithsearch.dart';



class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderwithSearch(size: size),
         Container(
           height: 350,
           color: Colors.black26,
           child:  Column(
             children: [
               Image(image: AssetImage("assets/image/3.jpg"), height: 200,),
             ],
           ),
         )
         
        ],
      ),
    );
  }
}

