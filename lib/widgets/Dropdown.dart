import 'package:flutter/material.dart';

class DropdownExample extends StatelessWidget {
  List<String> dropdownItems = [
    'Option 1',
    'Option 2',
    'Option 3',
    'Option 4',
  ];
  String? selectedDropdownItem;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Dropdown Example'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Select an option:',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 20),
              buildDropdownButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildDropdownButton() {
    return DropdownButton<String>(
      value: selectedDropdownItem,
      onChanged: (String? newValue) {
        selectedDropdownItem = newValue;
      },
      items: dropdownItems.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
