import 'package:flutter/material.dart';

final List<String> imgList2 = [
  'assets/images/image_4.jpg',
  'assets/images/image_5.jpg',
  'assets/images/image_6.jpg',
];

class Imagelist extends StatefulWidget {
  const Imagelist({Key? key}) : super(key: key);

  @override
  State<Imagelist> createState() => _ImagelistState();
}

class _ImagelistState extends State<Imagelist> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      width: 400,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: imgList2.length,
        itemBuilder: (context, int count) {
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 0),
            child: Stack(
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
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 2.5),
                      height: 20,
                      width: 45,
                      child: Text(
                        "$count "+1" week",
                        style: const TextStyle(
                          fontSize: 11,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: -10,
                  left: 10,
                  child: Text("dsds"),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
