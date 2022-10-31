import 'package:cute_shop/user/editing_profile.dart';
import 'package:flutter/material.dart';
class userDetails extends StatefulWidget {
  const userDetails({super.key});

  @override
  State<userDetails> createState() => _userDetailsState();
}

class _userDetailsState extends State<userDetails> {
   List<Map> components=[
    {"title":"Upcoming Orders","leading":Icon(Icons.local_shipping_outlined),"trailing":Text("10 "),"navigation":"more"},
    {"title":"Manage Adress","leading":Icon(Icons.location_on),"trailing":null,"navigation":"more"},
    {"title":"Update Payment","leading":Icon(Icons.credit_card),"trailing":null,"navigation":"more"},
    {"title":"Chats","leading":Icon(Icons.chat_bubble_outline),"trailing":null,"navigation":"more"},
    {"title":"My Cart","leading":Icon(Icons.shopping_cart_outlined),"trailing":null,"navigation":"mycart"},
    {"title":"More","leading":Icon(Icons.more_horiz),"trailing":null,"navigation":"more"},
   ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Container(
        color: Colors.pink,
        child: ListView(
          children: [
            InkWell(
              onTap: (() {
                Navigator.of(context).push(MaterialPageRoute(builder: ((context) {
                  return editingProfile();
                })));
              }),
              child: Align(
                
              alignment: Alignment.topRight,
              child:  Text("Edit profile ",
              style: TextStyle(color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold),),
            ),
            ),
            Column(
              children: [
               Stack(
                
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 40),
                      width: 120,
                      height: 120,
                     decoration: BoxDecoration(
                      color: Colors.black,
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.white,
                        width: 3
                      ),
                      image: DecorationImage(
                        image:NetworkImage("https://tse4.mm.bing.net/th?id=OIP.31i3reK7ZdT42kMnQXwUxQHaE8&pid=Api&P=0") 
                        ,fit:BoxFit.fill ,
                        
                      )
                     ),
                     
                    ),
                   
                ],
               ),
                ListTile(

                      title: Text(textAlign:TextAlign.center ,"\n Saleh Selim  ",
                    style: TextStyle(color: Colors.white,
                     fontSize: 25,
                     fontWeight: FontWeight.bold),),),

                     ListTile(

                      title: Text(textAlign:TextAlign.center ," mohammedgmaal88@gmail.com  ",
                    style: TextStyle(color: Colors.white,
                     fontSize: 20,
                     fontWeight: FontWeight.bold),),),

                     Container(
                      margin: EdgeInsets.all(15),
                    height: 550, 
                    decoration:BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ) ,
                    child: ListView(
                       children: [
                        for(Map i in components)
                        InkWell(
                          onTap: (() {
                            Navigator.of(context).pushNamed(i["navigation"]);
                          }),
                          child: Container(
                              padding: EdgeInsets.fromLTRB(0, 0, 5, 20),
                              margin:EdgeInsets.fromLTRB(20, 15, 20, 0) ,
                              height:70 ,
                              width: 70,
                              decoration: BoxDecoration(
                                color: Colors.grey[100],
                                borderRadius: BorderRadius.circular(10)
                              ),
                              child:ListTile(
                               
                                leading: i["leading"],
                                title:Text(  i["title"],
                                style: TextStyle(color: Colors.black,
                                 fontSize: 20,
                               ),) ,
                               trailing:i["trailing"], 
                              ) ,
                            ),
                        )






                       ],
                    )
                     )


              ],
            )
          ],
        ),
      ),
    );
  }
}
 