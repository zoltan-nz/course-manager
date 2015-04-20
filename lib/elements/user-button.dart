import 'package:polymer/polymer.dart';
import 'package:paper_elements/paper_button.dart';
import 'package:course_manager/user.dart';
import 'package:course_manager/professor.dart';
import 'package:course_manager/student.dart';

@CustomTag('user-button')
class UserButton extends PolymerElement {

  @published String type;
  @observable User user;

  UserButton.created() : super.created() {
    print(this.type);
    user = this.type == 'professor' ? new Professor() : new Student();
  }
}
