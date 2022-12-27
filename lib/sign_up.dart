import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 238, 234, 228),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding:
                EdgeInsets.only(top: h * 0.05, right: w * 0.04, left: w * 0.04),
            child: Container(
              height: h * 0.3,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50), color: Colors.white),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: w * 0.04, top: h * 0.02),
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.arrow_back_ios),
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
                      fillColor: Colors.white,
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
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: w * 0.08),
                      hintText: "Password",
                      focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black45)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50))),
                ),
                SizedBox(
                  height: h * 0.01,
                ),
                Container(
                  height: h * 0.065,
                  width: w * 0.4,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Color.fromARGB(255, 82, 177, 255)),
                  child: TextButton(
                    style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all<Color>(
                          Color.fromARGB(255, 254, 254, 255)),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Log In',
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                ),
                Container(
                  width: w,
                  height: h * 0.3,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("img/footer_ui.PNG"),
                          fit: BoxFit.cover)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
