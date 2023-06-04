import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hw12_may/pages/home_page.dart';

class LoginPage extends StatefulWidget {
  static const String id = "Login_page";

  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, HomePage.id);
                },
                child: const Icon(
                  CupertinoIcons.back,
                  size: 30,
                ),
              ),
              const Center(
                child: Image(
                  image: AssetImage("assets/images/pr3.png"),
                ),
              ),

              const Align(
                alignment: Alignment.center,
                child: Text(
                  "Login",
                  style: TextStyle(
                      fontSize: 28,
                      fontFamily: "Nunito",
                      fontWeight: FontWeight.w700),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              const Align(
                alignment: Alignment.center,
                child: Text(
                  "Enter your login details and password",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                      fontFamily: "Nunito",
                      fontWeight: FontWeight.w500),
                ),
              ),
              const Text(
                "Email",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: "Nunito",
                    fontWeight: FontWeight.w500),
              ),
              const TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: "Email",
                  hintStyle: TextStyle(
                    fontSize: 19,
                    color: Colors.grey,
                  ),
                ),
              ),
              SizedBox(height: 10,),
              const Text(
                "Password",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: "Nunito",
                    fontWeight: FontWeight.w500),
              ),
              const TextField(
                obscureText: true,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  suffixIcon: Icon(CupertinoIcons.eye_slash),
                  hintText: "Password",
                  hintStyle: TextStyle(
                    fontSize: 19,
                    color: Colors.grey,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
