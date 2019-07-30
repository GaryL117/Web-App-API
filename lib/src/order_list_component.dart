import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'route_paths.dart';
import 'order.dart';

import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

@Component(
  selector: "my-orders",
  templateUrl:'order_list_component.html',
  directives: [coreDirectives],
  styleUrls:['order_list_component.css'],
  pipes: [commonPipes],
)

class OrderListComponent implements OnInit {
  final title = 'Orders: ';
  final Router _router;
  List<Order> orders;
  Order selected;
  dynamic data;
  Order Data_Org;


  void onSelect(Order order) => selected = order;


  OrderListComponent(this._router,);

  Future<void> _getOrders() async {
    Response _orders = await http.get('http://127.0.0.1:5000/orders');
    data = jsonDecode(_orders.body);
    Data_Org = Order(data[0]['order_Id'] as int , data[0]['product_Id'] as int , data[0]['color'], data[0]['email']);

    print(data);
    print(data.runtimeType);
  }

  void ngOnInit() => _getOrders();
}

@override
void ngOnInit() {

}