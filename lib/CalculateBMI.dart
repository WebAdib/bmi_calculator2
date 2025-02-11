import 'package:flutter/material.dart';
import 'package:wheel_slider/wheel_slider.dart';
import 'widgets/CustomPointer.dart';

class CalculateBMI extends StatefulWidget {
  const CalculateBMI({super.key});

  @override
  _CalculateBMIState createState() => _CalculateBMIState();
}

class _CalculateBMIState extends State<CalculateBMI> {
  int selectedAge = 24; // Initial selected value for age

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
            //////////////////////////////////////////////////////////////////// Name Input
            TextField(
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
              cursorColor: Color.fromRGBO(66, 199, 142, 1),
              decoration: InputDecoration(
                hintText: 'Your Name',
                hintStyle: TextStyle(fontSize: 16, color: Colors.black54),
                prefixIcon: Icon(Icons.person, color: Colors.grey),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: BorderSide(color: Colors.grey),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: BorderSide(color: Colors.grey.withOpacity(0)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: BorderSide(
                      color: Color.fromRGBO(66, 199, 142, 0), width: 2.0),
                ),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            SizedBox(height: 30),

            //////////////////////////////////////////////////////////////////// Weight & Height Section
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Text('Weight (kg)', style: TextStyle(fontSize: 16)),
                      SizedBox(height: 10),
                      TextField(
                        keyboardType: TextInputType.number,
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                        cursorColor: Color.fromRGBO(66, 199, 142, 1),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 5.0),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            borderSide:
                                BorderSide(color: Colors.grey.withOpacity(0)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            borderSide: BorderSide(
                                color: Color.fromRGBO(66, 199, 142, 0),
                                width: 2.0),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 30),
                Expanded(
                  child: Column(
                    children: [
                      Text('Height (cm)', style: TextStyle(fontSize: 16)),
                      SizedBox(height: 10),
                      TextField(
                        keyboardType: TextInputType.number,
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                        cursorColor: Color.fromRGBO(66, 199, 142, 1),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 5.0),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            borderSide:
                                BorderSide(color: Colors.grey.withOpacity(0)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            borderSide: BorderSide(
                                color: Color.fromRGBO(66, 199, 142, 0),
                                width: 2.0),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),

            //////////////////////////////////////////////////////////////////// Age Slider Section
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Text('Age', style: TextStyle(fontSize: 16)),
                      SizedBox(height: 10),
                      Container(
                        height: 70,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                WheelSlider.number(
                                  onValueChanged: (value) {
                                    setState(() {
                                      selectedAge = value;
                                    });
                                  },
                                  totalCount: 100,
                                  initValue: selectedAge,
                                  currentIndex: selectedAge,
                                  perspective: 0.004,
                                  horizontal: true,
                                  showPointer: false,
                                  scrollPhysics: const BouncingScrollPhysics(),
                                  hapticFeedbackType:
                                      HapticFeedbackType.lightImpact,
                                  selectedNumberStyle: TextStyle(
                                    fontSize: 26,
                                    fontWeight: FontWeight.bold,
                                    //color: Colors.green,
                                  ),
                                  unSelectedNumberStyle: TextStyle(
                                    fontSize: 22,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            Positioned(
                              child: CustomPointer(
                                size: 18,
                                color: Color.fromRGBO(66, 199, 142, 1),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
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
