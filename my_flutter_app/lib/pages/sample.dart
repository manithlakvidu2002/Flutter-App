import 'package:flutter/material.dart';
import 'package:my_flutter_app/components/pointLoader.dart';

class sample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: const Color(0xFF232323),
          padding: const EdgeInsets.all(10),
          width: double.infinity,
          height: double.infinity,
          child: SingleChildScrollView(child: pointLoader()),
        ),
      ),
    );
  }
}
