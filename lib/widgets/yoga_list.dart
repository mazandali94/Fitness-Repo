import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

final List<String> imageList3 = [
  'assets/images/image_10.jpg',
  'assets/images/image_11.jpg',
  'assets/images/image_12.jpg',
  'assets/images/image_13.jpg',
];

class YogaList extends StatelessWidget {
  const YogaList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.5,
      child: ListView.separated(
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            return SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: ListDetails(indexer: index));
          },
          separatorBuilder: (context, index) {
            return const SizedBox(
              height: 10,
            );
          },
          itemCount: imageList3.length),
    );
  }
}

class ListDetails extends StatelessWidget {
  const ListDetails({
    Key? key,
    required this.indexer,
  }) : super(key: key);
  final int indexer;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.2,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50), color: Colors.white),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              imageList3[indexer],
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.1, vertical: 0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              "DAY $indexer",
              style: TextStyle(
                  color: Color(0xFFF58591),
                  fontWeight: FontWeight.bold,
                  fontSize: 17),
            ),
            const Text(
              "Esay yoga for strength",
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Text(
                "$indexer*3 min",
                style: TextStyle(color: Colors.grey, fontSize: 17),
              ),
            )
          ]),
        ),
      ]),
    );
  }
}


// Expanded(
//       child: ListView.builder(
//         clipBehavior: Clip.none,
//         scrollDirection: Axis.vertical,
//         itemBuilder: (context, index) {
//           return SizedBox(
//             height: MediaQuery.of(context).size.height * 0.5,
//             width: MediaQuery.of(context).size.width * 0.5,
//             child: Image.asset(imageList3[index]),
//           );
//         },
//         itemCount: imageList3.length,
//       ),
//     );