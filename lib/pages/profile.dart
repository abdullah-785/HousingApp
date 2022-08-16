import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:housesales/models/userModel.dart';



class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  // User? user = FirebaseAuth.instance.currentUser;
  // UserModel loggedInUser = UserModel();

  // @override
  // void initState() {
  //   super.initState();
  //   FirebaseFirestore.instance
  //       .collection("users")
  //       .doc(user!.uid)
  //       .get()
  //       .then((value) {
  //     loggedInUser = UserModel.fromMap(value.data());
  //     setState(() {});
  //   });
  // }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Padding(
        padding: const EdgeInsets.only(top: 32, ),
        child: Column(
          children: [
            Text("Abdullah IS here baby"),
            // Image(image: NetworkImage("${loggedInUser.imageUrl}")),
          ],
        ),
      ),
    );
  }
}