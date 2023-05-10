

import 'package:flutter/material.dart';

class NewPostScreen extends StatelessWidget {
  NewPostScreen({Key? key}) : super(key: key);
  final TextEditingController postText = TextEditingController();

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(

          title:Text("New post")

      ),
      body:  Column(
        children: [
          // if (state is CreatePostLoading) LinearProgressIndicator(),
          const SizedBox(height: 5.0),
          Padding(
            padding: const EdgeInsets.only(top: 18.0,left: 8),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 25.0,
                  //  backgroundImage: NetworkImage(userModel!.image),
                  backgroundImage: NetworkImage("https://t4.ftcdn.net/jpg/03/64/21/11/360_F_364211147_1qgLVxv1Tcq0Ohz3FawUfrtONzz8nq3e.jpg"),
                ),
                const SizedBox(width: 15.0),
                Text(
                  // userModel.name,
                  "nuser name",
                  style: TextStyle(height: 1.4),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 10,left: 28),

              child: TextFormField(
                controller: postText,
                decoration: InputDecoration(
                  hintText: 'What\'s on your mind?',
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          const SizedBox(height: 20.0),
          //   if (postImage != null)
          Stack(
            alignment: AlignmentDirectional.topEnd,
            children: [
              Column(
                children: [
                  Container(
                    height: 150.0,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage("https://t4.ftcdn.net/jpg/03/64/21/11/360_F_364211147_1qgLVxv1Tcq0Ohz3FawUfrtONzz8nq3e.jpg"),
                        // image: FileImage(postImage),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                  ),
                  const SizedBox(height: 10.0),
                ],
              ),
              Transform.translate(
                offset: Offset(0, -20.0),
                child: IconButton(
                  onPressed: () {
                    //  SocialCubit.get(context).removePostImage();
                  },
                  icon: CircleAvatar(
                    radius: 20.0,
                    child: Icon(
                      Icons.close,
                      size: 16.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20.0),
          Row(
            children: [
              Expanded(
                child: TextButton.icon(
                  onPressed: () {
                    //  SocialCubit.get(context).getPostImage();
                  },
                  icon: Icon(Icons.image),
                  label: Text('Add Photo'),
                ),
              ),
              Expanded(
                child: TextButton(
                  child: Text('# tags'),
                  onPressed: () {},
                ),
              ),
            ],
          )
        ],
      ),

    );

  }
}