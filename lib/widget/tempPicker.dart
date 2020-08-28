import 'package:convapp/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TempPicker extends StatelessWidget {
  final Function getSelectedIndexFunction;
  TempPicker({this.getSelectedIndexFunction});

  @override
  Widget build(BuildContext context) {
    return CupertinoPicker(
        itemExtent: 30,
        magnification: 1.3,
        onSelectedItemChanged: (int x) => getSelectedIndexFunction(x),
        children: temp.map((e) => Text(e)).toList());
  }
}
