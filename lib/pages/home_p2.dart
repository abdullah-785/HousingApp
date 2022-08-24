import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:housesales/drawer/drawer_header.dart';
import 'package:housesales/drawer/drawer_list.dart';
import 'package:housesales/models/postModel.dart';
import 'package:housesales/models/userModel.dart';
import 'package:housesales/pages/dashboard.dart';
import 'package:housesales/pages/home_page.dart';
import 'package:housesales/pages/profile.dart';
import 'package:housesales/widgets/post_card.dart';

class HomeToo extends StatefulWidget {
  const HomeToo({Key? key}) : super(key: key);

  @override
  State<HomeToo> createState() => _HomeTooState();
}

class _HomeTooState extends State<HomeToo> {
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
        title: Text("Housing"),
        backgroundColor: Colors.green,
      ),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection('posts').snapshots(),
        builder: (context,
            AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return ListView.builder(
            itemCount: snapshot.data!.docs.length,
            itemBuilder: (context, index) => Container(
              margin: EdgeInsets.symmetric(
              ),
              child: PostCard(
                snap: snapshot.data!.docs[index].data(),
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) => setState(()=>  currentIndex = index),
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.green,
        unselectedItemColor: Color.fromARGB(255, 115, 200, 118),
        // showSelectedLabels: false,
        // showUnselectedLabels: false,
        iconSize: 30,
        // backgroundColor: Colors.green,
        
        
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()));
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

      drawer: Drawer(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children:  [
                MyHeaderDrawer(name: "${loggedInUser.name}", image: "${loggedInUser.imageUrl}", email: "${loggedInUser.email}", ),
              MyDrawerList()],
            ),
          ),
        ),
      ),
    );

    
  }
}
