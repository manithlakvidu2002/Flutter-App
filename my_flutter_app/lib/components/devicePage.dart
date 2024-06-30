import 'package:flutter/material.dart';
import 'package:my_flutter_app/components/deviceScroller.dart';
import 'package:my_flutter_app/components/switch_option.dart';

class Devicepage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Devicepage();
  }
}

class _Devicepage extends State<Devicepage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
              top: 70.0,
              //left:
              //  0.0, // Add left padding to align with the container's padding
              //right:
              //  0.0, // Add right padding to align with the container's padding
            ),
            child: Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back),
                  color: Colors.white,
                  iconSize: 20.0,
                  onPressed: () {
                    // Handle back button press
                  },
                ),
                const Expanded(
                  child: Center(
                    child: Text(
                      'All devices',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.add),
                  color: const Color.fromARGB(255, 29, 214, 85),
                  iconSize: 20.0,
                  onPressed: () {
                    // Handle plus button press
                  },
                ),
              ],
            ),
          ),

          const SizedBox(height: 20.0),
          SingleChildScrollView(child: Devicescroller())
          // box
        ],
      ),
    );
  }
}
