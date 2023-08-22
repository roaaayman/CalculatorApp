import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink.shade300,
          leading: Icon(
            Icons.menu,
          ),
          title: Text('ROAA'),
          actions: [
            IconButton(
              icon: Icon(Icons.notification_add),
              onPressed: onNotification,
            ),
            IconButton(onPressed: onPressed, icon: Icon(Icons.search))
          ],
          centerTitle: true,
        ),
        body :SingleChildScrollView(
          child: Column(
    children: [

    ],
    
    ),
        )
    );
  }

  void onNotification() {
    print("clicked");
  }

  void onPressed() {
    print("hello");
  }
}
