// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Welcome extends StatelessWidget {
  
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
                    "Welcome",
                    style: TextStyle(
                        fontFamily: "myfont",
                        fontSize: 30,
                        color: const Color.fromARGB(255, 5, 32, 210)),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  SvgPicture.asset(
                    "assets/icons/chat.svg",
                    width: 330,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    onPressed: () {

                      Navigator.pushNamed(context, "/login");
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            const Color.fromARGB(255, 27, 42, 154)),
                        padding: MaterialStateProperty.all(
                            EdgeInsets.symmetric(horizontal: 90, vertical: 10)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)))),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/signup");
                    },
                    child: Text(
                      "SIGNUP",
                      style: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 255, 255, 255)),
                    ),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            const Color.fromARGB(255, 101, 102, 180)),
                        padding: MaterialStateProperty.all(
                            EdgeInsets.symmetric(horizontal: 77, vertical: 10)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)))),
                  ),
                ],
              ),
            ),
            Positioned(
              child: Image.asset("assets/images/main_top.png"),
              width: 190,
            ),
            Positioned(
              bottom: 0,
              child: Image.asset("assets/images/main_bottom.png"),
              width: 120,
            ),
          ],
        ),
      ),
    );
  }
}
