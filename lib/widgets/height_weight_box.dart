import 'package:flutter/material.dart';

class HeightWeightBox extends StatelessWidget {
  const HeightWeightBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Text('Weight (kg)', style: TextStyle(fontSize: 16)),
          SizedBox(height: 10),
          TextField(
            keyboardType: TextInputType.number,
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
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
        ],
      ),
    );
  }
}
