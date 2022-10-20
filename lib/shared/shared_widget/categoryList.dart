import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:cute_shop/products/product_views/search_results.dart';
class categoryList extends StatefulWidget {
  const categoryList({super.key});

  @override
  State<categoryList> createState() => _categoryListState();
}

class _categoryListState extends State<categoryList> {
   int isselected= 0;
 final List  categories=["All","Electronic and Appliances","shirts","carpets","pantalon","imports electronic" ];
  
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 70,
     decoration: BoxDecoration(
        color: Colors.white
                    
      ),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context,i){
         return InkWell(
         child: Container(
          padding: EdgeInsets.symmetric(horizontal: 25), 
       margin: EdgeInsets.all(10),
       alignment:Alignment.center ,
       child: Text(categories[i],style: TextStyle(color: Colors.red,fontSize: 20,
       fontWeight: FontWeight.bold),),
           height: 50,
           decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(35),
             color:i== isselected?Colors.pink[200]:Colors.grey[200]
              ),
               ),
    onTap: (() {
     setState(() {
        isselected=i;
  });
   Navigator.of(context).push(MaterialPageRoute(builder: (Context) {
       return searchresult(categories[i]);
      }));
     }),
      );
        },
     )
    ) ;
  }
}