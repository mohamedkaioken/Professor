import 'package:flutter/material.dart';
import 'package:professor_app/models/courses.dart';
import 'package:professor_app/screens/add_course.dart';
import 'package:professor_app/screens/course_list.dart';
import 'package:professor_app/services/database.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
          return StreamProvider<List<Course>>.value(
            value: DatabaseService().courses,
            child: Scaffold(
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
              body: CourseList(),
            ),
          );
        }
}
