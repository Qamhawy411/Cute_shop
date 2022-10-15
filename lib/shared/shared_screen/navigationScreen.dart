import 'package:cute_shop/user/orders_coming.dart';
import 'package:cute_shop/user/user_account.dart';
import 'package:flutter/material.dart';
import 'package:cute_shop/shared/shared_widget/shoopingCartIcon.dart';
import 'package:cute_shop/shared/shared_screen/homepage.dart';
import 'package:cute_shop/products/product_views/search_results.dart';
import 'package:cute_shop/shared/shared_screen/homepage.dart';
class navigationScreen extends StatefulWidget {
  const navigationScreen({super.key});

  @override
  State<navigationScreen> createState() => _navigationScreenState();
}

class _navigationScreenState extends State<navigationScreen> {
  int selectedScreen=0;
  List Screen =[comingOrders(),HomeBage(),userDetails(),];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
         
        elevation: 10,
        backgroundColor: Colors.pink[200],
      ),
      appBar:AppBar(
        backgroundColor: Colors.grey[200],
        elevation: 10,
        actions: [
         
          barContainer(Icons.notifications_none, Colors.black),
           barContainer(Icons.shopping_cart_outlined, Colors.black),
        ],
      ) ,
    
        bottomNavigationBar: BottomNavigationBar(
           backgroundColor: Colors.red[300],
           elevation: 7,
      selectedIconTheme: IconThemeData(color: Colors.white,size: 30,),
      unselectedIconTheme: IconThemeData(color: Colors.grey[400],size: 20,),
      selectedLabelStyle: TextStyle(color: Colors.orange[600]),
       unselectedLabelStyle: TextStyle(color: Colors.grey[600]),
       selectedItemColor: Colors.white,
       unselectedItemColor: Colors.transparent,
       onTap:(i){
       
        setState(() {
           selectedScreen=i;
        });
       } ,
       currentIndex: selectedScreen,

          items: [
                bottomIcon("Orders", Icons.upcoming_sharp, ),
                bottomIcon("Home", Icons.home, ),
                 bottomIcon("MyAccount", Icons.perm_identity, ),
          ]),
           body:Screen[selectedScreen] ,
    );
  }
}



BottomNavigationBarItem bottomIcon(String title ,IconData icon, ){
  return  BottomNavigationBarItem(icon:(Icon(icon))  ,
            label: title, );
} 