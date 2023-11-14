import 'package:flutter/material.dart';

class CustomDropDownFormField extends StatefulWidget {
  CustomDropDownFormField({super.key});

  @override
  State<CustomDropDownFormField> createState() => _CustomDropDownFormFieldState();
}

class _CustomDropDownFormFieldState extends State<CustomDropDownFormField> {
  final List<String> _nationalityItem = ['Egyption', 'American,', 'Canadian', 'Russian '];

  String? _selectValue;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Padding(
          padding:  EdgeInsets.all(10.0),
          child:  Text('Select Nationality',style: TextStyle(
              color: Colors.blue,
              fontSize: 15
          ),),
        ),
        const Spacer(),
        DropdownButton(

            value: _selectValue,
            items: _nationalityItem
                .map((e) => DropdownMenuItem<String>(
              value: e,
              child:  Text(e),
            ))
                .toList(),
            onChanged: (value) {
              setState(() {
                _selectValue = value;
              });

            }),
      ],
    );
  }
}