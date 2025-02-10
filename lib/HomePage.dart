import 'package:flutter/material.dart';

import 'CalculateBMI.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Welcome to the Home Page!'),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CalculateBMI()));
              },
              child: Text('Go to Second Page'),
            ),
          ],
        ),
      ),
    );
  }
}
