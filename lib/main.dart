import 'dart:io';

import 'student.dart';
import 'teacher.dart';
import 'course.dart';

main() {
  List<Course> courses = [];
  List<Student> students = [];
  List<Teacher> teachers = [];
  runProject() {
    print("1.Login as Student ");
    print("2.Login as Teacher");
    print("3.Add student");
    print("4.Add Teacher");
    print("5.Exit");

    String choice = stdin.readLineSync()!;
    switch (choice) {
      case "2":
        print("Enter your name:");
        late String name;
        name = stdin.readLineSync()!;
        print("Enter your id :");
        late String id;
        id = stdin.readLineSync()!;
        print("Enter your Email:");
        late String email;
        email = stdin.readLineSync()!;
        for (Teacher teacher in teachers) {
          if (name == teacher.name &&
              id == teacher.id &&
              email == teacher.email) {
            print("Welcome $name");
            print("1.show available courses");
            print("2.Add course");
            print("3.Display Your Data");
            print("4.Exit");
            String choice3 = "0";
            choice3 = stdin.readLineSync()!;
            switch (choice3) {
              case "1":
                for (Course course in courses) {
                  print(
                    "name :${course.courseName}, code:${course.courseId}, credit: ${course.credit}, teacher: ${course.teacher.name}",
                  );
                }
                break;
              case "2":
                print("Enter course name :");
                late String courseName;
                courseName = stdin.readLineSync()!;
                print("Enter course Id:");
                late String courseId;
                courseId = stdin.readLineSync()!;
                print("Enter course credit:");
                late String credit;
                credit = stdin.readLineSync()!;
                Course course = Course(
                  courseName: courseName,
                  courseId: courseId,
                  credit: credit,
                  teacher: teacher,
                );
                courses.add(course);
                print('course was added');
                break;
              case "3":
                teacher.getDetails();
                break;
              default:
                break;
            }
          }
        }
        runProject();
        break;
      case "1":
        print("Enter student name:");
        late String name;
        name = stdin.readLineSync()!;
        print("Enter your id :");
        late String id;
        id = stdin.readLineSync()!;
        print("Enter your Email:");
        late String email;
        email = stdin.readLineSync()!;

        for (Student student in students) {
          if (name == student.name &&
              id == student.id &&
              email == student.email) {
            if (courses.isEmpty) {
              print('we are sorry, we haven\'t any courses yet');
            } else {
              print("Availble Courses : ");
              for (Course course in courses) {
                print(
                    "name :${course.courseName}, code:${course.courseId}, credit: ${course.credit}, teacher: ${course.teacher.name}");
              }
              for (Course course in courses) {
                print("Enroll to ${course.courseId}");
              }
              print("Exit");
              late String choice2;
              choice2 = stdin.readLineSync()!;
              for (Course course in courses) {
                if (choice2 == course.courseId) {
                  student.enrollInCourse(course);
                  student.getDetails();
                }
              }
              student.getDetails();
            }
          }
        }
        runProject();
        break;
      case "3":
        print("Enter your name :");
        late String name;
        name = stdin.readLineSync()!;
        print("Enter your id :");
        late String id;
        id = stdin.readLineSync()!;
        print("Enter your Email:");
        late String email;
        email = stdin.readLineSync()!;

        Student student =
            Student(name: name, id: id, email: email, courses: []);

        students.add(student);
        for (Student student in students) {
          if (name == student.name &&
              id == student.id &&
              email == student.email) {
            if (courses.isEmpty) {
              print('we are sorry, we haven\'t any courses yet');
            } else {
              print("Availble Courses : ");
              for (Course course in courses) {
                print(
                    "name :${course.courseName}, code:${course.courseId}, credit: ${course.credit}, teacher: ${course.teacher.name}");
              }
              for (Course course in courses) {
                print("Enroll to ${course.courseId}");
              }
              print("Exit");
              late String choice2;
              choice2 = stdin.readLineSync()!;
              for (Course course in courses) {
                if (choice2 == course.courseId) {
                  student.enrollInCourse(course);
                  student.getDetails();
                }
              }
              student.getDetails();
            }
          }
        }
        runProject();
        break;
      case "4":
        print("Enter your name :");
        late String name;
        name = stdin.readLineSync()!;
        print("Enter your id :");
        late String id;
        id = stdin.readLineSync()!;
        print("Enter your Email:");
        late String email;
        email = stdin.readLineSync()!;
        Teacher teacher = Teacher(name: name, id: id, email: email);
        teachers.add(teacher);

        print("Welcome $name");
        print("1.show available courses");
        print("2.Add course");
        print("3.Display Your Data");
        print("4.Exit");
        String choice3 = "0";
        choice3 = stdin.readLineSync()!;
        switch (choice3) {
          case "1":
            for (Course course in courses) {
              print(
                "name :${course.courseName}, code:${course.courseId}, credit: ${course.credit}, teacher: ${course.teacher.name}",
              );
            }
            break;
          case "2":
            print("Enter course name :");
            late String courseName;
            courseName = stdin.readLineSync()!;
            print("Enter course Id:");
            late String courseId;
            courseId = stdin.readLineSync()!;
            print("Enter course credit:");
            late String credit;
            credit = stdin.readLineSync()!;
            Course course = Course(
              courseName: courseName,
              courseId: courseId,
              credit: credit,
              teacher: teacher,
            );
            courses.add(course);
            print('course was added');
            break;
          case "3":
            teacher.getDetails();
            break;
          default:
            break;
        }
        runProject();
        break;
      case "5":
        print('thanks for contact with us');
        break;
    }
    return;
  }

  runProject();
}
