import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Plants extends StatelessWidget {
   Plants({Key? key}) : super(key: key);
 List Images=[
   SvgPicture.asset('assets/image/ui.svg'),
   SvgPicture.asset('assets/image/plant.svg'),
   SvgPicture.asset('assets/icons/menu.svg'),
   SvgPicture.asset('assets/icons/icon_search.svg'),
   SvgPicture.asset('assets/icons/menu-svgrepo-com.svg'),


 ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
              itemCount: Images.length,
        itemBuilder: (context, index){
                return Stack(
                  children: [
                   Container(
                     height: 350,
                     color: Colors.blue,
                   )

                  ],
                );
        });
  }
}
