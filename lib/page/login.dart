// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_final_level_1/page/HomeMy.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  SharedPreferencesAsync pref = SharedPreferencesAsync();
  String email_my = "";
  String username = "";
  

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        body: Stack(
          children: [
            SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Log in",
                    style: TextStyle(
                        fontFamily: "myfont",
                        fontSize: 30,
                        color: const Color.fromARGB(2255, 27, 42, 154)),
                  ),
                  SizedBox(
                    height: 45,
                  ),
                  SvgPicture.asset(
                    "assets/icons/login.svg",
                    width: 260,
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(45),
                        color: Color.fromARGB(255, 157, 210, 253)),
                    // margin: EdgeInsets.only(left: 60),
                    width: 240,

                    child: TextField(
                      keyboardType: TextInputType.text,
                      onSubmitted: (Textname) {
                        pref.setString("Username", Textname);
                      },
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.person),
                        hintText: "Username",
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(45),
                        color: Color.fromARGB(255, 157, 210, 253)),
                    // margin: EdgeInsets.only(left: 60),
                    width: 240,

                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      onSubmitted: (Text) {
                        pref.setString("Email_key", Text);
                      },
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.email),
                        hintText: "Email",
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(60),
                        color: Color.fromARGB(255, 157, 210, 253)),
                    // margin: EdgeInsets.only(left: 60),
                    width: 240,

                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.lock),
                          hintText: "Password",
                          suffixIcon: Icon(
                            Icons.visibility,
                            color: Color.fromARGB(255, 101, 100, 100),
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      email_my =
                          await pref.getString("Email_key") ?? "no email";
                      username = await pref.getString("Username") ?? "no name";
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Homemy(
                                    emailMy: email_my,
                                    username: username,
                                  )));
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            const Color.fromARGB(255, 27, 42, 154)),
                        padding: MaterialStateProperty.all(
                            EdgeInsets.symmetric(horizontal: 95, vertical: 10)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)))),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an account? "),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, "/signup");
                        },
                        child: Text(
                          "Sign up",
                          style: TextStyle(fontWeight: FontWeight.w800),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Positioned(
              child: Image.asset("assets/images/main_top.png"),
              width: 130,
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Image.asset("assets/images/login_bottom.png"),
              width: 150,
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, "/");
          },
          child: Icon(Icons.home),
        ),
      ),
    );
  }
}
