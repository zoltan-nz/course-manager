library course_manager.elements.app_main;

import 'package:polymer/polymer.dart';
import 'dart:html';
import 'package:course_manager/user.dart';
import 'package:course_manager/professor.dart';

@CustomTag('app-main')
class AppMain extends PolymerElement {

  @published User user;

  @observable bool firstStep = false;
  @observable bool secondStep = false;
  @observable bool professorForm = false;
  @observable bool studentForm = false;

  AppMain.created() : super.created() {
    this.firstStep = true;
  }

  void router(Event e, var detail, Node sender) {
    e.preventDefault();
    switch (detail['route']) {
      case 'secondStep':
        secondStepRoute(detail['user']);
        break;
    }
  }

  void secondStepRoute(User selectedUser) {
    this.user = selectedUser;

    this.firstStep = false;
    this.secondStep = true;

    this.user is Professor ? this.professorForm = true : this.studentForm = true;
  }
}
