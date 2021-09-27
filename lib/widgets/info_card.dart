import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(9),
          ),
          padding: EdgeInsets.all(8.0),
          child: Icon(
            Icons.lock_clock_outlined,
            color: Colors.white,
          ),
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("sds"),
            Text("dasdas"),
          ],
        ),
      ],
    );
  }
}
