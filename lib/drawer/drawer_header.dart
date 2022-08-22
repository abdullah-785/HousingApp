// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:housesales/models/userModel.dart';

// class MyHeaderDrawer extends StatefulWidget {
//   const MyHeaderDrawer({Key? key}) : super(key: key);

//   @override
//   _MyHeaderDrawerState createState() => _MyHeaderDrawerState();
// }

// class _MyHeaderDrawerState extends State<MyHeaderDrawer> {
//   // User? user = FirebaseAuth.instance.currentUser;
//   // UserModel loggedInUser = UserModel();

//   // @override
//   // void initState() {
//   //   super.initState();
//   //   FirebaseFirestore.instance
//   //       .collection("users")
//   //       .doc(user!.uid)
//   //       .get()
//   //       .then((value) {
//   //     loggedInUser = UserModel.fromMap(value.data());
//   //     setState(() {});
//   //   });
//   // }
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.green[700],
//       width: double.infinity,
//       height: 200,
//       padding: const EdgeInsets.only(top: 20.0),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Container(
//             margin: const EdgeInsets.only(bottom: 10),
//             height: 90,
//             decoration: BoxDecoration(
//               shape: BoxShape.circle,
//               image: DecorationImage(
//                 image: NetworkImage("{loggedInUser.imageUrl}"),
//               ),
//             ),
//           ),
//           Text(
//             "{loggedInUser.name}",
//             style: const TextStyle(color: Colors.white, fontSize: 20),
//           ),
//           Text(
//             "{loggedInUser.email}",
//             style: TextStyle(
//               color: Colors.grey[200],
//               fontSize: 14,
//             ),
//           ),

//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

import '../widgets/buttonsCard.dart';

class MyHeaderDrawer extends StatelessWidget {
  const MyHeaderDrawer({
    Key? key,
    required this.image,
    required this.name,
    required this.email,
  }) : super(key: key);

  final String image;
  final String name;
  final String email;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green[700],
      width: double.infinity,
      height: 200,
      padding: const EdgeInsets.only(top: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 10),
            height: 90,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: NetworkImage("${image}"),
              ),
            ),
          ),
          Text(
            "${name}",
            style: const TextStyle(color: Colors.white, fontSize: 20),
          ),
          Text(
            "${email}",
            style: TextStyle(
              color: Colors.grey[200],
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}

class TopButtons extends StatelessWidget {
  const TopButtons({
    Key? key,
    required this.button1,
    required this.button2,
    required this.button3,
  }) : super(key: key);
  final String button1;
  final String button2;
  final String button3;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ButtonsCard(
            text: button1,
          ),
          ButtonsCard(
            text: button2,
          ),
          ButtonsCard(
            text: button3,
          ),
        ],
      ),
    );
  }
}
