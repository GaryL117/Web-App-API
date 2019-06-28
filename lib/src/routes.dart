import 'package:angular_router/angular_router.dart';
import 'route_paths.dart';
import 'product_list_component.template.dart' as product_list_template;

export 'route_paths.dart';

class Routes {
  static final products = RouteDefinition(
    routePath: RoutePaths.products,
    component: product_list_template.ProductListComponentNgFactory,
  );


  static final all = <RouteDefinition>[
    products,
  ];
}
