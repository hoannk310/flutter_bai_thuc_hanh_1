import 'package:flutter/material.dart';
import 'package:untitled1/SignUp.dart';

const colorFF774E = const Color(0xffFF774E);
const colorFE3370 = const Color(0xffFE3370);
const colorD42053 = const Color(0xffD42053);
const colorFF8F50 = const Color(0xffFF8F50);

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
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
                Container(
                  padding:
                      const EdgeInsets.only(top: 21, left: 111, right: 111),
                  child: const Text(
                    "SIGN IN",
                    style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 36, left: 42, right: 42),
                  child: TextField(
                    onChanged: (text) {
                      setState(() {
                        _textTest = text;
                      });
                    },
                    decoration: const InputDecoration(
                        labelText: "Enter Email",
                        labelStyle:
                            TextStyle(fontSize: 16, color: Colors.white),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white70)),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white))),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 36, left: 42, right: 42),
                  child: TextField(
                    onChanged: (text) {
                      setState(() {
                        _textTest = text;
                      });
                    },
                    decoration: const InputDecoration(
                        labelText: "Enter Email",
                        labelStyle:
                            TextStyle(fontSize: 16, color: Colors.white),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white70)),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white))),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(right: 52, top: 21),
                  child: Row(
                    children: [
                      Spacer(),
                      Checkbox(
                          checkColor: colorFF774E,
                          activeColor: Colors.white,
                          shape: const RoundedRectangleBorder(
                            side: BorderSide(color: Colors.white),
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.0)),
                          ),
                          value: checkBoxValue,
                          onChanged: (newValue) {
                            setState(() {
                              checkBoxValue = newValue ?? false;
                            });
                          }),
                      Container(
                        padding: const EdgeInsets.only(left: 8),
                        child: const Text(
                          "Remember Password",
                          style: TextStyle(fontSize: 12, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 33,
                ),
                SizedBox(
                  height: 66,
                  width: 315,
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
                        'GET STARTED',
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      )),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 21),
                  child: Row(
                    children: [
                      Spacer(),
                      MaterialButton(
                        onPressed: () {},
                        color: Colors.white,
                        textColor: Colors.white,
                        child: const Image(
                          image: AssetImage('assets/twiter.png'),
                          width: 50,
                          height: 50,
                        ),
                        padding: EdgeInsets.all(16),
                        shape: CircleBorder(),
                      ),
                      MaterialButton(
                        onPressed: () {},
                        color: Colors.white,
                        textColor: Colors.white,
                        child: const Image(
                          image: AssetImage('assets/facebook.png'),
                          width: 50,
                          height: 50,
                        ),
                        padding: EdgeInsets.all(16),
                        shape: CircleBorder(),
                      ),
                      Spacer(),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 19),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SignUp()));
                    },
                    child: Text(
                      "FORGOT PASSWORD",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          decoration: TextDecoration.underline),
                    ),
                  ),
                ),
                Spacer(),
                Container(
                  height: 68,
                  color: colorD42053,
                  child: Row(
                    children: [
                      Spacer(),
                      Text(
                        "DONT HAVE ACCOUNT ?",
                        style: TextStyle(color: colorFF8F50, fontSize: 14),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignUp()));
                        },
                        child: Text(
                          "SIGN UP",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              decoration: TextDecoration.underline),
                        ),
                      ),
                      Spacer(),
                    ],
                  ),
                )
              ],
            ),
          )),
        ));
  }
}
