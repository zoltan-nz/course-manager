library course_manager.elements.user_button;

import 'package:polymer/polymer.dart';
import 'package:course_manager/user.dart';
import 'package:course_manager/professor.dart';
import 'package:course_manager/student.dart';
import 'dart:html';

@CustomTag('user-button')
class UserButton extends PolymerElement {

  @published String type;
  @observable User user;

  UserButton.created() : super.created() {
    user = this.type == 'professor' ? new Professor('Prof. Smith') : new Student('John');
  }

  secondStep() {
    dispatchEvent(new CustomEvent('router',
      detail: {'route': 'secondStep', 'user': user}));
  }
}
