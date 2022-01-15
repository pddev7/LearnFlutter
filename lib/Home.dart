import 'package:flutter/material.dart';

void main(){
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("It's my App"),
      ),
      body: const Center(
        child: Text("Welcome To my App"),
      ),
      drawer: const Drawer(),
    );
  }
}
