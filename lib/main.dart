import 'package:flutter/material.dart';
import 'package:flutter_fuck_up/utils/Routes.dart';
import 'pages/Home.dart';
import 'pages/Login.dart';

void main(){
  runApp(const Flutter());
}

class Flutter extends StatelessWidget {
  const Flutter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: Home(),
      /*theme: ThemeData(
        primarySwatch: Colors.amber,
      ),*/
      routes: {
        "/" : (context) => const Login(),
        MyRoutes.loginRoute : (context) => const Login(),
        MyRoutes.homeRoute : (context) => const Home(),
      },
   );
  }
}
