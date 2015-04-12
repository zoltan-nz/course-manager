import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as io;
import 'package:shelf_route/shelf_route.dart';
import 'package:shelf_rest/shelf_rest.dart';

import 'package:micro_cms/controllers/admin_controller.dart';
import 'package:micro_cms/controllers/home_controller.dart';

void main() {

  var rootRouter = router();

  rootRouter
    ..get('/', (_) {
        HomeController controller = new HomeController;
        return controller.index();
      }

  var adminRouter = rootRouter.child('/admin');

  adminRouter
    ..get('/', (_) => (new AdminController.index()));

  io.serve(rootRouter.handler, 'localhost', 4000).then((server) {
    print('Serving at http://${server.address.host}:${server.port}');
  });
}
