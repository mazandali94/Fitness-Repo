import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({
    Key? key,
    required this.cardColor,
    required this.cardIcon,
    required this.cardTitle,
    required this.cardStat,
  }) : super(key: key);

  final Color? cardColor;
  final IconData cardIcon;
  final String cardTitle;
  final String cardStat;

  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      // mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          decoration: BoxDecoration(
            color: cardColor,
            borderRadius: BorderRadius.circular(9),
          ),
          padding: const EdgeInsets.all(15),
          child: Icon(
            cardIcon,
            color: Colors.white,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              cardTitle,
              style: const TextStyle(
                color: Colors.grey,
                fontSize: 25.0,
              ),
            ),
            Text(
              cardStat,
              style: const TextStyle(
                fontSize: 25.0,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
