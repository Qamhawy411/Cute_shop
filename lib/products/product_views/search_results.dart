


import 'package:flutter/material.dart';
import 'package:cute_shop/products/product_views/products_details.dart';
import 'package:cute_shop/shared/shared_widget/shoopingCartIcon.dart';
import 'package:cute_shop/shared/shared_widget/productwidget.dart';



class searchresult extends StatefulWidget {
  final String title;
  const searchresult(this.title,{super.key});

  @override
  State<searchresult> createState() => _searchresultState();
}

class _searchresultState extends State<searchresult> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(Icons.arrow_back,color: Colors.red,),
        title: Text(widget.title,style:TextStyle(color: Colors.black,fontSize: 25) ,),
    
        centerTitle: true,
        
        
      ),
      body: Column(
        children: [
         SafeArea(
           child: ListTile(
            leading: Text("10 items",style: TextStyle(color: Colors.black,fontSize: 20)),
            trailing: Icon(Icons.tune),
            
           ),
         ),
         Flexible(
           child: 
          ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: 5,
            itemBuilder: (context,i){
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
               productElement(),
               productElement()
                ],
              );
            },
          )
          
          )
        ],
        
      ),
    );
  }
  InkWell productElement(){
  return InkWell(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context){
                      return productDetails();
                    }));
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width/2.3,
                     margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[200]
                    
                    ),
                     child: Column(
                      children: [
                        Container(
                          height: 150,
                          decoration: BoxDecoration(
                            color: Colors.black12,
                            image: DecorationImage(
                              
                              fit: BoxFit.fill,
                              image: NetworkImage("https://tse3.mm.bing.net/th?id=OIP.0YLFPlqgX6pEd_CzmMg2RQHaEn&pid=Api&P=0")
                            )
                          ),
                        ),
                        ListTile(
                          contentPadding: EdgeInsets.fromLTRB(35, 0, 0, 10),
                          title: Text("panka chair"),
                          ),
                
                           ListTile(
                            leading: Text("\$1000"),
                            trailing:  shoopingIconCart(25) 
                           ),
                
                      ],
                     ),
                  ),
                );
}
}