import 'package:flutter/material.dart';
import 'package:my_flutter_app/components/devicePage.dart';

class thirdpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: const Color(0xFF232323),
          padding: const EdgeInsets.all(20),
          width: double.infinity,
          height: double.infinity,
          child: SingleChildScrollView(child: Devicepage()),
        ),
      ),
    );
  }
}
