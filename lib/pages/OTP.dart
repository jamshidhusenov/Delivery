import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:hw12_may/pages/location_page.dart';
import 'package:hw12_may/pages/phone_page.dart';

class MessagePage extends StatelessWidget {
  static const String id = "Message_Page";

  const MessagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20,),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, PhonePage.id);
                },
                child: const Icon(
                  CupertinoIcons.back,
                  size: 30,
                ),
              ),
              const SizedBox(height: 40,),
              const Text(
                "Enter your 4-digit code",
                style: TextStyle(
                    fontSize: 27,
                    fontFamily: "Nunito",
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 40,),
              const Text(
                "Code",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                    fontFamily: "Nunito",
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 20,),
              const TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: " - - - - ",
                  hintStyle: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: 24,),
              Align(
                alignment: Alignment.centerRight,
                child: RichText(text: TextSpan(
                    text: "Resend Code   ",
                    style: const TextStyle(
                      color: Color.fromRGBO(83, 177, 117, 1),
                      decorationStyle: TextDecorationStyle.solid,
                      decorationColor: Colors.black,
                      fontSize: 16,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        debugPrint("tapped");
                      }),),
              ),

              const SizedBox(height: 130,),
              
              Row(
                children: [
                  const Spacer(flex: 16,),
                  GestureDetector(
                    onTap: (){
                     Navigator.pushNamed(context, LocationPage.id);
                    },
                    child: Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 116, 107, 1),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: const Center(
                          child: Icon(
                            Icons.navigate_next,
                            size: 60,
                            color: Colors.white,
                          )),
                    ),
                  ),
                  const Spacer(flex: 1,),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
