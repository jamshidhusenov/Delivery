import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hw12_may/pages/login_page.dart';
import 'package:hw12_may/pages/sign_page.dart';

class HomePage extends StatelessWidget {
  static const String id = "Home_Page";

  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(243, 255, 253, 1),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 15,
          right: 12,
          top: 100,
          bottom: 50,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(flex: 5,),
            const Center(
                child: Image(image: AssetImage("assets/images/person1.png"))),
            const Spacer(flex: 2,),
            const Text(
              "Get the fastest",
              style: TextStyle(
                  fontSize: 31,
                  fontFamily: "Nunito",
                  fontWeight: FontWeight.w500),
            ),
            const Text(
              "Delivery groceries at home",
              style: TextStyle(
                  letterSpacing: 0.003,
                  fontSize: 31,
                  fontFamily: "Nunito",
                  fontWeight: FontWeight.w500),
            ),
            const Spacer(flex: 1,),
            Text(
              "Ger your groceries in as fast as one hour",
              style: TextStyle(
                letterSpacing: 0.003,
                fontSize: 18,
                fontFamily: "Nunito",
                fontWeight: FontWeight.w500,
                color: Colors.grey.shade700,
              ),
            ),
            const Spacer(flex: 2,),
            GestureDetector(
              onTap: (){
              Navigator.pushNamed(context, SignPage.id);
              },
              child: Container(
                width: 264,
                height: 57,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(255, 116, 107, 1),
                  borderRadius: BorderRadius.circular(15),
                ),
                child:  const Center(
                  child: Text(
                    "Get Started",
                    style: TextStyle(
                      letterSpacing: 0.003,
                      fontSize: 18,
                      fontFamily: "Nunito",
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(255, 255, 255, 1),
                    ),
                  ),
                ),
              ),
            ),
            const Spacer(flex: 1,),
            GestureDetector(
              onTap: (){
             Navigator.pushNamed(context, LoginPage.id);
              },
              child: Container(
                width: 264,
                height: 57,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(83, 177, 117, 1),
                  borderRadius: BorderRadius.circular(15),
                ),
                child:  const Center(
                  child: Text(
                    "Log in",
                    style: TextStyle(
                      letterSpacing: 0.003,
                      fontSize: 18,
                      fontFamily: "Nunito",
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(255, 255, 255, 1),
                    ),
                  ),
                ),
              ),
            ),
            const Spacer(flex: 1,),

            // Delivery groceries at home
          ],
        ),
      ),
    );
  }
}
