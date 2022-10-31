

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class drawer extends StatefulWidget {
  const drawer({super.key});

  @override
  State<drawer> createState() => _drawerState();
}

class _drawerState extends State<drawer> {
  @override
  Widget build(BuildContext context) {
    return  Drawer(
        elevation: 10,  
         backgroundColor: Colors.pink[200],
        child: ListView(
          children: [
           Container(
            height: 250,
            decoration:BoxDecoration(
              color: Colors.pink[200],
              border: Border(bottom: BorderSide(color: Colors.white,width: 1.5))
            ),
                 child: Column(
                  
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(10, 30, 10, 10),
                      height: 150,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.black,
                         image: DecorationImage(
                       image: NetworkImage("https://tse3.mm.bing.net/th?id=OIP.7VThHu2VS76jFvN5_5gnlgHaEW&pid=Api&P=0")
                       ,fit: BoxFit.fill)
                      ),
                    ),
                    Text("Mohamed Qamhawy",
                   style: TextStyle(color: Colors.white,
                    fontSize: 20,fontWeight: FontWeight.bold),),
                    Text("mohammed gmaal@gmail.com",
                   style: TextStyle(color: Colors.white,
                    fontSize: 17),),
                  ],
                 ),
                ),
                
                    ourlist("Home",SizedBox(width: 1),Icons.home  ),
                    ourlist("My Cart",SizedBox(width: 1),Icons.shopping_cart_outlined  ),
                    ourlist("Upcoming Order",Text("10",style:TextStyle(color: Colors.white) ,),Icons.upcoming_outlined  ),
                    ourlist("Offer Zone",SizedBox(width: 1),Icons.redeem ),
                     ourlist("My Account",SizedBox(width: 1),Icons.person  ),
                      ourlist("My Chat",SizedBox(width: 1),Icons.chat_bubble_outline  ),
                      ourlist("Help",SizedBox(width: 1),Icons.help  ),
                      ourlist("LogOut",SizedBox(width: 1),Icons.logout  ),
                      
        
        
        
        
        
          ],
        ),
      );
  }
 ListTile ourlist(String title,Widget trail,IconData icon){
    return ListTile(title:Text(title,style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.bold)
      ,),
      trailing: trail,
      leading: Icon(icon,color: Colors.white,),
      onTap: () {
        
      },
      );
  }
}