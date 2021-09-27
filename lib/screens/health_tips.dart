import 'package:fitt_app/widgets/image_slider.dart';
import 'package:fitt_app/widgets/info_card.dart';
import 'package:flutter/material.dart';

class HealthTips extends StatelessWidget {
  const HealthTips({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const ImageSlider(
                  clipRadius: 0,
                  sliderWidth: 1,
                  indicatorAlignment: Alignment.bottomCenter,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisSize.min,
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 5),
                        child: const Text(
                          "Yoga Basics For Beginners",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 5),
                        child: Text(
                          "Keep your Waist in chape",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey[600],
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Row(
                            children: const [
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              Icon(Icons.star),
                            ],
                          ),
                          const Text("(268 Reviews)"),
                        ],
                      ),
                      SizedBox(
                        height: 50,
                        child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return InfoCard();
                            },
                            separatorBuilder: (context, index) {
                              return SizedBox(
                                width: 30,
                              );
                            },
                            itemCount: 3),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 30),
                        color: Colors.grey,
                        height: 0.5,
                        width: double.infinity,
                      ),
                      const Text(
                        "Main Text is Here",
                        style: TextStyle(fontSize: 50),
                      ),
                    ],
                  ),
                ),
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 90, bottom: 20),
                      color: Colors.grey,
                      height: 0.5,
                      width: double.infinity,
                    ),
                    const Positioned(
                      bottom: 15,
                      left: 20,
                      child: Text(
                        "Schedule",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFF58591),
                            decoration: TextDecoration.underline),
                      ),
                    )
                  ],
                ),
              ],
            ),
            const Positioned(
              top: 50,
              // bottom: 300,
              left: 20,
              child: InkWell(
                onTap: null,
                child: Icon(
                  Icons.arrow_back,
                  size: 30,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
