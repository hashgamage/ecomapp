import 'package:flutter/material.dart';
import 'package:shoppingcart/main.dart';

class ProductDetails extends StatefulWidget {
  final product_detail_name;
  final product_detail_price;
  final product_detail_old_price;
  final product_detail_picture;

  ProductDetails(
      {this.product_detail_name,
        this.product_detail_old_price,
        this.product_detail_picture,
        this.product_detail_price});

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
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
            child: Text('The Chess')),

        actions: <Widget>[
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),

        ],
      ),
      body: new ListView(
        children: <Widget>[
          new Container(
            height: 300.0,
            child: GridTile(
              child: Container(
                color: Colors.white70,
                child: Image.asset(widget.product_detail_picture),
              ),
              footer: new Container(
                color: Colors.white70,
                child: ListTile(
                  leading: new Text(widget.product_detail_name),
                  title: new Row(
                      children: <Widget>[
                        Expanded(
                            child: new Text(
                              "\$${widget.product_detail_old_price}",
                              style: TextStyle(
                                  color: Colors.grey,
                                  decoration: TextDecoration.lineThrough),
                            )),
                        Expanded(
                            child: new Text("\$${widget.product_detail_price}",
                              style: TextStyle(
                                  color: Colors.red, fontWeight: FontWeight.bold),
                            ))
                      ]
                  ),
                ),
              ),
            ),
          ),

          //================the first button and Product Info=======
          Row(
            children: <Widget>[
              Expanded(
                child: new MaterialButton(
                  onPressed: () {
                    showDialog(context: context,
                        builder: (context){
                          return new AlertDialog(
                            title: new Text("Size"),
                            content: new Text("Select the Size"),
                            actions: <Widget>[
                              new MaterialButton(onPressed: (){
                                Navigator.of(context).pop(context);
                              },
                                child:  new Text("Close"),color: Colors.blue,)
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text("Size"),
                      ),
                      Expanded(
                        child: new Icon(Icons.arrow_drop_down),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: new MaterialButton(
                  onPressed: () {
                    showDialog(context: context,
                        builder: (context){
                          return new AlertDialog(
                            title: new Text("Quantity"),
                            content: new Text("Select the Qty."),
                            actions: <Widget>[
                              new MaterialButton(onPressed: (){
                                Navigator.of(context).pop(context);
                              },
                                child:  new Text("Close"),color: Colors.blue,)
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text("Qty"),
                      ),
                      Expanded(
                        child: new Icon(Icons.arrow_drop_down),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),

          // ==== the second button ======
          Row(children: <Widget>[
            Expanded(
              child: new MaterialButton(
                  onPressed: () {},
                  color: Colors.blue,
                  textColor: Colors.white,
                  elevation: 0.2,
                  child: new Text("Buy Now")),
            ),

            new IconButton(icon: Icon(Icons.add_shopping_cart),color: Colors.blue, onPressed: (){}),
            new IconButton(icon: Icon(Icons.favorite_border),color: Colors.blue, onPressed: (){}),
          ]),
          Divider(),
          new ListTile(
            title: new Text("Product Description"),
            subtitle: new Text("Erable is a variety of Maple, in fact 'erable' means 'Maple' in French. Erable is light in colour and has a rich quilted grain which lends itself to being stained in a variety of colours."),
          ),

          Divider(),
          new Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text("Product Name", style: TextStyle(color: Colors.grey),),
              ),
              Padding(padding: EdgeInsets.all(5.0)  ,
                child: new Text(widget.product_detail_name),)
            ],
          ),

          new Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text("Product Brand", style: TextStyle(color: Colors.grey),),
              ),
              Padding(padding: EdgeInsets.all(5.0)  ,
                child: new Text(widget.product_detail_name),)

            ],
          ),

          new Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text("Product Condition", style: TextStyle(color: Colors.grey),),
              ),
              Padding(padding: EdgeInsets.all(5.0)  ,
                child: new Text(widget.product_detail_name),)
            ],
          ),

          Divider(),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: new Text("Similar Products"),
          ),
          //====Similar Products List====

          Container(
            height: 340.0,
            child: SimilarProducts(),
          )
        ],
      ),
    );
  }
}

class SimilarProducts extends StatefulWidget {
  @override
  _SimilarProductsState createState() => _SimilarProductsState();
}

class _SimilarProductsState extends State<SimilarProducts> {
  var product_list = [
    {
      "name": "Board 01",
      "picture": "images/products/1.png",
      "old_price": 120,
      "price": 100,
    },
    {
      "name": "Board 02",
      "picture": "images/products/2.jpg",
      "old_price": 120,
      "price": 100,
    },
    {
      "name": "Pieces 01",
      "picture": "images/products/3.jpg",
      "old_price": 100,
      "price": 85,
    },
    {
      "name": "Board 01",
      "picture": "images/products/1.png",
      "old_price": 120,
      "price": 100,
    },
    {
      "name": "Board 02",
      "picture": "images/products/2.jpg",
      "old_price": 120,
      "price": 100,
    },

  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
        new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Similar_Single_prod(
            prod_name: product_list[index]['name'],
            prod_picture: product_list[index]['picture'],
            prod_old_price: product_list[index]['old_price'],
            prod_price: product_list[index]['price'],
          );
        });
  }


}

class Similar_Single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  Similar_Single_prod({this.prod_name,
    this.prod_picture,
    this.prod_old_price,
    this.prod_price
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: new Text("Hero 1"),
          //tag: prod_name,
          child: Material(
            child: InkWell(
              onTap: () =>
                  Navigator.of(context).push(
                      new MaterialPageRoute(
                        //Here we are passing bvalues to product detail class
                          builder: (context) =>
                          new ProductDetails(
                            product_detail_name: prod_name,
                            product_detail_picture: prod_picture,
                            product_detail_old_price: prod_old_price,
                            product_detail_price: prod_price,
                          ))),
              child: GridTile(
                  footer: Container(
                    color: Colors.white70,
                    child: new ListTile(
                      leading: Text(
                        prod_name,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      title: Text(
                        "\$$prod_price",
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.w800),
                      ),
                      subtitle: Text(
                        "\$$prod_old_price",
                        style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.w800,
                            decoration: TextDecoration.lineThrough),
                      ),
                    ),
                  ),
                  child: Image.asset(
                    prod_picture,
                    fit: BoxFit.cover,
                  )),
            ),
          )),
    );
  }
}