import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:professor_app/models/courses.dart';
import 'package:professor_app/screens/add_course.dart';
import 'package:professor_app/screens/upload.dart';

class CourseTile extends StatelessWidget {

  final Course course;
  CourseTile({this.course});
  @override
  Widget build(BuildContext context) {
      return Padding(
        padding: EdgeInsets.only(top: 8.0),
        child: Card(
          color: Colors.grey[900],
          margin: EdgeInsets.fromLTRB(20.0, 6.0, 20.0, 0.0),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Name: ${course.title}\nDescription: ${course.description}\n'
                      'Currently Enrolled: ${course.currentStudents}/${course
                      .maxStudents}',
                  style: TextStyle(color: Colors.amberAccent),
                ),
                RaisedButton(
                  child: Row(
                      children: <Widget>[
                        Text('Delete'),
                        Icon(
                          Icons.delete,
                          color: Colors.black,
                        )
                      ]
                  ),
                  color: Colors.pink,
                  onPressed: () {
                    Firestore.instance.collection("course").document(
                        course.title).delete();
                  },
                ),
                RaisedButton(
                  child: Row(
                      children: <Widget>[
                        Text('Upload'),
                        Icon(
                          Icons.file_upload,
                          color: Colors.black,
                        )
                      ]
                  ),
                  color: Colors.pink,
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) => UploadMultipleImageDemo()));
                  },
                ),
              ]
          ),
        ),
      );
    }
  }

