// import 'dart:html';

// import 'dart:html';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:housesales/drawer/drawer_header.dart';
import 'package:housesales/models/postModel.dart';
import 'package:housesales/models/userModel.dart';
import 'package:housesales/pages/dashboard.dart';
import 'package:housesales/pages/home_page.dart';
import 'package:housesales/resources/deletePost.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ProfilePage extends StatefulWidget {
   ProfilePage({Key? key,}) : super(key: key);
  // final snap;
  // PostModel postModel = PostModel();

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  User? user = FirebaseAuth.instance.currentUser;
  UserModel loggedInUser = UserModel();
  PostModel postModel = PostModel();
  List<PostModel> posts = [];
  int currentIndex = 0;
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
  getProfilePosts() async {
    QuerySnapshot snapshot = await postRef
        .doc(loggedInUser.uid)
        .collection('posts')
        .orderBy('postId')
        .get();

    setState(() {
      // posts = snapshot.docs.map((e) => Post.fromDocument(doc)).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        backgroundColor: Colors.green
      ),

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
            Text(
              "${loggedInUser.name}",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            Divider(
              color: Colors.black,
            ),
            FutureBuilder(
                  future: FirebaseFirestore.instance
                      .collection('posts')
                      .where('uid', isEqualTo: user!.uid)
                      .get(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }

                    return GridView.builder(
                      shrinkWrap: true,
                      itemCount: (snapshot.data! as dynamic).docs.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 5,
                        mainAxisSpacing: 1.5,
                        childAspectRatio: 1,
                      ),
                      itemBuilder: (context, index) {
                        DocumentSnapshot snap =
                            (snapshot.data! as dynamic).docs[index];

                        return Container(
                          child: InkWell(
                            onTap: (){
                              showDialog(context: context, builder: (context)=> SizedBox(
                                width: MediaQuery.of(context).size.width * 0.8,
                                height: MediaQuery.of(context).size.height * 0.2,
                                child: Dialog(
                                    child: ListView(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 16),
                                    shrinkWrap: true,
                                    children: [
                                      'Delete',
                                    ]
                                        .map(
                                          (e) => InkWell(
                                              child: Container(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        vertical: 12,
                                                        horizontal: 16),
                                                child: Text(e),
                                              ),
                                              onTap: () {
                                                //Deleting Method
                                                FireStoreMethods().deletePost(snap['postId']);
                                                // Navigator.push(context, route)
                                                Navigator.push(context, MaterialPageRoute(builder: (context)=> ProfilePage()));
                                                Fluttertoast.showToast(msg: "Deleted Successfully");
                                                // setState(() {
                                                  
                                                // });
                                              }),
                                        )
                                        .toList()),
                                    // backgroundColor: Colors.black.withOpacity(0.5),
                                    
                                ),
                              ),
                              
                              );
                            },
                            child: Image(
                              image: NetworkImage(snap['postImageUrl']),
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      },
                    );
                  },
                )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) => setState(()=>  currentIndex = index),
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.green,
        unselectedItemColor: Color.fromARGB(255, 115, 200, 118),
        iconSize: 30,
        
        
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> HomeToo()));
              },
              child: Icon(Icons.home)),
            label: 'Home',
            
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Dashboard()));
              },
              child: Icon(Icons.create)),
            label: 'Create Post',
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> ProfilePage()));
              },
              child: Icon(Icons.account_box_rounded)),
            label: 'Profile',
          ),
        ],
        // currentIndex: _selectedIndex,
        // selectedItemColor: Colors.amber[800],
        // onTap: _onItemTapped,
      ),
    );
    
  }
}
