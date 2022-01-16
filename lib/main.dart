import 'package:flutter/material.dart';
import 'Home.dart';
import 'Login.dart';

void main(){
  runApp(const Flutter());
}

class Flutter extends StatelessWidget {
  const Flutter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: Home(),
      routes: {
        "/" : (context) => const Home(),
        "./Login" : (context) => const Login()
      },
   );
  }
}
