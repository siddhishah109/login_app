import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_app/HomePage.dart';
import 'package:login_app/sign_up.dart';
import 'package:get/get.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool passenable = true;
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(
                    top: h * 0.07, bottom: h * 0.025, left: w * 0.05),
                child: const Text(
                  "Hello,user!!!",
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: h * 0.025),
                width: w,
                height: h * 0.3,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("img/welcome_ui.PNG"),
                        fit: BoxFit.cover)),
              ),
              Container(
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: h * 0.025),
                      child: Text(
                        "sign in into your account",
                        style: TextStyle(fontSize: 20, color: Colors.grey[500]),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          right: w * 0.05,
                          left: w * 0.05,
                          top: h * 0.025,
                          bottom: h * 0.025),
                      child: Column(
                        children: <Widget>[
                          TextField(
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.only(left: w * 0.08),
                                hintText: "Email id",
                                focusedBorder: const OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.black45)),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(50))),
                          ),
                          SizedBox(
                            height: h * 0.025,
                          ),
                          Container(
                            child: TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                  contentPadding:
                                      EdgeInsets.only(left: w * 0.08),
                                  hintText: "Password",
                                  suffix: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        passenable;
                                        if (passenable) {
                                          passenable = false;
                                        } else {
                                          passenable = true;
                                        }
                                      });
                                    },
                                    icon: Icon(passenable == true
                                        ? Icons.remove_red_eye
                                        : Icons.password),
                                  ),
                                  focusedBorder: const OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.black45)),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(50))),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                top: h * 0.01,
                                left: w * 0.5,
                                bottom: h * 0.025),
                            child: const Text(
                              'Forgot password?',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 14, 143, 248),
                                  fontSize: 15),
                            ),
                          ),
                          Container(
                            height: h * 0.065,
                            width: w * 0.4,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.blue),
                            child: TextButton(
                              style: ButtonStyle(
                                foregroundColor: MaterialStateProperty.all<
                                        Color>(
                                    const Color.fromARGB(255, 254, 254, 255)),
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const HomePage()));
                              },
                              child: const Text(
                                'Log In',
                                style: TextStyle(fontSize: 25),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: h * 0.03,
                          ),
                          RichText(
                              text: TextSpan(
                                  text: "Don't have an account? ",
                                  style: TextStyle(
                                      color: Colors.grey[500], fontSize: 17),
                                  children: [
                                TextSpan(
                                    text: "Create",
                                    style: const TextStyle(
                                        color:
                                            Color.fromARGB(255, 135, 152, 167),
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () =>
                                          Get.to(() => const SignUpPage()))
                              ]))
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
