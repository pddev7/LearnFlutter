import 'package:flutter/material.dart';
import 'package:flutter_fuck_up/utils/Routes.dart';

void main(){
  runApp(const Login());
}

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String name = "";
  bool changeButton = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(padding: EdgeInsets.symmetric(horizontal: 70.0, vertical: 40.0)),
            Image.asset("assets/images/login.png",
              fit: BoxFit.cover,
              height: 200.0,
              width: 200.0,),
            const SizedBox(
              height: 40.0,
            ),
            Text("Welcome, $name", style: const TextStyle(
              fontSize: 24.0,
              color: Colors.amber,
              fontWeight: FontWeight.bold,
             ),
            ),

            const SizedBox(
              height: 20.0,
              width: 40.0,
            ),
            Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 16.0, vertical: 40.0,
                ),
              child: Column(
                children: [
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: "Enter Username",
                    labelText: "Username",
                  ),
                  onChanged: (value){
                    name = value;
                    setState(() {});
                  },
                ),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Enter Password",
                      labelText: "Password",
                    ),
                  ),
                  const SizedBox(
                    height: 16.0,
                  ),

                    InkWell(
                      onTap: () async {
                        setState(() {
                          changeButton = true;
                        });
                        await Future.delayed(const Duration(seconds: 1));
                        Navigator.pushNamed(context, MyRoutes.homeRoute);
                      },
                    child: AnimatedContainer(
                      duration: const Duration(seconds: 1),
                      width: changeButton ? 50 : 150.0,
                      height: 40.0,
                      alignment: Alignment.center,
                      child: changeButton ? const Icon(Icons.done, color: Colors.white,) : const Text("Login", style: (
                      TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      )
                      ),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius:
                        BorderRadius.circular(
                            changeButton ? 150 : 8
                        ),
                      ),
                    ),
                  ),

                  // ElevatedButton(
                  //   onPressed: () {
                  //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                  //     },
                  //   child: const Text("Login"),
                  // )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
