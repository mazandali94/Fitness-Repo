import 'package:flutter/material.dart';

final List<String> imgList2 = [
  'assets/images/image_4.jpg',
  'assets/images/image_5.jpg',
  'assets/images/image_6.jpg',
];

class ImageList extends StatelessWidget {
  const ImageList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: imgList2.length,
        itemBuilder: (context, count) {
          return Column(
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Image.asset(
                    imgList2[count],
                  ),
                  Positioned(
                    top: 10,
                    left: 10,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color: Colors.grey,
                      ),
                      child: Text(
                        "$count week",
                        style: const TextStyle(
                          fontSize: 11,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
