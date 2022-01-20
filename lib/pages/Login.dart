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

  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(const Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

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
            Text("Welcome $name", style: const TextStyle(
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
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Enter Username",
                      labelText: "Username",
                    ),
                    validator: (value){
                      if(value!.isEmpty){
                        return "Username can not be Empty";
                      }
                    },
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
                      validator: (value){
                        if(value!.isEmpty){
                          return "Password can not be Empty";
                        }
                        else if(value.length<6){
                          return  "Password should be at least 6 digits";
                        }
                      },
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),

                      Material(
                        color: Colors.amber,
                        borderRadius:
                        BorderRadius.circular(
                            changeButton ? 150 : 8),
                        child: InkWell(
                          onTap: () => moveToHome(context),
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
                          ),
                        ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
