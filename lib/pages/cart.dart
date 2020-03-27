import 'package:flutter/material.dart';
import 'package:shoppingcart/main.dart';

//my import components
import 'package:shoppingcart/components/cart_products.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.blue,
        title: InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> new HomePage()));
            },
            child: Text('My Shopping Cart')),

        actions: <Widget>[
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),

        ],
      ),

      body: new Cart_products(),
      bottomNavigationBar: new Container(
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Expanded(
              child: ListTile(
                title:new Text("Total Amount",textAlign: TextAlign.center,),
                subtitle: new Text("\$230", textAlign: TextAlign.center,),
              ),
            ),

            Expanded(
              child: new MaterialButton(onPressed: (){},
                child: new Text("Check Out", style: TextStyle(color: Colors.white),),
                color: Colors.blue,),
            )
          ],
        ),
      ),
    );
  }
}
