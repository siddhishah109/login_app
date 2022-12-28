import 'dart:ffi';
import 'package:login_app/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<SignUpPage> {
  bool passenable = true;

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
          height: h,
          width: w,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("img/background.png"), fit: BoxFit.cover)),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(
                      top: h * 0.05, right: w * 0.04, left: w * 0.04),
                  child: Container(
                    height: h * 0.3,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black45),
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.transparent),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding:
                              EdgeInsets.only(left: w * 0.04, top: h * 0.02),
                          child: IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: const Icon(Icons.arrow_back_ios),
                          ),
                        ),
                        Container(
                          padding:
                              EdgeInsets.only(top: h * 0.05, left: w * 0.08),
                          child: CircleAvatar(
                            radius: 90,
                            backgroundColor: Colors.black,
                            child: CircleAvatar(
                              backgroundImage: AssetImage("img/user.jpg"),
                              radius: 88,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                      right: w * 0.05,
                      left: w * 0.05,
                      top: h * 0.025,
                      bottom: h * 0.025),
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(left: w * 0.08),
                            hintText: "User name",
                            focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black45)),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50))),
                      ),
                      SizedBox(
                        height: h * 0.025,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(left: w * 0.08),
                            hintText: "Email",
                            focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black45)),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50))),
                      ),
                      SizedBox(
                        height: h * 0.025,
                      ),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(left: w * 0.08),
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
                                borderSide: BorderSide(color: Colors.black45)),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50))),
                      ),
                      SizedBox(
                        height: h * 0.02,
                      ),
                      Container(
                        height: h * 0.065,
                        width: w * 0.4,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: const Color.fromARGB(255, 82, 177, 255)),
                        child: TextButton(
                          style: ButtonStyle(
                            foregroundColor: MaterialStateProperty.all<Color>(
                                const Color.fromARGB(255, 254, 254, 255)),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const HomePage()));
                          },
                          child: const Text(
                            'Sign Up',
                            style: TextStyle(fontSize: 25),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
