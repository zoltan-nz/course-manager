library course_manager.student;

import 'package:course_manager/user.dart';

const String LABEL = 'Student';

class Student extends User {

  String name;

  Student(this.name) : super();

  String get label => LABEL;
}
