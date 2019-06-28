import 'package:angular_router/angular_router.dart';
export 'route_paths.dart';
const idParam ='id';

class RoutePaths {
  static final products = RoutePath(path: 'products');
  static final dashboard = RoutePath(path: 'dashboard');
  static final product = RoutePath(path: '${products.path}/:$idParam');
}

int getId(Map<String, String> parameters) {
  final id = parameters[idParam];
  return id == null ? null : int.tryParse(id);

}