import 'package:flutter/material.dart';

void main(){
  runApp(const Login());
}

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Material(
      child: Center(
        child: Text("LOGIN PAGE"),
      ),
    );
  }
}
