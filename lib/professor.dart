library course_manager.professor;

import 'package:course_manager/user.dart';

const String LABEL = 'Professor';

class Professor extends User {

  Professor() : super();

  String get label => LABEL;
}
