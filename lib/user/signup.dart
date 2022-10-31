import 'package:cute_shop/shared/shared_widget/textformfield.dart';
import 'package:flutter/material.dart';
class signupScreen extends StatefulWidget {
  const signupScreen({super.key});

  @override
  State<signupScreen> createState() => _signupScreenState();
}

class _signupScreenState extends State<signupScreen> {
  GlobalKey<FormState> userkey= GlobalKey<FormState>();
  GlobalKey<FormState> passKey= GlobalKey<FormState>();
  GlobalKey<FormState> _formKey= GlobalKey<FormState>();
  GlobalKey<FormState> emailkey= GlobalKey<FormState>();

  String gender = "selectedgender";
  String date="";
  TextEditingController usernamecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Colors.pink,Colors.lightBlue],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          )
        ),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 30, 40, 10),
              child: Text("Welcome! \n Register",style: TextStyle(color: Colors.black
              ,fontSize: 40,fontWeight: FontWeight.bold),),
            ),
            Container(
              margin: EdgeInsets.all(10),
              height: 540,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),
              color: Colors.white,
              ),
             
             child: Form(
              autovalidateMode: AutovalidateMode.always,
              key:_formKey ,
               child: ListView(children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 15, 10, 0),
                  child: readyField(
                    Fields(
                      key:userkey,
                      controler: usernamecontroller,labelText: "user name",
                      icon: Icons.person,)),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 15, 10, 0),
                  child: readyField(
                    Fields(
                      key: emailkey,
                      controler: emailcontroller,labelText: "Email adress",
                      icon: Icons.email,)),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 15, 10, 0),
                  child: readyField(
                    Fields(
                      key:passKey ,
                      controler: passcontroller,labelText: "Pass Word",
                      icon: Icons.password,issecure: true,inputType: TextInputType.number,fieldtybe: Fieldtybe.password)),
                ),
             
               ListTile(
               
                title: Text("Gender",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),),
                subtitle: Text( gender,style: TextStyle(color: Colors.grey,fontSize: 20,fontWeight: FontWeight.bold),),
                 trailing:  PopupMenuButton(itemBuilder: (context) {
                   return <PopupMenuEntry<String>>[
                    PopupMenuItem(child: Text("Male",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold)),value: "Male",),
                    PopupMenuItem(child: Text("Female",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold)),value: "Female",),
                    PopupMenuItem(child:Text("Another",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold)),value: "Another",), 
                   ];
                    
                  
                 },enabled: true,
                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                 color: Colors.orange,
                 onSelected: (value) {
                  setState(() {
                    gender=value;
                  });
                 },
                 )
               ),
               ListTile(title:Text("Date of Birth",style:TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold) ,)
                        ,subtitle: Text(date ,style:TextStyle(color: Colors.black54,fontSize: 17),),
                        trailing: Icon(Icons.date_range,color: Colors.red,),
                        onTap: () async{
                    DateTime? chosendate= await showDatePicker(context: context,
                           initialDate: DateTime(1990),
                            firstDate: DateTime(1980), 
                            lastDate: DateTime(2023));
                            setState(() {
                              date=chosendate.toString().substring(0,10);
                            });
                        },
                        
                           
                         ),
               TextButton(onPressed: (){
                if(!_formKey.currentState!.validate()){
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Some fields Required",
                    textAlign:TextAlign.center ,
                    style:TextStyle(color: Colors.white,
                    fontSize: 17,fontWeight: FontWeight.bold))
                    ,backgroundColor: Colors.red,duration: Duration(seconds: 3), )
                  );
                }else{ }
               },
                child: Container(
                  width: 200,
                  height: 50,
                  decoration: BoxDecoration(
                    color:Colors.red,
                    borderRadius: BorderRadius.circular(20)
                    
                     ),
                     alignment: Alignment.center,
                  child: Text("Register",
                  style: TextStyle(color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold)),
                ),
                
                ),
                InkWell(
                  onTap:(){Navigator.of(context).pop();} ,
                  child: Align(
                    
                    child: Text(" Have an Account? login!",
                    style: TextStyle(color: Colors.red,fontSize: 20,)
                    ,),
             
                  ),
                )
               
               ]),
             ),
            )
          ],
        ),
      ),
    );
  }
}