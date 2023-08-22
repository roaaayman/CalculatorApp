import 'package:flutter/material.dart';
import 'package:projects/home_screen.dart';
import 'package:projects/login_screen.dart';

void main() {

  runApp(myApp());

}
// stateless - stateful
class myApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    debugShowCheckedModeBanner: false ,
    home: loginScreen() ,

  );
  }


}