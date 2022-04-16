import 'package:flutter/material.dart';
import 'package:favorite_button/favorite_button.dart';


class DetHeaderIcons extends StatelessWidget {
  const DetHeaderIcons({ Key? key }) : super(key: key);

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
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back),
                  iconSize: 35.0,
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0))),
            Spacer(),
            Card(
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: FavoriteButton(
                    iconSize: 50.0,
                          isFavorite: false,
                          valueChanged: (_isFavorite) {
                            print('Is Favorite : $_isFavorite');
                          },
                          ),
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0))),
          ],
          
        ),
        
      ),
      
    );
  }
}

