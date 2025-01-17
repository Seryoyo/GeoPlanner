import 'package:flutter/material.dart';
import 'mapPage.dart'; // Make sure this file exists and is correctly imported

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Set TitlePage as the starting page
      home: const TitlePage(),
    );
  }
}

class TitlePage extends StatefulWidget {
  const TitlePage({super.key});

  @override
  State<TitlePage> createState() => _TitlePageState();
}

class _TitlePageState extends State<TitlePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Column(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(top: 115, bottom: 15),
            child: Text(
              'GeoPlanner',
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                shadows: [
                  Shadow(
                    offset: Offset(4.0, 4.0),
                    blurRadius: 3.0,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 0, bottom: 15),
            child: Image(
              image: AssetImage('assets/AppLogo.png'),
            ),
          ),
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            ),
            onPressed: () {
              // Navigate to MapPage when the button is pressed
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MapPage()),
              );
            },
            child: Text(
              'Continue',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
