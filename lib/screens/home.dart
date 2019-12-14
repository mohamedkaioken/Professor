import 'package:flutter/material.dart';
import 'package:professor_app/screens/add_course.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => AddCourse()));

            },
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
    );
  }
}
