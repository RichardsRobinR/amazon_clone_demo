import 'package:flutter/material.dart';

class CustomDropDown extends StatefulWidget {
  @override
  _CustomDropDownState createState() => _CustomDropDownState();
}

class _CustomDropDownState extends State<CustomDropDown> {
  String selectedValue = 'Black'; // Default selected value

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4, // Card elevation
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0), // Card border radius
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 16, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Color',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22
              ),
            ),
            SizedBox(height: 5,),
            Container(
              height: 50,
              width: double.infinity,
              child: DropdownButton<String>(
                // isDense: true,
                isExpanded: true,
                underline: Container(), // Hide the default underline
                value: selectedValue,
                onChanged: (newValue) {
                  setState(() {
                    selectedValue = newValue!;
                  });
                },
                items: <String>['Black', 'Red', 'White']
                    .map<DropdownMenuItem<String>>(
                      (String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value,style: TextStyle(fontSize: 21)),
                    );
                  },
                ).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
