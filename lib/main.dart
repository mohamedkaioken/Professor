import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Coursatk'),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.grey[850],
        actions: <Widget>[
      FlatButton.icon(
      icon: Icon(Icons.add),
        label: Text('Add Course', style: TextStyle(color: Colors.redAccent,)),
        onPressed: () {},
      )
        ],
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[],
          )
        ],
      ),
    ),
    );
  }
}