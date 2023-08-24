import 'package:flutter/material.dart';

class MessengerScreen extends StatelessWidget {
  const MessengerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const Row(
          children: [
            CircleAvatar(
              radius: 20.0,
              backgroundImage: NetworkImage('https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg'),
            )
          ],
        ) ,
        title:   const Text('chats',style: TextStyle( color: Colors.black),) ,
        actions: [
          IconButton(onPressed: (){}, icon: const CircleAvatar(
            radius: 20.0,
            backgroundColor: Colors.white,
            child: Icon(
              Icons.camera_alt,
            ),
          )),IconButton(onPressed: (){}, icon: const CircleAvatar(
            radius: 20.0,
            backgroundColor: Colors.white,
            child: Icon(
              Icons.edit,
            ),
          )),
        ],
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0)
            ,color: Colors.grey.shade200  ),
            child: Row(
              children: [
                Icon(
                  Icons.search
                ),
                SizedBox(
                  width: 15,
                ),
                Text("SEARCH")
              ],
            ),
          )
        ],
      ),
    );
  }
}
