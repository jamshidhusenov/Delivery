import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hw12_may/pages/phone_page.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class SignPage extends StatelessWidget {
  static const String id = "Sign_page";

  const SignPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: const [
                  Spacer(
                    flex: 1,
                  ),
                  Image(
                    image: AssetImage("assets/images/vegetables-basket 1.png"),
                  ),
                ],
              ),

              const Text(
                "Get your groceries on",
                style: TextStyle(
                    fontSize: 26,
                    fontFamily: "Nunito",
                    fontWeight: FontWeight.w500),
              ),
              const Text(
                "your door step",
                style: TextStyle(
                    fontSize: 26,
                    fontFamily: "Nunito",
                    fontWeight: FontWeight.w500),
              ),

              // IntlPhoneField(
              //   decoration: const InputDecoration(
              //     labelText: 'Phone Number',
              //     border: OutlineInputBorder(
              //       borderSide: BorderSide(),
              //     ),
              //   ),
              //   initialCountryCode: 'IN',
              //   onChanged: (phone) {
              //     print(phone.completeNumber);
              //   },
              //   onSaved: (phone) {
              //     print("phone?.completeNumber");
              //   },
              //   onTap: (){
              //     print("object");
              //   },
              //
              //   textInputAction: TextInputAction.next,
              //
              //
              // )

              const SizedBox(
                height: 20,
              ),

              Row(
                children: [
                  const Image(
                    image: AssetImage("assets/images/flags_PNG14592 1.png"),
                  ),
                  const Text(
                    "  +1",
                    style: TextStyle(fontSize: 16),
                  ),
                  const Spacer(
                    flex: 10,
                  ),
                  SizedBox(
                    width: 33,
                    child: FloatingActionButton(
                      mini: true,
                      onPressed: () {
                        Navigator.pushNamed(context, PhonePage.id);
                      },
                      backgroundColor: const Color.fromRGBO(255, 116, 107, 1),
                      child: const Center(
                          child: Icon(
                        Icons.navigate_next,
                        size: 32,
                      )),
                    ),
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                ],
              ),
              const Divider(
                color: Colors.grey,
              ),
              const SizedBox(
                height: 10,
              ),
              const Center(
                child: Text(
                  "Or connect with social media",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                      fontFamily: "Nunito",
                      fontWeight: FontWeight.w500),
                ),
              ),
              const Spacer(flex: 6,),
              Padding(
                padding: const EdgeInsets.only(right: 25),
                child: Column(
                  children: [
                    Center(
                      child: GestureDetector(
                        child: Container(
                          padding: const EdgeInsets.only(left: 15,right: 15),
                          width: 320,
                          height: 65,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: Colors.grey,style: BorderStyle.solid),
                          ),
                          child: Row(
                            children: const [
                              Text(
                                "Sign in with Google",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontFamily: "Nunito",
                                    fontWeight: FontWeight.w500),
                              ),
                              Spacer(flex: 1,),
                              Image(image: AssetImage("assets/images/search 1.png"))
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 22,),
                    Center(
                      child: GestureDetector(
                        child: Container(
                          padding: const EdgeInsets.only(left: 15,right: 15),
                          width: 320,
                          height: 65,
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(74, 102, 172, 1),
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: Colors.grey,style: BorderStyle.solid),
                          ),
                          child: Row(
                            children: const [
                              Text(
                                "Continue with Facebook",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontFamily: "Nunito",
                                    fontWeight: FontWeight.w500),
                              ),
                              Spacer(flex: 1,),
                              Image(image: AssetImage("assets/images/Vector (7).png"))
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(flex: 2,),
            ],
          ),
        ),
      ),
    );
  }
}
