import 'package:flutter/material.dart';
import 'package:professor_app/models/courses.dart';
import 'package:provider/provider.dart';
import 'package:professor_app/screens/course_tile.dart';
import 'package:professor_app/services/database.dart';


class CourseList extends StatefulWidget {
  @override
  _CourseListState createState() => _CourseListState();
}

class _CourseListState extends State<CourseList> {
  @override
  Widget build(BuildContext context) {

    final courses = Provider.of<List<Course>>(context);

    return ListView.builder(
      itemCount: courses.length,
      itemBuilder: (context, index){
        return CourseTile(course: courses[index]);
      },
    );
  }
}
