// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, avoid_unnecessary_containers, deprecated_member_use, unnecessary_import, unused_import
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
      bool isVisit = true;

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
          body: Stack(
            children: [
              SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "sign up",
                      style: TextStyle(
                        fontFamily: "myfont",
                        fontSize: 30,
                        color: const Color.fromARGB(255, 27, 120, 154),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    SvgPicture.asset(
                      "assets/icons/signup.svg",
                      width: 200,
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(45),
                          color: Color.fromARGB(255, 157, 210, 253)),
                      // margin: EdgeInsets.only(left: 60),
                      width: 240,

                      child: TextField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.person),
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
                        obscureText: isVisit ? true : false,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Icon(Icons.lock),
                            hintText: "Password",
                            suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {});
                                  isVisit = !isVisit;
                                  print("press $isVisit");
                                },
                                icon: isVisit
                                    ? Icon(Icons.visibility_off_outlined)
                                    : Icon(
                                        Icons.visibility,
                                        color:
                                            Color.fromARGB(255, 101, 100, 100),
                                      ))),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "/Homemy");
                      },
                      child: Text(
                        "sign up",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              const Color.fromARGB(255, 27, 42, 154)),
                          padding: MaterialStateProperty.all(
                              EdgeInsets.symmetric(
                                  horizontal: 87, vertical: 10)),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30)))),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Already have an account? "),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, "/login");
                          },
                          child: Text(
                            " Log in",
                            style: TextStyle(fontWeight: FontWeight.w800),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 295,
                      child: Row(
                        children: [
                          Expanded(
                              child: Divider(
                            height: 120,
                            thickness: 0.6,
                            color: Colors.purple[800],
                          )),
                          Text(
                            "OR",
                            style: TextStyle(fontWeight: FontWeight.w800),
                          ),
                          Expanded(
                              child: Divider(
                            height: 120,
                            thickness: 0.6,
                            color: Colors.purple[800],
                          )),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, "/");
                          },
                          child: Container(
                            padding: EdgeInsets.all(6),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    color:
                                        const Color.fromARGB(255, 27, 42, 154),
                                    width: 1)),
                            child: SvgPicture.asset(
                              "assets/icons/facebook.svg",
                              color: const Color.fromARGB(255, 27, 42, 154),
                              width: 25,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Container(
                          padding: EdgeInsets.all(6),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  color: const Color.fromARGB(255, 27, 42, 154),
                                  width: 1)),
                          child: SvgPicture.asset(
                            "assets/icons/google-plus.svg",
                            color: const Color.fromARGB(255, 27, 42, 154),
                            width: 25,
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  color: const Color.fromARGB(255, 27, 42, 154),
                                  width: 1)),
                          child: SvgPicture.asset(
                            "assets/icons/twitter.svg",
                            color: const Color.fromARGB(255, 27, 42, 154),
                            width: 25,
                          ),
                        ),
                      ],
                    ),
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
      ),
    );
  }
}
