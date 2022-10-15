import 'package:flutter/material.dart';
class shoopingIconCart extends StatefulWidget {
  final double cartSize;
  const shoopingIconCart(this.cartSize,{super.key});

  @override
  State<shoopingIconCart> createState() => _shoopingIconCartState();
}

class _shoopingIconCartState extends State<shoopingIconCart> {
  bool isselected= false;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: IconButton(
        onPressed: () {
        isselected=!isselected;
       setState(() {
                                
       });
       },
                           
       icon: Icon( isselected ?Icons.shopping_cart :Icons.shopping_cart_outlined,color: Colors.red,
       size: widget.cartSize,),
       

      ),
    );
  }
}