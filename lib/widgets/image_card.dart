import 'package:flutter/material.dart';

class ImageCard extends StatelessWidget {
  final String tagText;
  final String cardHeader;
  final String cardSubHeader;

  final String cardImage;
  const ImageCard({
    Key? key,
    required this.cardImage,
    required this.tagText,
    required this.cardHeader,
    required this.cardSubHeader,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(25.0),
      width: MediaQuery.of(context).size.width * 0.7,
      // height: MediaQuery.of(context).size.height * 0.25,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            offset: const Offset(5, 5),
            blurRadius: 10.0,
            color: Colors.grey.withOpacity(0.1),
          ),
        ],
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10)),
                child: Image.asset(
                  cardImage,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 10,
                left: 10,
                child: Container(
                  padding: const EdgeInsets.all(8.5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white),
                  child: Text(tagText),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Text(cardHeader),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Text(cardSubHeader),
          )
        ],
      ),
    );
  }
}
