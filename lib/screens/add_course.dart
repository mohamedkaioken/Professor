import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:professor_app/services/database.dart';

class AddCourse extends StatefulWidget {
  @override
  _AddCourseState createState() => _AddCourseState();
}

class _AddCourseState extends State<AddCourse> {

  final _formKey = GlobalKey<FormState>();
  String title;
  String description;
  String _majors;
  final List<String> majors = ['Development','Design','Business'];
  String hours;
  String maxStudents;
  String currentStudents;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          backgroundColor: Colors.grey[850],
          elevation: 0.0,
          title: Text('Coursatk - Add Course'),
            ),
        body: Container(
          padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
          child: Form(
            key: _formKey,
              child: Column(
                children: <Widget>[
                  SizedBox(height: 20.0,),
                  TextFormField(
                    onChanged: (val){
                      setState(() => title = val);
                    },
                    autocorrect: false,
                    style: TextStyle(color: Colors.redAccent),
                    decoration: InputDecoration(
                      labelText: 'Enter Title',
                      labelStyle: TextStyle(color: Colors.amberAccent),
                    ),
                  ),
                  SizedBox(height: 20.0,),
                  TextFormField(
                    onChanged: (val){
                      setState(() => description = val);
                    },
                    autocorrect: false,
                    style: TextStyle(color: Colors.redAccent),
                    decoration: InputDecoration(
                      labelText: 'Enter Description',
                      labelStyle: TextStyle(color: Colors.amberAccent),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  DropdownButtonFormField(
                    value: _majors,
                    items: majors.map((String major) {
                      return DropdownMenuItem(
                        value: major,
                        child: Text('$major'),
                      );
                    }).toList(),
                    onChanged: (val) => setState(() => _majors = val ),
                  ),
                  SizedBox(height: 20.0,),
                  TextFormField(
                    onChanged: (val){
                      setState(() => hours = val);
                    },
                    autocorrect: false,
                    style: TextStyle(color: Colors.redAccent),
                    decoration: InputDecoration(
                      labelText: 'Enter Hours',
                      labelStyle: TextStyle(color: Colors.amberAccent),
                    ),
                    keyboardType: TextInputType.number,
                    inputFormatters: [WhitelistingTextInputFormatter.digitsOnly],
                  ),
                  SizedBox(height: 20.0,),
                  TextFormField(
                    onChanged: (val){
                      setState(() => maxStudents = val);
                    },
                    autocorrect: false,
                    style: TextStyle(color: Colors.redAccent),
                    decoration: InputDecoration(
                      labelText: 'Enter Max Students',
                      labelStyle: TextStyle(color: Colors.amberAccent),
                    ),
                    keyboardType: TextInputType.number,
                  ),
                  SizedBox(height: 20.0,),
                  RaisedButton(
                    color: Colors.pink[400],
                    child: Text(
                      'Add Course',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () async {
                      await DatabaseService().addCourseData(title,description,_majors,hours,maxStudents,0,"gs://coursatk-7708a.appspot.com/FIRST STEP - PLUS ONE  COVER.PNG");
                      Navigator.pop(context);
                    } ,
                  ),
                ],

              )
          ),
        )
    );
  }
}

