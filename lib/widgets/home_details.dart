import 'package:flutter/material.dart';

class HomeDetail extends StatelessWidget {
  const HomeDetail({
    Key? key, required this.bedrooms, required this.bathrooms, required this.area,
  }) : super(key: key);
final String bedrooms;
final String bathrooms;
final String area;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, top: 8.0),
      child: Row(
        children: [
          Text(bedrooms , style: const TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),),
          Text(bathrooms, style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),),
          Text(area, style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),),

        ],
      ),
    );
  }
}
