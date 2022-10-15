import 'package:cute_shop/products/product_views/products_details.dart';
import 'package:flutter/material.dart';
import 'package:cute_shop/shared/shared_widget/shoopingCartIcon.dart';
class productWidget extends StatefulWidget {
  const productWidget({super.key});

  @override
  State<productWidget> createState() => _productWidgetState();
}

class _productWidgetState extends State<productWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
              margin: EdgeInsets.all(10),
            height: MediaQuery.of(context).size.height/2.7,
            decoration: BoxDecoration(
              color: Colors.white

            ),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index) {
                return productElement();
              },
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
                     margin: EdgeInsets.fromLTRB(5, 0, 5, 5),
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