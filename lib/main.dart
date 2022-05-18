import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopapp/providers/product_provider.dart';
import 'package:shopapp/screens/Product_details_screen.dart';
import 'package:shopapp/screens/Products_Overview.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => Product_Provider(),
      child: MaterialApp(
        title: 'MyShop',
        theme: ThemeData(
          primarySwatch: Colors.purple,
          accentColor: Colors.deepOrange,
          fontFamily: 'Lato',
        ),
        initialRoute: ProductesOverviewScreen.routName,
        routes: {
          ProductesOverviewScreen.routName: (ctx) => ProductesOverviewScreen(),
          DeatailsScreen.routName:(ctx)=>DeatailsScreen(),
        },
      ),
    );
  }
}
