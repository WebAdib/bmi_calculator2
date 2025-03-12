import 'package:flutter/material.dart';
import 'package:wheel_slider/wheel_slider.dart';
import 'widgets/CustomPointer.dart';
import 'widgets/height_weight_box.dart';

class CalculateBMI extends StatefulWidget {
  const CalculateBMI({super.key});

  @override
  _CalculateBMIState createState() => _CalculateBMIState();
}

class _CalculateBMIState extends State<CalculateBMI> {
  int selectedAge = 24; // Initial selected value for age
  String selectedGender = '';

  void selectGender(String gender) {
    setState(() {
      selectedGender = gender;
    });
  }

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
      body: SingleChildScrollView(
        child: Padding(
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
                  HeightWeightBox(),
                  SizedBox(width: 30),
                  HeightWeightBox()
                ],
              ),
              SizedBox(height: 20),

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
                                    scrollPhysics:
                                        const BouncingScrollPhysics(),
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
              //////////////////////////////////////////////////////////////// Gender selection
              SizedBox(height: 30),
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () => selectGender('Male'),
                      child: Stack(
                        children: [
                          Container(
                            height: 120,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.male,
                                  size: 50,
                                  color: Colors.black,
                                ),
                                SizedBox(height: 8),
                                Text(
                                  'Male',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          if (selectedGender == 'Male')
                            Positioned(
                              top: 8, // Adjusted to be inside the container
                              right: 8, // Adjusted to be inside the container
                              child: CircleAvatar(
                                backgroundColor:
                                    Color.fromRGBO(66, 199, 142, 1),
                                radius: 12,
                                child: Icon(
                                  Icons.check,
                                  color: Colors.white,
                                  size: 16,
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 30),
                  Expanded(
                    child: GestureDetector(
                      onTap: () => selectGender('Female'),
                      child: Stack(
                        children: [
                          Container(
                            height: 120,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.female,
                                  size: 50,
                                  color: Colors.black,
                                ),
                                SizedBox(height: 8),
                                Text(
                                  'Female',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          if (selectedGender == 'Female')
                            Positioned(
                              top: 8,
                              right: 8,
                              child: CircleAvatar(
                                backgroundColor:
                                    Color.fromRGBO(66, 199, 142, 1),
                                radius: 12,
                                child: Icon(
                                  Icons.check,
                                  color: Colors.white,
                                  size: 16,
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              //////////////////////////////////////////////////////////////////// Time Section
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Text('Time', style: TextStyle(fontSize: 16)),
                        SizedBox(height: 10),
                        Container(
                          height: 70,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('8 Aug, 2025',
                                    style: TextStyle(fontSize: 22)),
                                SizedBox(width: 10),
                                Icon(
                                  Icons.calendar_month_outlined,
                                  color: Colors.grey,
                                  size: 35,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              ///////////////////////////////////////////////////// Calculate Button
              SizedBox(height: 30),
              SizedBox(
                height: 60,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('CALCULATE', style: TextStyle(fontSize: 26)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
