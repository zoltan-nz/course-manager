import 'package:polymer/polymer.dart';
import 'dart:html';
import 'package:course_manager/user.dart';

@CustomTag('app-main')
class App extends PolymerElement {

  @published User user;

  @observable bool firstStep = false;
  @observable bool secondStep = false;
  @observable bool professorForm = false;
  @observable bool studentForm = false;

  App.created() : super.created() {
    firstStep = true;
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

    firstStep = false;
    secondStep = true;

    print(user.runtimeType);

    switch (user.runtimeType.toString()) {
      case 'Professor':
        professorForm = true;
        break;
      case 'Student':
        studentForm = true;
        break;
    }
  }
}
