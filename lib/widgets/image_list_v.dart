import 'dart:ui';

import 'package:flutter/material.dart';

final List<String> imgList3 = [
  'assets/images/image_7.jpg',
  'assets/images/image_8.jpg',
  'assets/images/image_9.jpg',
];

class ImagelistV extends StatelessWidget {
  const ImagelistV({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 800,
      width: 900,
      child: ListView.builder(
        clipBehavior: Clip.hardEdge,
        scrollDirection: Axis.vertical,
        itemCount: imgList3.length,
        itemBuilder: (context, int count) {
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 0),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Image.asset(
                  imgList3[count],
                ),
                Positioned(
                  top: 10,
                  left: 10,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: Colors.yellow,
                    ),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 2.5),
                      height: 20,
                      width: 45,
                      child: const Text(
                        "PRO",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
                // const Positioned(
                //   bottom: 0,
                //   top: -10,
                //   left: 10,
                //   child: Text(
                //     "dsds",
                //     style: TextStyle(fontSize: 500),
                //   ),
                // ),
              ],
            ),
          );
        },
      ),
    );
  }
}
