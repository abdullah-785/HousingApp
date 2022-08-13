import 'package:flutter/material.dart';

import '../pages/login_as.dart';


class HeaderIcons extends StatelessWidget {
  const HeaderIcons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding:
            const EdgeInsets.only(top: 20.0, left: 15.0, right: 15.0),
        child: Row(
          children: [
            Card(
                child: IconButton(
                  onPressed: () {
                    const Drawer();
                  },
                  icon: const Icon(Icons.menu),
                  iconSize: 35.0,
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0))),
            Spacer(),
            Card(
                child: IconButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginAs()));
                  },
                  icon: const Icon(Icons.account_box_rounded),
                  iconSize: 35.0,
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0))),
          ],
        ),
      ),
    );
  }
}

