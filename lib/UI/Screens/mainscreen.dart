import 'package:convapp/UI/Screens/hieght.dart';
import 'package:convapp/UI/Screens/temp.dart';
import 'package:convapp/UI/Screens/wieght.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyan,
          centerTitle: true,
          title: Text('Converter App'),
        ),
        body:
            //Container(
            //   child: Column(
            //     mainAxisAlignment: MainAxisAlignment.spaceAround,
            //     crossAxisAlignment: CrossAxisAlignment.center,
            //     children: <Widget>[
            //       Row(
            //         mainAxisAlignment: MainAxisAlignment.spaceAround,
            //         children: <Widget>[
            Container(
          margin: EdgeInsets.only(left: 30, top: 50, right: 30, bottom: 50),
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.cyan,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin:
                    EdgeInsets.only(left: 90, top: 50, right: 50, bottom: 50),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    IconButton(
                        icon: Icon(Icons.call_merge),
                        iconSize: 30,
                        color: Colors.white,
                        onPressed: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return Hieght();
                          }));
                        }),
                    Text(
                      'Height',
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ),
              ),
              Container(
                margin:
                    EdgeInsets.only(left: 90, top: 50, right: 50, bottom: 50),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    IconButton(
                        icon: Icon(Icons.beach_access),
                        iconSize: 30,
                        color: Colors.white,
                        onPressed: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return Temp();
                          }));
                        }),
                    Text(
                      '  Temp ',
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ),
              ),
              Container(
                margin:
                    EdgeInsets.only(left: 90, top: 50, right: 50, bottom: 50),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    IconButton(
                        icon: Icon(Icons.fitness_center),
                        iconSize: 30,
                        color: Colors.white,
                        onPressed: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return Wieght();
                          }));
                        }),
                    Text(
                      'Wieght',
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ),
              )
            ],
          ),
        )
        //    ],
        //  ),

        // Container(
        //   decoration: BoxDecoration(
        //     border: Border.all(width: 3.0, color: Colors.blue),
        //     borderRadius: BorderRadius.all(
        //       Radius.circular(10.0),
        //     ),
        //   ),

        //   height: 120,
        //   width: 160,
        //   child: FlatButton(
        //     onPressed: () => {},
        //     color: Colors.orange,
        //     //  padding: EdgeInsets.all(10.0),
        //     child: Column(
        //       mainAxisAlignment: MainAxisAlignment.spaceAround,
        //       children: <Widget>[Icon(Icons.add), Text("Add")],
        //     ),
        //   ),

        //   //   child: SizedBox(
        //   //     width: 150.0,
        //   //     height: 200.0,
        //   //     child: const IconButton(
        //   //       icon: Icon(Icons.access_alarm),
        //   //       onPressed: null,
        //   //     ),
        //   //   ),
        //   //   //  color: Colors.amber,
        //   //   color: Colors.amber,
        // ),
        // Container(
        //   child: SizedBox(
        //       width: 150.0,
        //       height: 200.0,
        //       child: Column(
        //         mainAxisAlignment: MainAxisAlignment.center,
        //         children: <Widget>[
        //           const IconButton(
        //             icon: Icon(Icons.access_alarm),
        //             onPressed: null,
        //           ),
        //           Text('waghit')
        //         ],
        //       )),
        //   color: Colors.amber,
        // ),

        // Row(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: <Widget>[
        //     Icon(Icons.change_history),
        //   ],
        // ),

        // Row(
        //   children: <Widget>[
        //     Card(
        //       color: Colors.amberAccent,
        //       child: Row(
        //         children: <Widget>[
        //           IconButton(icon: Icon(Icons.ac_unit), onPressed: null),
        //         ],
        //       ),
        //     )
        //   ],
        // )
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.spaceAround,
        //   children: <Widget>[
        //     Container(
        //       child: SizedBox(
        //         width: 150.0,
        //         height: 200.0,
        //         child: const IconButton(
        //           icon: Icon(Icons.access_alarm),
        //           onPressed: null,
        //         ),
        //       ),
        //       color: Colors.amber,
        //     ),
        //     Container(
        //       child: SizedBox(
        //         width: 150.0,
        //         height: 200.0,
        //         child: const IconButton(
        //           icon: Icon(Icons.access_alarm),
        //           onPressed: null,
        //         ),
        //       ),
        //       color: Colors.amber,
        //     ),
        //   ],
        // )
        //     ],
        //   ),
        // )
        //),
        );
  }
}
