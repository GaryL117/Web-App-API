import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';
import 'package:angular_router/angular_router.dart';

import 'product.dart';
import 'product_service.dart';
import 'route_paths.dart';

@Component(
  selector: 'my-product',
  directives: [coreDirectives, formDirectives],
  templateUrl: 'product_component.html',

)
class ProductComponent implements OnActivate {
  Product product;
  final ProductService _productService;
  final Location _location;

  ProductComponent(this._productService, this._location);

  @override
  void onActivate(_, RouterState current) async {
    final id = getId(current.parameters);
    if (id != null) product = await (_productService.get(id));

  }

  void goBack() => _location.back();

  }


