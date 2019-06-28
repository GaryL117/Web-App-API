import 'package:angular_router/angular_router.dart';
import 'route_paths.dart';
import 'product_list_component.template.dart' as product_list_template;
import 'dashboard_component.template.dart' as dashboard_template;
import 'product_component.template.dart' as product_template;

export 'route_paths.dart';

class Routes {
  static final products = RouteDefinition(
    routePath: RoutePaths.products,
    component: product_list_template.ProductListComponentNgFactory,
  );

  static final dashboard = RouteDefinition(
    routePath: RoutePaths.dashboard,
    component: dashboard_template.DashboardComponentNgFactory,
    useAsDefault: true,
  );

  static final product = RouteDefinition(
    routePath: RoutePaths.product,
    component: product_template.ProductComponentNgFactory,
  );

  static final all = <RouteDefinition>[
    products,
    dashboard,
    product,
  ];
}
