import 'person.dart';
import 'course.dart';

class Student extends Person {
  late List<Course> courses;

  Student(
      {required super.name,
      required super.id,
      required super.email,
      required this.courses});

  void enrollInCourse(Course course) {
    courses.add(course);
  }

  @override
  String toString() {
    return 'Student{courses: $courses}';
  }

  @override
  getDetails() {
    super.getDetails();
    for (Course course in courses) {
      print(
        "name :${course.courseName}, code:${course.courseId}, credit: ${course.credit}, teacher: ${course.teacher.name}",
      );
    }
  }
}
