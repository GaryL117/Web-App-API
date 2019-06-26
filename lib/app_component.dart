import 'package:angular/angular.dart';
import 'package:angular_app/src/mock_products.dart';
import 'package:angular_app/src/product.dart';

@Component(
  selector: 'my-app',
  templateUrl: 'app_component.html',
  directives: [coreDirectives],
  styleUrls: ['app_component.css'],

)
class AppComponent {
 final title = 'RenoRun Products and Orders';
 List<Product> products = mockProducts;
 Product selected;
 void onSelect(Product product) => selected = product;
}

