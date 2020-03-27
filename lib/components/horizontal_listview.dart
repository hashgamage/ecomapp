import 'package:flutter/material.dart';
import 'package:shoppingcart/pages/product_details.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            image_location: 'images/cats/8.jpeg',
            image_caption: 'Boards',
          ),
          Category(
            image_location: 'images/cats/9.jpg',
            image_caption: 'Clocks',
          ),
          Category(
            image_location: 'images/cats/6.jpg',
            image_caption: 'Sets',
          ),
          Category(
            image_location: 'images/cats/10.jpg',
            image_caption: 'Pieces',
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Category({this.image_caption, this.image_location});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: (){},
        child: Container(
          width: 100.0,
          child: ListTile(
              title: Image.asset(
                image_location,
                width: 100.0,
                height: 80.0,
              ),
              subtitle: Container(
                alignment: Alignment.topCenter,
                child: Text(
                  image_caption,
                  style: new TextStyle(fontSize: 14.0),
                ),
              )),
        ),
      ),
    );
  }
}
