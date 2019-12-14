import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:professor_app/models/courses.dart';

class DatabaseService {
  final CollectionReference courseCollection = Firestore.instance.collection('course');

  Future addCourseData(String title, String description, String majors, String hours, String maxStudents, int currentStudents) async{
    return await courseCollection.document(title).setData({

      'title': title,
      'description': description,
      'majors': majors,
      'maxStudents': int.parse(maxStudents),
      'currentStudents': currentStudents,
      'hours': int.parse(hours),
    });
  }

  List<Course> _courseData(QuerySnapshot snapshot)
  {
    return snapshot.documents.map((doc) {
      return Course(
        title: doc.data['title'] ?? '',
        description: doc.data['description'] ?? '',
        majors: doc.data['majors'] ?? '',
        hours: doc.data['hours'] ?? 0,
        maxStudents: doc.data['maxStudents'] ?? 0,
        currentStudents: doc.data['currentStudents'] ?? 0,

      );
     }
    ).toList();
  }

  Stream<List<Course>> get courses{
    return courseCollection.snapshots().map(_courseData);
  }

}