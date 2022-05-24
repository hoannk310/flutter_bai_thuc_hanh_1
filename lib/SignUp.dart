import 'package:flutter/material.dart';

const colorFF774E = const Color(0xffFF774E);
const colorFE3370 = const Color(0xffFE3370);
const colorD42053 = const Color(0xffD42053);
const colorFF8F50 = const Color(0xffFF8F50);

class SignUp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SignUpState();
  }
}

class _SignUpState extends State<SignUp> {
  String _textTest = "";
  bool checkBoxValue = false;
  final emailEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        title: "This my app",
        home: Scaffold(
          body: Center(
              child: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                colorFF774E,
                colorFE3370,
              ],
            )),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 82),
                  child: const Image(
                    image: AssetImage('assets/logo.png'),
                    width: 264,
                    height: 152,
                  ),
                ),
                Container(
                  padding:
                      const EdgeInsets.only(top: 24, left: 111, right: 111),
                  child: const Text(
                    "Find and Meet people around you to find LOVE",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 75,
                ),
                SizedBox(
                  height: 66,
                  width: 356,
                  child: TextButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all<Color>(colorFE3370),
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(33),
                          ))),
                      child: Row(
                        children: [
                          Image(
                            image: AssetImage('assets/facebook.png'),
                            width: 50,
                            height: 50,
                          ),
                          Container(
                              height: 29,
                              width: 3,
                              decoration: const BoxDecoration(
                                  gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  colorFF774E,
                                  colorFE3370,
                                ],
                              ))),
                          SizedBox(width: 28,),
                          Text(
                            'Sign in with Facebook',
                            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                          )
                        ],
                      )),
                ),
                SizedBox(
                  height: 26,
                ),
                SizedBox(
                  height: 66,
                  width: 356,
                  child: TextButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all<Color>(colorFE3370),
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(33),
                          ))),
                      child: Row(
                        children: [
                          Image(
                            image: AssetImage('assets/twiter.png'),
                            width: 50,
                            height: 50,
                          ),
                          Container(
                              height: 29,
                              width: 3,
                              decoration: const BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      colorFF774E,
                                      colorFE3370,
                                    ],
                                  ))),
                          SizedBox(width: 28,),
                          Text(
                            'Sign in with Twitter',
                            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                          )
                        ],
                      )),
                ),
                SizedBox(
                  height: 26,
                ),
                SizedBox(
                  height: 66,
                  width: 356,
                  child: TextButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all<Color>(colorFE3370),
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(33),
                          ))),
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(fontSize: 20.0 ,fontWeight: FontWeight.bold),
                      )),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 19),
                  child:
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      "ALREADY REGISTERED SIGN IN",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          decoration: TextDecoration.underline),
                    ),
                  ),
                ),
              ],
            ),
          )),
        ));
  }
}
