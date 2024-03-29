import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../pages/dashboard.dart';
import '../pages/login_as.dart';


class MyDrawerList extends StatefulWidget {
  const MyDrawerList({Key? key}) : super(key: key);

  @override
  State<MyDrawerList> createState() => _MyDrawerListState();
}

class _MyDrawerListState extends State<MyDrawerList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20,),
        ListTile(
          leading: const Icon(
            Icons.insert_link,
            size: 40,
          ),
          title: const Text('House', style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold
          ),),
          onTap: () {
            
          },
        ),
        ListTile(
          leading: const Icon(
            Icons.insert_link,
            size: 40,
          ),
          title: const Text('Shops', style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold
          ),),
          onTap: () {
            
          },
        ),

        ListTile(
          leading: const Icon(
            Icons.insert_link,
            size: 40,
          ),
          title: const Text('Flats', style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold
          ),),
          onTap: () {
            
          },
        ),

        ListTile(
          leading: const Icon(
            Icons.insert_link,
            size: 40,
          ),
          title: const Text('Factries', style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold
          ),),
          onTap: () {
            
          },
        ),

        ListTile(
          leading: const Icon(
            Icons.insert_link,
            size: 40,
          ),
          title: const Text('Plats', style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold
          ),),
          onTap: () {
            
          },
        ),

        ListTile(
          leading: const Icon(
            Icons.insert_link,
            size: 40,
          ),
          title: const Text('Socities', style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold
          ),),
          onTap: () {
            
          },
        ),
        //  ListTile(
        //   leading: const Icon(
        //     Icons.create,
        //     size: 30,
        //   ),
        //   title: const Text('Create Post', style: TextStyle(
        //     fontSize: 22,
        //     fontWeight: FontWeight.bold
        //   ),),
        //   onTap: () {
        //      Navigator.push(context, MaterialPageRoute(builder: (context) => const Dashboard()));
        //   },
        // ),

        ListTile(
          leading: const Icon(
            Icons.logout,
            size: 38,
          ),
          title: const Text('Logout', style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold
          ),),
          onTap: () {
            logout(context);
          },
        ),

      ],
    
    );
  }





    // the logout function
  Future<void> logout(BuildContext context) async {
    await FirebaseAuth.instance.signOut();
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => LoginAs()));
  }
}