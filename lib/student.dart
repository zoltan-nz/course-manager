library course_manager.student;

import 'package:course_manager/user.dart';

const String LABEL = 'Student';

class Student extends User {

  Student() : super();

  String get label => LABEL;
}
