import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopapp/providers/product_provider.dart';

class DeatailsScreen extends StatelessWidget {
  static final routName = 'DeatailsScreen';

  @override
  Widget build(BuildContext context) {
    final id = ModalRoute.of(context).settings.arguments as String;
    final LoadedProduct = Provider.of<Product_Provider>(context,listen: false).FindItem(id);
    return Scaffold(
      appBar: AppBar(
        title: Text(LoadedProduct.title),
      ),
    );
  }
}
