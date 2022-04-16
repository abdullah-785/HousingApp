import 'package:flutter/material.dart';
import 'home_page.dart';
import 'detail_page.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "UI",
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
    return HomePage();
  }
}
