import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cart_products extends StatefulWidget {
  @override
  _Cart_productsState createState() => _Cart_productsState();
}

class _Cart_productsState extends State<Cart_products> {
  var products_on_the_cart = [
    {
      "name": "Board 01",
      "picture": "images/products/1.png",
      "price": 100,
      "size": "50mm x 20 mm",
      "qunatity": 2
    },
    {
      "name": "Board 02",
      "picture": "images/products/2.jpg",
      "price": 120,
      "size": "L",
      "qunatity": 1
    }
  ];

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount: products_on_the_cart.length,
        itemBuilder: (context, index) {
          return Single_Cart_product(
            cart_name: products_on_the_cart[index]["name"],
            cart_picture: products_on_the_cart[index]["picture"],
            cart_price: products_on_the_cart[index]["price"],
            cart_size: products_on_the_cart[index]["size"],
            cart_qty: products_on_the_cart[index]["qunatity"],
          );
        });
  }
}

class Single_Cart_product extends StatelessWidget {
  final cart_name;
  final cart_picture;
  final cart_price;
  final cart_size;
  final cart_qty;

  Single_Cart_product(
      {this.cart_name,
        this.cart_picture,
        this.cart_price,
        this.cart_size,
        this.cart_qty,});

  @override
  Widget build(BuildContext context) {
    return Card(

      child: ListTile(

        leading:new Image.asset(cart_picture, width: 80.0,height: 80.0,),
        title: new Text(cart_name),
        subtitle: new Column(
          children: <Widget>[
            //===ROW inside column===
            new Row(
              children: <Widget>[
                // This is Size of the product
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: new Text(
                    "Size:",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: new Text(cart_size),
                ),


                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0,8.0,8.0,8.0),
                  child: new Text("Quantity:"),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: new Text("$cart_qty"),
                )

              ],
            ),

            new Container(
              alignment: Alignment.topLeft,
              child: new Text(
                "\$$cart_price",
                style: TextStyle(fontSize: 17.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
              ),
            ),
          ],
        ),


      ),
    );
  }
}
