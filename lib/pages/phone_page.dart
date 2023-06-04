import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hw12_may/pages/OTP.dart';
import 'package:hw12_may/pages/home_page.dart';
import 'package:hw12_may/pages/location_page.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class PhonePage extends StatelessWidget {
  static const String id = "Phone_Page";

  const PhonePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
      children:  [
            const Align(
              alignment: Alignment.centerRight,
              child: Image(
                image: AssetImage("assets/images/person2.png"),
              ),
            ),
        const Text(
            "Enter your Phone number",
            style: TextStyle(
                fontSize: 25,
                fontFamily: "Nunito",
                fontWeight: FontWeight.w500),
        ),
        // TextField(
        //   keyboardType: TextInputType.text,
        //   textInputAction: TextInputAction.done,
        //   decoration: InputDecoration(
        //
        //     prefix: Row(children: const [
        //       Image(image: AssetImage("assets/images/flags_PNG14592 1.png"),),
        //       Text(
        //         "  +1",
        //         style: TextStyle(fontSize: 16),
        //       ),
        //     ],),
        //   ),
        //
        // ),

        IntlPhoneField(
          onChanged: (phone){
            if(phone.completeNumber.length == 13){
             Future.delayed(const Duration(seconds: 2));
              Navigator.pushNamed(context, MessagePage.id);
            }
          },
          keyboardType: TextInputType.number,
          decoration:  const InputDecoration(
            labelText: 'Phone Number',
            border: OutlineInputBorder(
              borderSide: BorderSide(),
            ),
          ),
          initialCountryCode: 'UZ',
        ),
        GestureDetector(
          onTap: (){
          Navigator.pushNamed(context, LocationPage.id);
          },
          child: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(255, 116, 107, 1),
              borderRadius: BorderRadius.circular(50),
            ),
            child: const Center(
                child: Icon(
                  Icons.navigate_next,
                  size: 40,
                  color: Colors.white,
                )),
          ),
        ),
      ],
    ),
          ),
        ));
  }
}
