import 'package:angular/angular.dart';
import 'package:angular_app/src/mock_products.dart';
import 'package:angular_app/src/product.dart';

@Component(
  selector: 'my-app',
  templateUrl: 'app_component.html',
 directives: [coreDirectives],

)
class AppComponent {
 final title = 'RenoRun Products and Orders';
 List<Product> products = mockProducts;
}
