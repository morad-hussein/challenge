import 'package:flutter/material.dart';
import 'package:projectfinal/patient/nav_pages/chat/chat.dart';



class ChatItem extends StatelessWidget {
  const ChatItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(

     onTap: (){
       Navigator.push(context, MaterialPageRoute(
           builder: (context)=>ChatScreen()));
     },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Container(
            color: Colors.white,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Stack(
                  alignment: AlignmentDirectional.bottomEnd,
                  children: [
                    Padding(
                      padding: const EdgeInsetsDirectional.only(
                        bottom: 5.0,
                      ),
                      child: Container(
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadiusDirectional.only(
                            topStart: Radius.circular(6),
                            bottomStart: Radius.circular(6),
                          ),
                          image: DecorationImage(
                            image: AssetImage("assets/image/profile.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    CircleAvatar(
                      radius: 6,
                      backgroundColor: Colors.green,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "User Name",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "you will be good soon ",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  children: [
                    Text(
                      "Mon",
                      style: Theme.of(context).textTheme.caption,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Icon(
                      Icons.check,
                      size: 16,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
