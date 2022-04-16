import 'package:flutter/material.dart';


class DetBoxWithText extends StatelessWidget {
  const DetBoxWithText({
    Key? key, required this.info,
  }) : super(key: key);

final String info;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 11,
      width: MediaQuery.of(context).size.width / 5.2,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(10.0)
      ),
      child: Center(child: Text(info, style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold,),)),
    );
  }
}

//Second Widget
class TitleOfBoxWithText extends StatelessWidget {
  const TitleOfBoxWithText({
    Key? key, required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(title, style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),),
    );
  }
}
