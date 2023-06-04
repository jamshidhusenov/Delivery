import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hw12_may/pages/phone_page.dart';
import 'package:hw12_may/pages/sign_page.dart';

class LocationPage extends StatelessWidget {
  static const String id = "location_page";

  const LocationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, PhonePage.id);
                    },
                    child: const Icon(
                      CupertinoIcons.back,
                      size: 32,
                    ),
                  ),
                  Row(
                    children: const [
                      Spacer(
                        flex: 1,
                      ),
                      Image(image: AssetImage("assets/images/map 1.png")),
                      Spacer(
                        flex: 1,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  const Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Select Your Location",
                      style: TextStyle(
                          fontSize: 28,
                          fontFamily: "Nunito",
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Swithch on your location to stay in tune with",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 17,
                          fontFamily: "Nunito",
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  const Align(
                    alignment: Alignment.center,
                    child: Text(
                      "what’s happening in your area",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 17,
                          fontFamily: "Nunito",
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ),
            const Image(image: AssetImage("assets/images/xarita.png")),
            const SizedBox(
              height: 40,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, SignPage.id);
              },
              child: Container(
                width: 264,
                height: 57,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(255, 116, 107, 1),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Center(
                  child: Text(
                    "Submit Now",
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
            const SizedBox(height: 40,),
          ],
        ),
      )),
    );
  }
}
