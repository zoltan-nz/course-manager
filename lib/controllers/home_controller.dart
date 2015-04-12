import 'package:shelf/shelf.dart' show Response;

class HomeController {

  HomeController() {}

  static index() {
    return new Response.ok('HOME');
  }


}
