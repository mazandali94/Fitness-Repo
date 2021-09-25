import 'package:fitt_app/widgets/image_list.dart';
import 'package:fitt_app/widgets/image_slider.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
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
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Row(
                      // mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("Exercises"),
                        Row(
                          children: const [
                            Icon(Icons.search),
                            Icon(Icons.more_horiz),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Positioned(
                    bottom: -100,
                    left: 0,
                    right: 0,
                    child: ImageSlider(),
                  ),
                ],
              ),
              const SizedBox(
                height: 115,
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25.0, vertical: 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("Essentails For Beginners"),
                    InkWell(
                      child: Text("More"),
                      onTap: null,
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Positioned(
                top: 0,
                bottom: 10,
                child: Imagelist(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
