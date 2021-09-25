import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

final List<String> imgList = [
  'assets/images/image_1.jpg',
  'assets/images/image_2.jpg',
  'assets/images/image_3.jpg',
];

class ImageSlider extends StatefulWidget {
  const ImageSlider({Key? key}) : super(key: key);

  @override
  _ImageSliderState createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  int _counter = 0;
  // final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            viewportFraction: 1,
            autoPlay: true,
            enlargeCenterPage: true,
            onPageChanged: (index, _) {
              setState(() {
                _counter = index;
              });
            },
          ),
          items: imgList
              .map(
                (item) => Center(
                  child: Image.asset(item),
                ),
              )
              .toList(),
        ),
        Positioned(
          bottom: 20,
          left: 40,
          child: SizedBox(
            width: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: imgList
                  .asMap()
                  .entries
                  .map(
                    (item) => Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: _counter == item.key ? Colors.red : Colors.white,
                      ),
                      width: 15,
                      height: 15,
                    ),
                  )
                  .toList(),
            ),
          ),
        ),
      ],
    );
  }
}
