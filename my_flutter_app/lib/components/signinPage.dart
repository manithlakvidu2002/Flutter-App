import 'package:flutter/material.dart';

class Signinpage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Signinpage();
  }
}

class _Signinpage extends State<Signinpage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 100.0),
          child: Image.asset(
            "assets/logo.png",
            height: 100,
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 70.0),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Enter Username or Email',
              filled: true,
              fillColor: Colors.grey[800],
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide.none,
              ),
              hintStyle: const TextStyle(color: Colors.white70),
            ),
            style: const TextStyle(color: Colors.white, fontSize: 14.0),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 20.0),
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
              hintText: 'Enter Password',
              filled: true,
              fillColor: Colors.grey[800],
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide.none,
              ),
              suffixIcon: const Icon(
                Icons.visibility_off,
                color: Colors.white,
              ),
              hintStyle: const TextStyle(color: Colors.white70),
            ),
            style: const TextStyle(color: Colors.white, fontSize: 14.0),
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: TextButton(
            onPressed: () {
              // Forget Button handler
            },
            child: const Text(
              "Forget Password",
              style: TextStyle(color: Colors.white70, fontSize: 14.0),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 20.0),
          child: ElevatedButton(
            onPressed: () {
              // Handle sign in
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF505050),
              padding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: Container(
              width: double.infinity,
              alignment: Alignment.center,
              child: const Text(
                'Sign In',
                style: TextStyle(
                  color: Color.fromARGB(255, 212, 212, 212),
                  fontSize: 16.0,
                ),
              ),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 20.0),
          child: Row(
            children: [
              Expanded(
                child: Divider(color: Colors.grey[600]),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  'Or Sign in with',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Expanded(
                child: Divider(color: Colors.grey[600]),
              )
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 20.0),
          child: ElevatedButton(
            onPressed: () {
              // Handle Google sign in
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF353333),
              padding: const EdgeInsets.symmetric(vertical: 15.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: Image.asset(
              'assets/google.png',
              height: 24,
              width: 24,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 80.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Create an Account",
                style: TextStyle(color: Colors.white),
              ),
              TextButton(
                onPressed: () {
                  // Handle Register
                },
                child: const Text(
                  "Register",
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
