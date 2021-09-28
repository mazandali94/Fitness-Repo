import 'package:flutter/material.dart';

import 'image_slider.dart';

class HeaderWithSlider extends StatelessWidget {
  const HeaderWithSlider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      fit: StackFit.loose,
      alignment: AlignmentDirectional.topCenter,
      children: [
        Expanded(
          child: Container(
            height: MediaQuery.of(context).size.height * 0.3,
            color: const Color(0xFFF58591),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 50),
          child: Row(
            // mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Exercises",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Row(
                children: const [
                  Icon(
                    Icons.search,
                    size: 30.0,
                    color: Colors.white,
                  ),
                  Icon(
                    Icons.more_horiz,
                    size: 30.0,
                    color: Colors.white,
                  ),
                ],
              ),
            ],
          ),
        ),
        const Positioned(
          bottom: -100,
          left: 0,
          right: 0,
          child: ImageSlider(
            indicatorAlignment: Alignment.bottomLeft,
            sliderWidth: 0.9,
            clipRadius: 50,
            sliderHeight: 1,
          ),
        ),
      ],
    );
  }
}
