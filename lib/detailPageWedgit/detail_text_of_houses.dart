import 'package:flutter/material.dart';

class DetialText extends StatelessWidget {
  const DetialText({ Key? key, required this.description }) : super(key: key);
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
              Padding(
                padding: EdgeInsets.only(top: 32, left: 16.0, right: 16.0),
                child: Text(description ,textAlign: TextAlign.justify, style: TextStyle(color: Colors.grey, fontSize: 18),),
              ),
        ],
      )
      
      
    );
  }
}