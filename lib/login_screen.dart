// ignore_for_file: must_be_immutable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class LoginScreen extends StatelessWidget {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  LoginScreen({super.key});
  
   
  @override
  Widget build(BuildContext context) {

    var x=20.0;
    
    return Scaffold(
      appBar: AppBar(
        title:  Text("Login"),
      ),
      body: Container(
        padding: EdgeInsets.all(x),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'LOGIN',
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.blue,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: emailController,

                  keyboardType: TextInputType.emailAddress,
                  onFieldSubmitted: (value) {
                    print("-------------- submit ---------");
                    print(value);
                  },
                  onChanged: (String value) {
                    print("-------------- change ---------");
                    print(value);
                  },
                  decoration: const InputDecoration(
                    labelText: 'Email Address ',
                    prefixIcon: Icon(Icons.email),
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: passwordController,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  onFieldSubmitted: (value) {
                    print(value);
                  },
                  onChanged: (String value) {
                    print(value);
                  },
                  decoration: const InputDecoration(
                    labelText: ' Password ',
                    prefixIcon: Icon(Icons.lock_rounded),
                    suffixIcon: Icon(Icons.remove_red_eye),
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  color: Colors.blue,
                  child: MaterialButton(
                    onPressed: () {
                      print(emailController.text);
                      print(passwordController.text);
                    },
                    child: const Text(
                      'LOGIN',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Don\'t have an account?'),
                    TextButton( onPressed: (){},
                        child: const Text(
                      'Register Now'
                    ),)
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
