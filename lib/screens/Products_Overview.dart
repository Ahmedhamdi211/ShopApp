import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopapp/widgets/Gridview_builder.dart';

class ProductesOverviewScreen extends StatelessWidget {
  static final routName = 'ProductesOverviewScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('ShopApp'),
        ),
        //backgroundColor: Theme.of(context).primaryColor,
        body: Gridbuilder());
  }
}
