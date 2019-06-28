import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'src/product_service.dart';
import 'src/routes.dart';

@Component(
  selector: 'my-app',
  template: """
  <h1>{{title}}</h1>
  <nav>
  <a [routerLink]="RoutePaths.products.toUrl()"
     [routerLinkActive]="'active'">Products</a>
  </nav>
  <router-outlet [routes]="Routes.all"> </router-outlet>
  """,
  exports: [RoutePaths, Routes],
  directives: [routerDirectives],
  providers: [ClassProvider(ProductService)],
)
class AppComponent {
  final title = "RenoRun Products and Orders";
}
