import 'package:flutter/material.dart';
import 'package:favorite_button/favorite_button.dart';

class ImageCard extends StatelessWidget {
  const ImageCard({
    Key? key,
    required this.img,
  }) : super(key: key);

  final String img;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(25.0),
              child: Image(
                image: NetworkImage(img),
              ),
            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.all(30.0),
          child: Align(
            alignment: Alignment.topRight,
            child: Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
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
            ),
          ),
        ),
      ],
    );
  }
}
