import 'package:flutter/material.dart';


class PriceAddress extends StatelessWidget {
  const PriceAddress({
    Key? key, required this.price, required this.address,
  }) : super(key: key);

  final String price;
  final String address;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children:  [
          Padding(
            padding: EdgeInsets.only(left: 16.0, right: 10.0),
            child: Text("\$"+price, style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 26.0
            ),),
          ),
          Text(address, style: TextStyle(
              color: Colors.grey
              
            ),),
        ],
      ),
    );
  }
}
