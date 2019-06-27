import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';
import 'product.dart';

@Component(
  selector: 'my-product',
  directives: [coreDirectives, formDirectives,],
 template: '''
 <div *ngIf="product != null">
    <h2>{{product.name}}</h2>
    <div><label>id:</label>{{product.id}}</div>
     <div>
     <label>name: </label>
     <input [(ngModel)]="product.name" placeholder="name">
  </div>
</div>
 ''',
)
class ProductComponent {
  @Input()
  Product product;
}