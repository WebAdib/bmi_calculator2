import 'package:flutter/material.dart';

class CalculateBMI extends StatelessWidget {
  const CalculateBMI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(245, 245, 245, 1),
      appBar: AppBar(
        title: Text(
          'BMI Calculator',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            //////////////////////////////////////////////////////////  1st text field
            TextField(
              style: TextStyle(
                fontSize: 16,
                color: Colors.black, // Text color when typing
                fontWeight: FontWeight.bold, // Bold text
              ),
              decoration: InputDecoration(
                //labelText: 'Your Name',
                hintText: 'Your Name',
                hintStyle: TextStyle(fontSize: 16, color: Colors.black54),
                prefixIcon: Icon(Icons.person,
                    color: Colors.grey), // Person icon on the left
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0), // Rounded corners
                  borderSide: BorderSide(color: Colors.grey), // Border color
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: BorderSide(color: Colors.grey.withOpacity(0)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: BorderSide(
                      color: Color.fromRGBO(66, 199, 142, 1),
                      width: 2.0), // Highlighted when focused
                ),
                filled: true, // Adds background color
                fillColor: Colors.white,
              ),
            ),
            //////////////////////////////////////////////////////////  Weight and height section
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Container(
                    child: Column(
                      children: [
                        Text(
                          'Weight (kg)',
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Container(
                    child: Column(
                      children: [
                        Text(
                          'Height (cm)',
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
