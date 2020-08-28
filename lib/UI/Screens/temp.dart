import 'package:convapp/constant.dart';
import 'package:convapp/widget/tempPicker.dart';
import 'package:convapp/widget/textfields.dart';
import 'package:flutter/material.dart';

class Temp extends StatefulWidget {
  @override
  _TempState createState() => _TempState();
}

class _TempState extends State<Temp> {
  String fromTemp = 'cels';

  String toTemp = 'cels';

  double value = 1.0;

  String result = '0';

  getFirstPickerSelectedItem(int index) {
    String selectedTemp = temp[index];
    fromTemp = selectedTemp;
    setState(() {
      calculateConverter();
    });
  }

  getSecondPickerSelectedItem(int index) {
    String selectedTemp = temp[index];
    toTemp = selectedTemp;
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
    if ('$fromTemp' == 'cels' && '$toTemp' == 'fehr') {
      result = '${value * 1.8 + 32.0}fehr';
    } else if ('$fromTemp' == 'fehr' && '$toTemp' == 'cels') {
      result = '${(value - 32.0) / 1.8}cels';
      // }
    } else if ('$fromTemp' == 'fehr' && '$toTemp' == 'fehr') {
      result = '${(value)}Fehr';
    } else if ('$fromTemp' == 'cels' && '$toTemp' == 'cels') {
      result = '${(value)}cels';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('data'),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.only(left: 10, top: 10, right: 10, bottom: 10),
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.yellow,
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
        border: Border.all(width: 1.0, color: Colors.blue),
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
                child: TempPicker(
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
          border: Border.all(width: 1.0, color: Colors.blue),
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
                  child: TempPicker(
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
