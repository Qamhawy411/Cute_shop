
import 'package:cute_shop/products/product_views/search_results.dart';
import 'package:cute_shop/shared/shared_widget/categoryList.dart';
import 'package:cute_shop/shared/shared_widget/drawer.dart';
import 'package:cute_shop/shared/shared_widget/productwidget.dart';
import 'package:cute_shop/shared/shared_widget/textformfield.dart';
import 'package:flutter/material.dart';
import 'package:cute_shop/shared/shared_screen/navigationScreen.dart';
import 'package:cute_shop/user/shopppingCart.dart';




class HomeBage extends StatefulWidget {
  const HomeBage({super.key});

  @override
  State<HomeBage> createState() => _HomeBageState();
}

class _HomeBageState extends State<HomeBage> {
  TextEditingController searchcontroller = TextEditingController();
 
  @override
  Widget build(BuildContext context) {


    return Scaffold(
       drawer:drawer(),
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
      
      
     
      body: ListView(
        children: [
          Row(
            children: [
              Container(
                 height: 50,
                width: MediaQuery.of(context).size.width/1.4,
                 margin: EdgeInsets.fromLTRB(20, 25, 5, 10),
                 decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(30)
                 ),
                 child: readyField(Fields(labelText: "search",controler: searchcontroller,icon: Icons.search,))
              ),
              Container(
            decoration: BoxDecoration(
               color: Colors.grey[200],
               borderRadius: BorderRadius.circular(7)
               
            ),
            margin: EdgeInsets.fromLTRB(10, 25, 10, 10),
            height: 50,
            width: 50,
            child:  Icon(Icons.filter_alt_outlined,color: Colors.black26,size: 30,),
          )
            ],

          ),
           rowSection("TRENDING PRODUCTS","See All"),
           productWidget(),
           
           rowSection("Popular Categories","See All"),
           
                    categoryList()   ,
              productWidget(),          
           
        ],
      ),
    );
  }


 
   ListTile  rowSection (String title,String trailing){
      return ListTile(title: Text(title,style: TextStyle(color: Colors.black87,fontWeight:FontWeight.w900,fontSize: 19 ),),
           trailing: Text(trailing,style: TextStyle(color: Colors.red[400],fontWeight:FontWeight.w900 ,fontSize: 17),),
          onTap: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context){
              return searchresult(title);
            }));
          },
          
          );


     }


    }


    Container barContainer(IconData icon, Color color,w ){
  return Container(
            decoration: BoxDecoration(
               color: Colors.grey[200],
               borderRadius: BorderRadius.circular(7)
               
            ),
            margin: EdgeInsets.only(left: 3),
           
            width: 40,
            child:  IconButton(onPressed: (){},icon: Icon(icon),)
          );
}