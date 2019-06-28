import 'dart:async';

import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';

import 'route_paths.dart';
import 'product.dart';
import 'product_service.dart';

@Component(
  selector: 'my-products',
  templateUrl: 'product_list_component.html',
  directives: [coreDirectives],
  styleUrls: ['product_list_component.css'],
  pipes: [commonPipes],
)
class ProductListComponent implements OnInit{
  final title = 'Products: ';
  final Router  _router;
  final ProductService _productService;
  List<Product> products;
  Product selected;
  void onSelect(Product product) => selected = product;


 ProductListComponent(this._productService, this._router);

 Future<void> _getProducts() async {
   products = (await _productService.getAll());

 }



 void ngOnInit() => _getProducts();

  String _productUrl(int id) =>
      RoutePaths.product.toUrl(parameters: {idParam: '$id'});

 Future<NavigationResult> gotoDetail() =>
     _router.navigate(_productUrl(selected.id));

}



