// ignore_for_file: equal_keys_in_map, use_super_parameters

import 'package:flutter/material.dart';
import 'package:flutter_final_level_1/page/home.dart';
import 'package:flutter_final_level_1/page/login.dart';
import 'package:flutter_final_level_1/page/signup.dart';
import 'package:flutter_final_level_1/page/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true),
      routes: {
        "/": (context) => const Welcome(),
        "/login":(context) => const Login(),
        "/signup":(context) => const Signup(),
      //  "/Homemy":(context) => const Homemy(),
        "/Home":(context) => const Home(),

      },
    );
  }
}
