import 'package:flutter/material.dart';

import 'image_card.dart';

final List<Map> imgList2 = [
  {
    "cardImage": 'assets/images/image_4.jpg',
    "tagText": "week 1",
    "cardText": "lallal",
    "cardSubText": "aaa"
  },
  {
    "cardImage": 'assets/images/image_5.jpg',
    "tagText": "week 2",
    "cardText": "dsdsd",
    "cardSubText": "www"
  },
  {
    "cardImage": 'assets/images/image_6.jpg',
    "tagText": "week 3",
    "cardText": "ewewew",
    "cardSubText": "gggg"
  },
];

class ImageList extends StatelessWidget {
  const ImageList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: imgList2
            .map((item) => ImageCard(
                  cardImage: item["cardImage"],
                  cardHeader: item["cardText"],
                  cardSubHeader: item["cardSubText"],
                  tagText: item["tagText"],
                ))
            .toList(),
      ),
    );
  }
}
