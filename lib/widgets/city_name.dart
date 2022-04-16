import 'package:flutter/material.dart';

class CityName extends StatelessWidget {
  const CityName({
    Key? key, required this.cityName,
  }) : super(key: key);
final String cityName;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 15.0,
      ),
      child: Align(
          alignment: Alignment.topLeft,
          child: Text(
            cityName,
            style:
                TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
          )),
    );
  }
}

