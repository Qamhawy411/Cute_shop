import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class productDetails extends StatefulWidget {
  const productDetails({super.key});

  @override
  State<productDetails> createState() => _productDetailsState();
}

class _productDetailsState extends State<productDetails> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 4,
     child:Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(onPressed: (){
          Navigator.of(context).pop();
        }, icon: Icon(Icons.west_outlined,color: Colors.black,)),
        actions: [
          Icon(Icons.favorite_border,color: Colors.red,size: 30,)
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton:  Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.pink,
              borderRadius: BorderRadius.circular(30)
            ),
            height: 50,
            width: 120,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
              
               Icon( Icons.remove_circle_outline,color: Colors.white,),
                Text( "1" ,style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.normal),),
                
                 Icon( Icons.add_circle_outline ,color: Colors.white,),
              ],
            ),
          ),
           Container(
            decoration: BoxDecoration(
              color: Colors.pink,
              borderRadius: BorderRadius.circular(30)
            ),
            height: 50,
            width: 190,
            child: Row(
              
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
                Text( "ADD TO CART" ,style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.normal),),
                Icon( Icons.shopping_cart ,color: Colors.white,)
              ],
            ),
          ),
        ],
      ),
      

      body: ListView(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.grey,
              image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage("https://tse1.mm.bing.net/th?id=OIP.iwQVPx55GYfMrifarWM2VgHaEK&pid=Api&P=0"),
                )
            ),
            height: 300,
           
          ),
          ListTile(
            contentPadding:EdgeInsets.all(5) ,
           leading: Text("Ramni chair",style: TextStyle(color: Colors.black,fontSize: 25),), 
           title:Row(
            
            children: [
              Icon(Icons.star_border,color: Colors.yellow,size: 25,),
              Text("4.5",style: TextStyle(color: Colors.black,fontSize: 20))
            ],
           ) ,
           trailing: Text("\$1700",style: TextStyle(color: Colors.red,fontSize: 20)),
          ),
          Container(
           
            child: TabBar(labelStyle: TextStyle(color: Colors.pink,
            fontSize: 17,
            fontWeight: FontWeight.bold,),
           
            labelColor: Colors.pink,
            indicatorColor: Colors.pink,
           
            unselectedLabelColor:Colors.black ,
            
            isScrollable: true,tabs: [
              Tab(text: "Description",),
              Tab(text:"Reveiews" ,),
               Tab(text:"Offers" ,),
              Tab(text: "Policy",),
            

            ]),
          ),
          Container(
            height: 300,
            color: Colors.white,
            child: Padding(padding: EdgeInsets.all(10),
            child:TabBarView(children: [
               ListTile(title: Text("qamhawy1"),),
               ListTile(title: Text("qamhawy2"),),
               ListTile(title: Text("qamhawy3"),),
               ListTile(title: Text("qamhawy4"),),
            ]), )
          )
          
        ],
      ) ,
          

     
    ));

  }
} 




