import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopapp/providers/product_provider.dart';
import 'package:shopapp/widgets/Product_item.dart';

class Gridbuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final data = Provider.of<Product_Provider>(context);
    final ProductList = data.items;
    return GridView.builder(
      padding: const EdgeInsets.all(15.0),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 5.0,
          mainAxisSpacing: 5.0,
          childAspectRatio: 2 / 2,
          crossAxisCount: 2),
      itemBuilder: (context, index) {
        return ProductItem(ProductList[index].id, ProductList[index].title,
            ProductList[index].imageUrl);
      },
      itemCount: ProductList.length,
    );
  }
}
