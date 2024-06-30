import 'package:flutter/material.dart';

class SwitchOption extends StatefulWidget {
  const SwitchOption({super.key});

  @override
  State<StatefulWidget> createState() {
    return _Switch();
  }
}

class _Switch extends State<SwitchOption> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
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
            padding:
                const EdgeInsets.only(left: 10.0), // Adjust padding as needed
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
                      image: AssetImage(
                          'assets/power.png'), // Replace with your actual image asset path
                      width: 15.0, // Adjust width as needed
                      height: 15.0, // Adjust height as needed
                      fit: BoxFit.contain, // Adjust the fit as needed
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: 7.0), // Adjust padding as needed
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
            padding:
                const EdgeInsets.only(right: 10.0), // Adjust padding as needed
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
                print('Power button pressed');
              },
            ),
          ),
        ],
      ),
    );
  }
}
