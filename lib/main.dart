import 'package:flutter/material.dart';

void main(){
  runApp(const Flutter());
}

class Flutter extends StatelessWidget {
  const Flutter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Material(
        child: Center(
          child: Text("Hello World"),
        ),
      ),
    );
  }
}
