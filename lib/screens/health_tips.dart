import 'package:fitt_app/widgets/image_slider.dart';
import 'package:fitt_app/widgets/info_card.dart';
import 'package:fitt_app/widgets/yoga_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HealthTips extends StatelessWidget {
  const HealthTips({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: BottomNavigationBar(
      //   items: [BottomNavigationBarItem(icon: Icon( Icons.add_link,),],
      //   onTap: null,backgroundColor: Color(0xFFF58591),
      // ),
      body: SingleChildScrollView(
        child: Column(children: [
          Stack(clipBehavior: Clip.none, fit: StackFit.loose, children: [
            Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const ImageSlider(
                    clipRadius: 0,
                    sliderWidth: 1,
                    indicatorAlignment: Alignment.bottomCenter,
                    sliderHeight: 0.8,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: const EdgeInsets.symmetric(vertical: 5),
                              child: const Text(
                                "Yoga Basics For Beginners",
                                style: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.symmetric(vertical: 5),
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
                            Container(
                              margin: const EdgeInsets.symmetric(vertical: 20),
                              child: SizedBox(
                                height: 50,
                                child: ListView.separated(
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder: (context, index) {
                                      return const InfoCard();
                                    },
                                    separatorBuilder: (context, index) {
                                      return const SizedBox(
                                        width: 30,
                                      );
                                    },
                                    itemCount: 3),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.symmetric(vertical: 30),
                              color: Colors.grey,
                              height: 0.5,
                              width: double.infinity,
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 30, horizontal: 10),
                              child: const Text(
                                "Main Text is Here",
                                style: TextStyle(fontSize: 50),
                              ),
                            ),
                          ]),
                    ),
                  ),
                  Stack(clipBehavior: Clip.none, children: [
                    Container(
                      margin: const EdgeInsets.only(top: 90, bottom: 20),
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
                    ),
                  ]),
                  SizedBox(
                      height: MediaQuery.of(context).size.height * 0.7,
                      child: const YogaList()),
                ]),
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
          ]),
          Align(
            alignment: Alignment.bottomCenter,
            child: ElevatedButton(
                onPressed: null, child: Text("ADD TO PREACTIVE")),
          ),
        ]),
      ),
    );
  }
}
