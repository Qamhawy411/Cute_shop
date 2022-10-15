
import 'dart:ui';
import 'package:cute_shop/products/product_views/search_results.dart';
import 'package:cute_shop/shared/shared_them/sharedColors.dart';
import 'package:cute_shop/shared/shared_widget/productwidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';



class HomeBage extends StatefulWidget {
  const HomeBage({super.key});

  @override
  State<HomeBage> createState() => _HomeBageState();
}

class _HomeBageState extends State<HomeBage> {
  bool isselected= true;
 final List  <Map<String,dynamic>> containerSize=[
   { "title":"All",
    "size": 90.0},
    { "title":"Electronic and Appliances",
    "size": 270.0},
    { "title":"shirts",
    "size": 150.0},
    { "title":"carpets",
    "size": 150.0},
     { "title":"pantalon",
    "size": 160.0},

  ];
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      
      
     
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
                // child: TextFormField()
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
           
                      Container(
                        height: 70,
                        decoration: BoxDecoration(
                          color: Colors.white
                    
                        ),
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 5,
                          itemBuilder: (context,i){
                            return InkWell(
                              child: Container(
                            
       margin: EdgeInsets.all(10),
       alignment:Alignment.center ,
       child: Text(containerSize[i]["title"],style: TextStyle(color: Colors.red,fontSize: 20,fontWeight: FontWeight.bold),),
        width: containerSize[i]["size"],
           height: 50,
           decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(25),
             color: isselected?Colors.orange:Colors.grey[200]
              ),
               ),
                                    onTap: (() {
                                      setState(() {
                                        isselected=!isselected;
                                      });
                                      Navigator.of(context).push(MaterialPageRoute(builder: (Context) {
                                        return searchresult(containerSize[i]["title"]);
                                      }));
                                    }),
                            );
                          },
                        )
                      )   ,
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


    Container barContainer(IconData icon, Color color ){
  return Container(
            decoration: BoxDecoration(
               color: Colors.grey[200],
               borderRadius: BorderRadius.circular(7)
               
            ),
            margin: EdgeInsets.only(left: 3),
           
            width: 40,
            child:  Icon(icon,color: color,size: 30,),
          );
}