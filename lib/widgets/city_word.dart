import 'package:flutter/material.dart';

class City extends StatelessWidget {
  const City({
    Key? key, required this.city,
  }) : super(key: key);
final String city;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.only(top: 10.0, left: 20.0, bottom: 10.0),
      child: Align(
          alignment: Alignment.topLeft,
          child: Text(
            city,
            style: TextStyle(fontSize: 18.0),
          )),
    );
  }
}
