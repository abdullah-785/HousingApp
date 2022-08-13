import 'package:flutter/material.dart';

class MyHeaderDrawer extends StatefulWidget {
  const MyHeaderDrawer({Key? key}) : super(key: key);

  @override
  _MyHeaderDrawerState createState() => _MyHeaderDrawerState();
}

class _MyHeaderDrawerState extends State<MyHeaderDrawer> {
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
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('images/profile2.jpg'),
              ),
            ),
          ),
          const Text(
            "Abdullah",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          Text(
            "abdbutt2001@gmail.com",
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