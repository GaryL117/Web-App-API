
class Product {
   int id;
   String name;
   String description;
   double price;

  Product(this.id, this.name, this.description, this.price,);

    factory Product.fromJson(Map<String, dynamic> data) =>
        Product(data['id'], data['name'] , data['description'], data['price']);

   @override
   String toString() {
     return 'Product{id: $id, name: $name, description: $description, price: $price}';
   }


//Map<String, dynamic> toJson() =>
        //{'id':id , 'name': name, 'description':description, 'price': price };

}

//int _toInt(id) => id is int ? id : int.parse(id);
//double _toDouble(price) => price is double ? price : double.parse(price);