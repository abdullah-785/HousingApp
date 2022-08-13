import 'package:flutter/material.dart';

import '../pages/login_as.dart';


class MyDrawerList extends StatefulWidget {
  const MyDrawerList({Key? key}) : super(key: key);

  @override
  State<MyDrawerList> createState() => _MyDrawerListState();
}

class _MyDrawerListState extends State<MyDrawerList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(height: 20,),
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
            leading: Icon(
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
            leading: Icon(
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
            leading: Icon(
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

          ListTile(
            leading: Icon(
              Icons.login,
              size: 38,
            ),
            title: const Text('Login', style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold
            ),),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => LoginAs()));
            },
          ),

        ],
    
      ),
    );
  }
}