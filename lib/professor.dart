library course_manager.professor;

import 'package:course_manager/user.dart';

const String LABEL = 'Professor';

class Professor extends User {

  String name;

  Professor(this.name) : super();

  String get label => LABEL;
}
