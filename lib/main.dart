import 'package:flutter/material.dart';
import 'package:housesales/pages/Register.dart';
import 'package:housesales/pages/dashboard.dart';
import 'package:housesales/pages/home_page.dart';
import 'package:housesales/pages/login_as.dart';
import 'package:housesales/pages/profile.dart';
// import 'pages/home_page.dart';
import 'pages/detail_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';

// void main() {
//   runApp(const MaterialApp(
//     debugShowCheckedModeBanner: false,
//     title: "Housing",
//     home: MyApp(),
//     // initialRoute: '/',
//     // routes: {
//     //   '/': (context) => DetailPage()
//     // },
//   ));
// }

Future main() async {                                         

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp( MaterialApp(
    theme: ThemeData(fontFamily: 'Releway'),
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

  // get mainAxisAlignment => null;

  @override
  Widget build(BuildContext context) {
    return LoginAs();
  }
}