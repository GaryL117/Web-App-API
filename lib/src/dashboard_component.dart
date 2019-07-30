import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';

import 'product.dart';
import 'product_service.dart';
import 'route_paths.dart';

@Component (
  selector: 'my-dashboard',
  templateUrl: 'dashboard_component.html',
  directives: [coreDirectives, routerDirectives],
)
class DashboardComponent implements OnInit {
  List<Product> products;
  final ProductService _productService;

  String productUrl(int id) => RoutePaths.product.toUrl(parameters: {idParam: '$id'});

  DashboardComponent(this._productService);


  @override
  void ngOnInit() async {
   // products = (await _productService.getAll()).take(2).toList();
  }

}
