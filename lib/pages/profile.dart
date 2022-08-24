import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:housesales/drawer/drawer_header.dart';
import 'package:housesales/models/postModel.dart';
import 'package:housesales/models/userModel.dart';
import 'package:housesales/pages/dashboard.dart';
import 'package:velocity_x/velocity_x.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  User? user = FirebaseAuth.instance.currentUser;
  UserModel loggedInUser = UserModel();

  PostModel postModel = PostModel();

  List<PostModel> posts = [];

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

 

 //////////////////////////////
 ///
 getProfilePosts() async{
  QuerySnapshot snapshot = await postRef.doc(loggedInUser.uid).collection('posts').orderBy('postId').get();

  setState(() {
    // posts = snapshot.docs.map((e) => Post.fromDocument(doc)).toList();
  });
 }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          top: 32,
        ),
        child: Column(
          children: [
            Center(
              child: Container(
                width: 200,
                height: 120,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: NetworkImage("${loggedInUser.imageUrl}"))),
              ),
            ),
            HeightBox(6),
            Text("${loggedInUser.name}", style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,              
              ),),


            Container(
              // child: Image(image: NetworkImage("${snapshot}")),
            )
          ],
        ),
      ),
    );
  }
}
