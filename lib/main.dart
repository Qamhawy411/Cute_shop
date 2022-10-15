import 'package:cute_shop/products/product_views/search_results.dart';
import 'package:cute_shop/shared/shared_screen/homepage.dart';
import 'package:cute_shop/shared/shared_screen/navigationScreen.dart';
import 'package:cute_shop/user/shopppingCart.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:shoppingCart() ,
      routes: {

      },
      debugShowCheckedModeBanner: false,
    );
  }
}
