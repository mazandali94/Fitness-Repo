import 'package:flutter/material.dart';

class ProgramCard extends StatelessWidget {
  const ProgramCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(25.0),
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: [
          Image.asset("assets/images/image_9.jpg"),
          Positioned(
            top: 10,
            left: 10,
            child: Container(
              padding: EdgeInsets.all(8.5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.amber,
              ),
              child: const Text("dsda"),
            ),
          ),
          Positioned(
            top: 60,
            left: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'data',
                  style: TextStyle(
                    fontSize: 35.0,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'data',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
