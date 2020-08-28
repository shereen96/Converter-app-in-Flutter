import 'package:flutter/material.dart';

class AllTextField extends StatelessWidget {
  final Function getText;

  AllTextField({this.getText});
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLength: 3,
      onChanged: (value) => getText(double.parse(value)),
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          fillColor: Color(0x55FFFFFF),
          filled: true,
          labelText: 'Input',
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
    );
  }
}
