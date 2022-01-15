import 'package:flutter/material.dart';
import 'Home.dart';

void main(){
  runApp(const Flutter());
}

class Flutter extends StatelessWidget {
  const Flutter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Home(),
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.red,
      ),
    );
  }
}
