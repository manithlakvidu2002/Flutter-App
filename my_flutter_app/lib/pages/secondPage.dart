import 'package:flutter/material.dart';
import 'package:my_flutter_app/components/signinPage.dart';

class secondpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: const Color(0xFF232323),
          width: double.infinity,
          height: double.infinity,
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(child: Signinpage()),
        ),
      ),
    );
  }
}
