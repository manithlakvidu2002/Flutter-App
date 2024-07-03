import 'package:flutter/material.dart';

class pointScroller extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _pointScroller();
  }
}

class _pointScroller extends State<pointScroller> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      width: double.infinity,
      height: 90,
      child: Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 50.0),
            width: double.infinity,
            height: 100,
            decoration: BoxDecoration(
              color: const Color(0xFF2D2D2D),
              borderRadius: BorderRadius.circular(13),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding:
                      EdgeInsets.only(left: 10.0), // Adjust padding as needed
                  child: CircleAvatar(
                    radius: 25.0,
                    backgroundImage:
                        AssetImage('assets/profilePhoto.jpg'), // Use AssetImage
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(left: 20.0), // Adjust padding as needed
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Manith Lakvidu',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Padding(
                  padding:
                      EdgeInsets.only(right: 10.0), // Adjust padding as needed
                  child: Text(
                    '200',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: 0,
            top: 25,
            child: Container(
              width: 40,
              height: 40,
              decoration: const BoxDecoration(
                color: Color(0xFF444444),
                shape: BoxShape.circle,
              ),
              child: const Center(
                child: Text(
                  '1',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
