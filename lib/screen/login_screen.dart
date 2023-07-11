import 'package:flutter/material.dart';
import 'package:flutter_app/screen/dashboard.dart';
import 'package:fluttertoast/fluttertoast.dart';

void maid() => (LoginScreen);

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String email = "Email";
  String password = "Password";

  bool isShow = false;

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(100.0),
        child: ListView(scrollDirection: Axis.vertical, children: contents()),
      ),
    );
  }

  void cekInput(String email, String password) {
    if (email.toLowerCase() == "hindro" && password.toLowerCase() == "hindro") {
      Navigator.push(
          context, MaterialPageRoute(builder: (builder) => Dashboard()));
    } else {
      Fluttertoast.showToast(msg: "Email atau password salah");
    }
  }

  List<Widget> contents() {
    return [
      Image.asset("images/logo.jpg"),
      SizedBox(height: 32),
      Text(email),
      TextField(controller: emailController),
      SizedBox(height: 16),
      Text(password),
      TextFormField(
        controller: passwordController,
        obscureText: !isShow,
        decoration: InputDecoration(
          suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  isShow = !isShow;
                });
              },
              icon: Icon(isShow ? Icons.lock_open : Icons.lock)),
        ),
      ),
      TextButton(
          onPressed: () {
            cekInput(emailController.text, passwordController.text);
          },
          child: Text("Login"))
    ];
  }
}
