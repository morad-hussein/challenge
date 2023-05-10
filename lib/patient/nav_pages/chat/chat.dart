import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 70,
        leading: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 5.0),
              child: GestureDetector(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Icon(Icons.arrow_back),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 1.0),
              child: GestureDetector(
                child: CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage('assets/image/profile.jpg'),
                ),
              ),
            )
          ],
        ),

        title: Padding(
          padding: const EdgeInsets.only(left: 2.0),
          child: Text(
            "User Name",
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ),
      ),
      body: Column(

        children: [

          SizedBox(
            height: 16,
          ),
          Expanded(
            child: ListView.separated(
              physics: BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                if (index % 2 == 0) return UserItem();
                return MyItem();
              },
              separatorBuilder: (context, index) => SizedBox(
                height: 10,
              ),
              itemCount: 10,
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.only(
              bottom: 5.0,
              top: 10,
              right: 10,
              left: 10,
            ),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                hintText: 'type a message ...',
                                suffixIcon: IconButton(
                                    onPressed: () {},
                                    icon:
                                        Icon(Icons.record_voice_over_rounded)),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              right: 5.0,
                              left: 5,
                            ),
                            child: CircleAvatar(
                              child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.send_outlined)),
                            ),
                          ),
                        ],
                      ),
                      /*Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(onPressed: () {}, icon: Icon(Icons.image)),
                          IconButton(onPressed: () {}, icon: Icon(Icons.image)),
                          IconButton(onPressed: () {}, icon: Icon(Icons.image)),
                          IconButton(onPressed: () {}, icon: Icon(Icons.image)),
                          IconButton(onPressed: () {}, icon: Icon(Icons.image)),
                        ],
                      )*/
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class UserItem extends StatelessWidget {
  const UserItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
          ),
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 10,
            ),
            decoration: BoxDecoration(
              color: Colors.redAccent,
              borderRadius: BorderRadiusDirectional.only(
                bottomEnd: Radius.circular(6),
                bottomStart: Radius.circular(6),
                topEnd: Radius.circular(6),
              ),
            ),
            child: Text(
              "hello from another side",
              style: Theme.of(context).textTheme.subtitle2,
            ),
          ),
        ),
      ],
    );
  }
}

class MyItem extends StatelessWidget {
  const MyItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
          ),
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 10,
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadiusDirectional.only(
                bottomEnd: Radius.circular(6),
                bottomStart: Radius.circular(6),
                topStart: Radius.circular(6),
              ),
            ),
            child: Text(
              "hello from another side",
              style: Theme.of(context)
                  .textTheme
                  .subtitle2!
                  .copyWith(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
