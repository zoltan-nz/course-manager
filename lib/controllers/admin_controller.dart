import 'package:shelf/shelf.dart' show Response;

class AdminController {
  AdminController.index() {
    return new Response.ok('ADMIN');
  }
}
