import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'package:http/http.dart';

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
class ProductListComponent implements OnInit {
  final title = 'Products: ';
  final Router _router;
  final ProductService _productService;
  List<Product> products;
  Product selected;
  dynamic data;
  dynamic Data_Org;
  dynamic Data_Org2;


  void onSelect(Product product) => selected = product;


  ProductListComponent(this._productService, this._router,);

  Future<void> _getProducts() async {
    Response _products = await http.get('http://127.0.0.1:5000/products');
    data = jsonDecode(_products.body);
    Data_Org = Product(data[0]['id'] as int, data[0]['name'], data[0]['description'], data[0]['price']);
    Data_Org2 = Product(data[1]['id'] as int, data[1]['name'], data[1]['description'], data[1]['price']);

    print(data);
    print(data.runtimeType);


  }
    void ngOnInit() => _getProducts();


  }

  @override
  void ngOnInit() {

  }


