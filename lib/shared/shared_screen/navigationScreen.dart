import 'package:cute_shop/user/orders_coming.dart';
import 'package:cute_shop/user/shopppingCart.dart';
import 'package:cute_shop/user/user_account.dart';
import 'package:flutter/material.dart';

import 'package:cute_shop/shared/shared_screen/homepage.dart';



class navigationScreen extends StatefulWidget {
  const navigationScreen({super.key});

  @override
  State<navigationScreen> createState() => _navigationScreenState();
}

class _navigationScreenState extends State<navigationScreen> {
  int selectedScreen=1;
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
         
         containerButton(IconButton(onPressed: (){},icon: Icon(Icons.notifications,color: Colors.red,),)),
          containerButton(IconButton(icon: Icon(Icons.shopping_cart_outlined,color: Colors.red),
          onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (conntext){
                return shoppingCart();
              }));

            },))
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

 Container containerButton(Widget widget){
  return Container(
            decoration: BoxDecoration(
               color: Colors.grey[200],
               borderRadius: BorderRadius.circular(7)
               
            ),
            margin: EdgeInsets.only(left: 3),
           
            width: 40,
            child:  widget
          );
 }