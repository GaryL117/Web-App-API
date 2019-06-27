import 'package:angular/angular.dart';
import 'package:angular_app/src/mock_products.dart';
import 'package:angular_app/src/product.dart';
import 'src/product_component.dart';
import 'src/product_service.dart';
@Component(
  selector: 'my-app',
  templateUrl: 'app_component.html',
  directives: [coreDirectives, ProductComponent],
  styleUrls: ['app_component.css'],
  providers: [ClassProvider(ProductService)],
)
class AppComponent implements OnInit{
 final title = 'RenoRun Products and Orders';
 final ProductService _productService;
 List<Product> products;
 Product selected;
 void onSelect(Product product) => selected = product;


 AppComponent(this._productService);

 Future<void> _getProducts() async {
   products = (await _productService.getAll());

 }

 void ngOnInit() => _getProducts();
}



