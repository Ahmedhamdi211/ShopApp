import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopapp/screens/Product_details_screen.dart';

class ProductItem extends StatelessWidget {
  String id;
  String title;
  final String imgUrl;

  ProductItem(this.id, this.title, this.imgUrl);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context).pushNamed(DeatailsScreen.routName, arguments: id);
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: GridTile(
          child: Image.network(
            imgUrl,
            fit: BoxFit.cover,
          ),
          footer: GridTileBar(
            leading: IconButton(
                icon: Icon(
                  Icons.favorite,
                  color: Theme.of(context).accentColor,
                ),
                onPressed: () {}),
            trailing: IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Theme.of(context).accentColor,
              ),
              onPressed: () {},
            ),
            backgroundColor: Colors.black38,
            title: Text(
              title,
              style: TextStyle(fontSize: 10.0),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
