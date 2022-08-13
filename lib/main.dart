import 'package:flutter/material.dart';
import 'package:housesales/pages/Register.dart';
import 'package:housesales/pages/login_as.dart';
import 'pages/home_page.dart';
import 'pages/detail_page.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Housing",
    home: MyApp(),

    // initialRoute: '/',
    // routes: {
    //   '/': (context) => DetailPage()
    // },
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  get mainAxisAlignment => null;

  @override
  Widget build(BuildContext context) {
    return const HomePage();
    // return LoginAs();
    // return Register();
  }
}
