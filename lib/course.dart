import 'student.dart';
import 'teacher.dart';
class Course {
  late String courseName;
  late String courseId;
  late String credit;
  late Teacher teacher;
  Course({
    required this.courseName,
    required this .courseId,
    required this.credit,
    required this.teacher,
  });

  getCourseDetails(){
    print("name :$courseName, code:$courseId, credit: $credit, teacher: ${teacher.name}");
  }
}