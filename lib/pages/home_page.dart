import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:housesales/models/postModel.dart';
import 'package:housesales/models/userModel.dart';
import 'package:housesales/pages/dashboard.dart';
import 'package:housesales/pages/detail_page.dart';
import 'package:housesales/pages/home_p2.dart';
import 'package:housesales/pages/profile.dart';
import 'package:housesales/widgets/buttonsCard.dart';
import 'package:housesales/widgets/city_name.dart';
import 'package:housesales/widgets/city_word.dart';
import 'package:housesales/widgets/header_icons.dart';
import 'package:housesales/widgets/home_details.dart';
import 'package:housesales/widgets/image_card.dart';
import 'package:housesales/widgets/price_address.dart';

import '../drawer/drawer_header.dart';
import '../drawer/drawer_list.dart';

class HomePage extends StatefulWidget {
  HomePage({
    Key? key, this.snap,
  }) : super(key: key);

final snap;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;

  User? user = FirebaseAuth.instance.currentUser;
  UserModel loggedInUser = UserModel();
  PostModel postModel = PostModel();

  @override
  void initState() {
    super.initState();
    FirebaseFirestore.instance
        .collection("users")
        .doc(user!.uid)
        .get()
        .then((value) {
      loggedInUser = UserModel.fromMap(value.data());
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Housing App",
          style: TextStyle(
              // fontSize:

              ),
        ),
        backgroundColor: Colors.green,
        toolbarHeight: 60,
      ),
      body: Column(
        children: const [
          City(
                city: "City",
              ),
              //City name
              CityName(cityName: "Sialkot"),
              //divider
              Padding(
                padding: EdgeInsets.only(left: 15.0, right: 15.0, top: 10),
                child: Divider(
                  color: Color.fromARGB(255, 179, 178, 178),
                ),
              ),

              HomeToo(),
        ],
      )
      );
    
  }
}
