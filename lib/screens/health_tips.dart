import 'dart:ui';

import 'package:fitt_app/widgets/image_slider.dart';
import 'package:fitt_app/widgets/info_card.dart';
import 'package:fitt_app/widgets/yoga_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class HealthTips extends StatelessWidget {
  const HealthTips({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
        height: MediaQuery.of(context).size.height * 0.08,
        color: Colors.white,
        child: InkWell(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.pink[400],
              borderRadius: BorderRadius.circular(25.0),
            ),
            child: const Center(
                child: Text(
              "ADD TO PRACTICE",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold),
            )),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: NestedScrollView(
        headerSliverBuilder: (ctx, innerBox) {
          return [
            SliverAppBar(
              leading: const Icon(Icons.arrow_back),
              backgroundColor: Colors.white,
              // floating: true,
              // snap: true,
              expandedHeight: MediaQuery.of(context).size.height * 0.4,
              pinned: false,
              stretch: true,
              flexibleSpace: const FlexibleSpaceBar(
                background: ImageSlider(
                  clipRadius: 0,
                  sliderWidth: 1,
                  indicatorAlignment: Alignment.bottomCenter,
                  sliderHeight: 1,
                ),
              ),
            )
          ];
        },
        body: SingleChildScrollView(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(80),
            child: Padding(
              padding: const EdgeInsets.all(35.0),
              child: Column(
                // mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Yoga Basics For Beginners",
                    style: TextStyle(
                      fontSize: 45,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Keep your Waist in chape",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.grey[400],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Row(
                        children: [
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
                          Icon(
                            Icons.star,
                            color: Colors.grey[300],
                          ),
                        ],
                      ),
                      Text(
                        "(268 Reviews)",
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.grey[400],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.15,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InfoCard(
                          cardColor: Colors.pink,
                          cardIcon: Icons.theater_comedy,
                          cardStat: 'Level',
                          cardTitle: '1',
                        ),
                        InfoCard(
                          cardColor: Colors.purple[400],
                          cardIcon: Icons.calendar_today,
                          cardStat: 'Weeks',
                          cardTitle: '1',
                        ),
                        InfoCard(
                          cardColor: Colors.amber,
                          cardIcon: Icons.timer,
                          cardStat: 'Mins',
                          cardTitle: '25',
                        ),
                      ],
                    ),
                  ),
                  // Container(
                  //   margin: EdgeInsets.only(top: 40.0),
                  //   height: 50,
                  //   child: ListView.separated(
                  //     scrollDirection: Axis.horizontal,
                  //     itemBuilder: (context, index) {
                  //       return const InfoCard();
                  //     },
                  //     separatorBuilder: (context, index) {
                  //       return const SizedBox(
                  //         width: 60,
                  //       );
                  //     },
                  //     itemCount: 3,
                  //   ),
                  // ),
                  const Divider(
                    color: Colors.grey,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 30,
                      horizontal: 10,
                    ),
                    child: Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen boo",
                      style: TextStyle(fontSize: 25, color: Colors.grey[700]),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Schedule",
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Colors.pink,
                            fontWeight: FontWeight.bold,
                            fontSize: 40.0),
                      ),
                      const Divider(
                        color: Colors.grey,
                      )
                    ],
                  ),
                  YogaList(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
