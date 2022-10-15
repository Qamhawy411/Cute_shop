import 'package:flutter/material.dart';
class shoppingCart extends StatefulWidget {
  const shoppingCart({super.key});

  @override
  State<shoppingCart> createState() => _shoppingCartState();
}

class _shoppingCartState extends State<shoppingCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         backgroundColor: Colors.grey[200],
        elevation: 0,
        title: Text("YOUR CART",style: TextStyle(color: Colors.blue[200],fontSize: 25),),
        centerTitle: true,
      ),
       floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: InkWell(
        onTap: (){},
        child: Container(
          
          height: 60,
          width: 270,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(30)
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              
              Text("CHECKOUT",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
              Icon(Icons.trending_flat,color: Colors.white,size: 30,)
            ],
          ),
        ),
      ),
      body:ListView(
        
        children: [
            for(int i=0;i<7;i++)
         Container(
          margin: EdgeInsets.all(7),
          height: 130,
          decoration: BoxDecoration(
            color: Colors.pink[50],
            borderRadius: BorderRadius.circular(10),
          
          ),
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.only(right: 10),
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.grey[150],
                  borderRadius: BorderRadius.circular(7),
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image:NetworkImage("https://thumbs.dreamstime.com/z/happy-little-girl-13121.jpg")
                     )
                ),
              ),
              Expanded(
                
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                 crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                     Text("Ramni chair",style: TextStyle(fontSize: 20,color: Colors.black),) ,
                     IconButton(icon:Icon(Icons.clear),
                      onPressed: (){},
                      ) ,
                    ],
                   ),
                     Text("\$1700",style: TextStyle(fontSize: 20,color: Colors.blue),),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        IconButton(onPressed: (){}, icon: Icon(Icons.remove_circle_outline,color: Colors.blue,)),
                        Text("4",style: TextStyle(fontSize: 20,color: Colors.black),),
                        IconButton(onPressed: (){}, icon: Icon(Icons.add_circle_outline,color: Colors.blue,)),
                      ],
                     )
                  ],
                  
                ),
              )
            ],
          ),
         ) ,
         Container(
          
          height: 130,
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(10),
         ),
         child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("Total Amount",style: TextStyle(fontSize: 20,color: Colors.pink,fontWeight: FontWeight.bold),),
            Text("\$17000",style: TextStyle(fontSize: 25,color: Colors.blue,fontWeight: FontWeight.bold),)
          ],
         ),
         ),
        ],
      )
    );
  }
}