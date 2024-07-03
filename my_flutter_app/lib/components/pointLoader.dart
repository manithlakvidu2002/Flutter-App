import 'package:flutter/material.dart';
import 'package:my_flutter_app/components/pointScroller.dart';

class pointLoader extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _pointLoader();
  }
}

class _pointLoader extends State<pointLoader> {
  String dropdownValue = 'Option 1'; // Default dropdown value

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 60.0),
          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.center, // Align children to the left
            children: [
              Text(
                'Point Loader Board',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20), // Adjust spacing between text and dropdown
              DropdownButton<String>(
                value: dropdownValue,
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownValue = newValue!;
                  });
                },
                dropdownColor: Colors.grey[900], // Dropdown background color
                style: TextStyle(color: Colors.white), // Dropdown text style
                underline: Container(
                  height: 2,
                  color: Colors.deepPurpleAccent, // Dropdown underline color
                ),
                isDense: true, // Reduces the dropdown's height
                iconSize: 24, // Adjusts the dropdown arrow size
                items: <String>['Option 1', 'Option 2', 'Option 3']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 16.0), // Adjust left padding
                      child: Text(
                        value,
                        style:
                            TextStyle(color: Colors.white), // Item text style
                      ),
                    ),
                  );
                }).toList(),
              ),
            ],
          ),
        ),
        // Adjust spacing between dropdown and pointScroller
        pointScroller(), // Assuming this is your custom widget
      ],
    );
  }
}
