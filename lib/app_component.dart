import 'package:angular/angular.dart';
import 'package:angular_app/src/product.dart';
@Component(
  selector: 'my-app',
  templateUrl: 'app_component.html'


)
class AppComponent {
 final title = 'RenoRun Products and Orders';
 Product product = Product(1, 'Chair 9000+');
}
