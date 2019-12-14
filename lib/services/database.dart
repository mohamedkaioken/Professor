import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:professor_app/models/courses.dart';

class DatabaseService {
  final CollectionReference courseCollection = Firestore.instance.collection('course');

  Future addCourseData(String title, String description, String majors, String hours, String maxStudents) async{
    return await courseCollection.document(title).setData({
      'title': title,
      'description': description,
      'majors': majors,
      'maxStudents': maxStudents,
      'hours': hours,
    });
  }
}