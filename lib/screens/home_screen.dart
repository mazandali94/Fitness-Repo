import 'package:fitt_app/widgets/header_with_slider.dart';
import 'package:fitt_app/widgets/image_list.dart';
import 'package:fitt_app/widgets/program_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int navselecte = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        // onTap: _navigateToNextScreen(context),
        iconSize: 30,
        backgroundColor: Colors.white,
        currentIndex: 0,
        selectedItemColor: const Color(0xFFF58591),
        unselectedItemColor: Colors.grey,
        elevation: 10.0,
        items: const [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: "Tranning",
            icon: Icon(Icons.place),
          ),
          BottomNavigationBarItem(
            label: "Tips",
            icon: Icon(Icons.face),
          ),
        ],
      ),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerbar) {
          return [
            SliverAppBar(
              backgroundColor: Colors.white,
              // floating: true,
              // snap: true,
              expandedHeight: MediaQuery.of(context).size.height * 0.4,
              pinned: false,
              stretch: true,
              flexibleSpace: FlexibleSpaceBar(
                background: HeaderWithSlider(),
              ),
            )
          ];
        },
        body: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 120),
              padding:
                  const EdgeInsets.symmetric(horizontal: 25.0, vertical: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Essentails For Beginners",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
                  ),
                  InkWell(
                    child: Text(
                      "More",
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                    onTap: null,
                  )
                ],
              ),
            ),
            const ImageList(),
            const ProgramCard(),
          ],
        ),
      ),
    );
  }
}
//  SingleChildScrollView(
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             const HeaderWithSlider(),
//             Container(
//               margin: const EdgeInsets.only(top: 120),
//               padding:
//                   const EdgeInsets.symmetric(horizontal: 25.0, vertical: 20.0),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: const [
//                   Text(
//                     "Essentails For Beginners",
//                     style:
//                         TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
//                   ),
//                   InkWell(
//                     child: Text(
//                       "More",
//                       style: TextStyle(
//                         fontSize: 18.0,
//                       ),
//                     ),
//                     onTap: null,
//                   )
//                 ],
//               ),
//             ),
//             const ImageList(),
//             const ProgramCard(),
//           ],
//         ),
//       ),

// Container(
//                           margin: const EdgeInsets.only(top: 120),
//                           padding: const EdgeInsets.symmetric(
//                               horizontal: 25.0, vertical: 20.0),
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: const [
//                               Text(
//                                 "Essentails For Beginners",
//                                 style: TextStyle(
//                                     fontWeight: FontWeight.bold,
//                                     fontSize: 30.0),
//                               ),
//                               InkWell(
//                                 child: Text(
//                                   "More",
//                                   style: TextStyle(
//                                     fontSize: 18.0,
//                                   ),
//                                 ),
//                                 onTap: null,
//                               )
//                             ],
//                           ),
//                         ),
//                         const ImageList(),
//                         const ProgramCard(),