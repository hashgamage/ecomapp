import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

//my own imports
import 'package:shoppingcart/components/horizontal_listview.dart';
import 'package:shoppingcart/components/products.dart';
import 'package:shoppingcart/pages/cart.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
      height: 200.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/1.jpeg'),
          AssetImage('images/2.jpeg'),
          AssetImage('images/3.jpeg'),
          AssetImage('images/4.jpeg'),
          AssetImage('images/5.jpeg'),
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 4.0,
        indicatorBgPadding: 2.0,
        dotBgColor: Colors.transparent,
      ),
    );



    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.blue,
        title: Text('The Chess'),
        actions: <Widget>[
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
          new IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> new Cart()));
              })
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            //Header part of the drawer
            new UserAccountsDrawerHeader(
              accountName: Text("Kosala Mudalige"),
              accountEmail: Text("mudalige@gmail.com"),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person,color: Colors.white,),
                ),
              ),
              decoration: new BoxDecoration(
                  color: Colors.blue
              ),
            ),
//body of the drawer

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text("Home"),
                leading: Icon(Icons.home, color: Colors.blue,),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text("My Account"),
                leading: Icon(Icons.person, color: Colors.blue,),
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> new Cart()));
              },
              child: ListTile(
                title: Text("My Shopping Cart"),
                leading: Icon(Icons.shopping_cart, color: Colors.blue,),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text("Favourites"),
                leading: Icon(Icons.favorite, color: Colors.blue,),
              ),
            ),



            Divider(),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text("Settings"),
                leading: Icon(Icons.settings),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text("About"),
                leading: Icon(Icons.help),
              ),
            ),
          ],
        ),
      ),

      body: new Column(
        children: <Widget>[
          // image carsoule begin here..
          image_carousel,
          // Padding widget
          new Padding(padding: const EdgeInsets.all(8.0),
            child:  new Text('Categories'),),


          //Horizonal list view begin here ..
          HorizontalList(),

          // Padding widget
          new Padding(padding: const EdgeInsets.all( 15.0),
            child:  new Text('Recent Products'),),

          //grid View


          Flexible(child: Products(),),

        ],
      ),
    );
  }
}
