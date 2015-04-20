import 'package:polymer/polymer.dart';

@CustomTag('app-main')
class App extends PolymerElement {

  @observable bool firstStep;

  App.created() : super.created() {
    firstStep = true;
  }
}
