import 'package:convapp/constant.dart';

import 'package:convapp/widget/textfields.dart';
import 'package:convapp/widget/wieghtpicker.dart';
import 'package:flutter/material.dart';

class Wieght extends StatefulWidget {
  @override
  _WieghtState createState() => _WieghtState();
}

class _WieghtState extends State<Wieght> {
  String fromTemp = 'G';

  String toTemp = 'G';

  double value = 1.0;

  String result = '0';

  getFirstPickerSelectedItem(int index) {
    String selectedWieght = wieght[index];
    fromTemp = selectedWieght;
    setState(() {
      calculateConverter();
    });
  }

  getSecondPickerSelectedItem(int index) {
    String selectedWieght = wieght[index];
    toTemp = selectedWieght;
    setState(() {
      calculateConverter();
    });
  }

  getTextFiledValue(double value) {
    this.value = value;
    setState(() {
      calculateConverter();
    });
  }

  calculateConverter() {
    if ('$fromTemp' == 'G' && '$toTemp' == 'G') {
      result = '${value}G';
    } else if ('$fromTemp' == 'G' && '$toTemp' == 'KG') {
      result = '${(value / 1000)}KG';
      // }
    } else if ('$fromTemp' == 'KG' && '$toTemp' == 'G') {
      result = '${(value * 1000)}G';
    } else if ('$fromTemp' == 'KG' && '$toTemp' == 'KG') {
      result = '${(value)}KG';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: Text('Wieght'),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.only(left: 10, top: 10, right: 10, bottom: 10),
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10)),
            boxShadow: [
              BoxShadow(
                color: Colors.brown.withOpacity(0.9),
                spreadRadius: 6,
                blurRadius: 10,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: Column(
            children: <Widget>[
              FirstHalf(
                brokerFun1: getFirstPickerSelectedItem,
                textFieldFunction: getTextFiledValue,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.autorenew),
                ],
              ),
              Scondhalf(
                brokerFun2: getSecondPickerSelectedItem,
                result: result,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FirstHalf extends StatelessWidget {
  final Function brokerFun1;
  // final Function brokerFun2;
  final Function textFieldFunction;
  FirstHalf({this.brokerFun1, this.textFieldFunction});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10, top: 30, right: 10, bottom: 50),
      decoration: BoxDecoration(
        border: Border.all(width: 1.0, color: Colors.white),
        borderRadius: BorderRadius.all(
          Radius.circular(10.0),
        ),
      ),
      height: 180,
      width: 320,
      child: Container(
        margin: EdgeInsets.only(left: 20, right: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
                child: WieghtPicker(
              getSelectedIndexFunction: brokerFun1,
            )),
            Expanded(child: Text('')),
            Expanded(
                child: AllTextField(
              getText: textFieldFunction,
            ))
          ],
        ),
      ),
    );
  }
}

class Scondhalf extends StatelessWidget {
  final Function brokerFun2;
  final String result;
  Scondhalf({this.brokerFun2, this.result});
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 10, top: 30, right: 10, bottom: 30),
        decoration: BoxDecoration(
          border: Border.all(width: 1.0, color: Colors.white),
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        height: 180,
        width: 320,
        child: Container(
          margin: EdgeInsets.only(left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                  child: WieghtPicker(
                getSelectedIndexFunction: brokerFun2,
              )),
              Expanded(child: Text('')),
              Expanded(
                child: Text(result),
              )
            ],
          ),
        ));
  }
}
