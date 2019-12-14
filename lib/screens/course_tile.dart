import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:professor_app/models/courses.dart';
import 'package:professor_app/screens/add_course.dart';

class CourseTile extends StatelessWidget {

  final Course course;
  CourseTile({this.course});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Card(
        margin: EdgeInsets.fromLTRB(20.0, 6.0, 20.0, 0.0),
        child: Row(
            children: <Widget>[
              Text('${course.title}\n${course.description}\t ${course.currentStudents}/${course.maxStudents}'),
              RaisedButton(
                child: Text('Delete'),
                color: Colors.red,
                onPressed: (){
                  Firestore.instance.collection("course").document(course.title).delete();
                },
              ),

            ]
        ),
      ),
    );
  }
}
