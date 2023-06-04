import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hw12_may/pages/OTP.dart';
import 'package:hw12_may/pages/home_page.dart';
import 'package:hw12_may/pages/location_page.dart';
import 'package:hw12_may/pages/login_page.dart';
import 'package:hw12_may/pages/phone_page.dart';
import 'package:hw12_may/pages/sign_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home:const HomePage() ,
      routes: {
        HomePage.id : (context)=>const HomePage(),
        SignPage.id : (context)=>const SignPage(),
        PhonePage.id : (context)=>const PhonePage(),
        MessagePage.id : (context)=>const MessagePage(),
        LocationPage.id : (context)=>const LocationPage(),
        LoginPage.id : (context)=>const LoginPage(),
      },
    );
  }
}
