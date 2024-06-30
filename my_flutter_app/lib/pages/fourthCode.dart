import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: const Color(0xFF232323),
          width: double.infinity,
          height: double.infinity,
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 70.0,
                      left: 20.0, // Add left padding to align with the container's padding
                      right: 20.0, // Add right padding to align with the container's padding
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
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10.0),
                    width: double.infinity,
                    height: 120,
                    decoration: BoxDecoration(
                      color: const Color(0xFF2D2D2D),
                      borderRadius: BorderRadius.circular(13),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0), // Adjust padding as needed
                          child: Image.asset(
                            'assets/Frame.png', // Replace with your actual image asset path
                            width: 50.0, // Adjust width as needed
                            height: 50.0, // Adjust height as needed
                            fit: BoxFit.contain, // Adjust the fit as needed
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(20.0), // Adjust padding as needed
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Wif Breaker',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Row(
                                children: [
                                  Image(
                                    image: AssetImage('assets/power.png'), // Replace with your actual image asset path
                                    width: 15.0, // Adjust width as needed
                                    height: 15.0, // Adjust height as needed
                                    fit: BoxFit.contain, // Adjust the fit as needed
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 7.0), // Adjust padding as needed
                                    child: Text(
                                      'On',
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 29, 214, 85),
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                'Custom functions.',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 14.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 10.0), // Adjust padding as needed
                          child: IconButton(
                            icon: Image.asset(
                              'assets/powerButton.png', // Replace with your actual image asset path
                              width: 40.0, // Adjust width as needed
                              height: 40.0, // Adjust height as needed
                              fit: BoxFit.contain, // Adjust the fit as needed
                            ),
                            iconSize: 40.0,
                            onPressed: () {
                              // Handle button press
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

void main() => runApp(ThirdPage());
