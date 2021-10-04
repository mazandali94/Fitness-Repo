import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

final List<String> imgList = [
  'assets/images/image_1.jpg',
  'assets/images/image_2.jpg',
  'assets/images/image_3.jpg',
];

class ImageSlider extends StatefulWidget {
  const ImageSlider({
    Key? key,
    required this.clipRadius,
    required this.sliderWidth,
    required this.indicatorAlignment,
    required this.sliderHeight,
    this.sliderFit = StackFit.loose,
    this.aspectRatio = 1 / 1,
  }) : super(key: key);

  final double clipRadius;
  final Alignment indicatorAlignment;
  final double sliderWidth;
  final double sliderHeight;
  final StackFit sliderFit;
  final double aspectRatio;
  @override
  _ImageSliderState createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Stack(
      fit: widget.sliderFit,
      // alignment: widget.indicatorAlignment,
      children: [
        CarouselSlider(
          options: CarouselOptions(
            aspectRatio: widget.aspectRatio,
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
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(widget.clipRadius),
                    child: Image.asset(
                      item,
                      width: size.width * widget.sliderWidth,
                      height: size.height * widget.sliderHeight,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              )
              .toList(),
        ),
        Align(
          alignment: widget.indicatorAlignment,
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 15.0, vertical: 30.0),
            child: SizedBox(
              width: 65,
              height: 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: imgList
                    .asMap()
                    .entries
                    .map(
                      (item) => Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color:
                              _counter == item.key ? Colors.red : Colors.white,
                        ),
                        width: 15,
                        height: 15,
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
