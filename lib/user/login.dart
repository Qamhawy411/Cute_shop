import 'package:cute_shop/shared/shared_screen/navigationScreen.dart';
import 'package:cute_shop/shared/shared_widget/textformfield.dart';
import 'package:cute_shop/user/signup.dart';
import 'package:flutter/material.dart';
class loginScreen extends StatefulWidget {
  const loginScreen({super.key});

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  TextEditingController userNamecontroller =TextEditingController();
  TextEditingController passcontroller =TextEditingController();
GlobalKey<FormState>  usernamekey =GlobalKey<FormState>();
GlobalKey<FormState>  passkey= GlobalKey<FormState>();
GlobalKey<FormState> _formkey= GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Colors.pink,Colors.blue.shade100],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          )
        ),
        
        child:
        
         ListView(
          
          children: [
        
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 50, 0, 3),
                child: Text("  Sign In",style: TextStyle(color:Colors.white,fontSize: 45,fontWeight: FontWeight.bold)),
              ),
              Text("     Enter to a beautiful World\n ",style: TextStyle(color:Colors.white,fontSize: 25,fontWeight: FontWeight.bold)),
              Container(
                margin: EdgeInsets.all(5),
                height: 500,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30)
                ),
                child: Form(
                  key: _formkey,
                  autovalidateMode: AutovalidateMode.always,
                  child: ListView(
                    children: [
                      
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 50, 10, 50),
                        child: readyField(

                          Fields(key: usernamekey
                          ,controler:userNamecontroller ,icon: Icons.email,labelText: "user name", )),
                      ),
                       Padding(
                        padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                        child: readyField(Fields(key:passkey ,controler:passcontroller ,icon: Icons.password,labelText: "password",issecure: true ,fieldtybe: Fieldtybe.password,inputType: TextInputType.name)),
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: ((context) {
                            return signupScreen();
                          })));
                        },
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: Text("forget password ?   \n ",style: TextStyle(color: Colors.red,fontSize: 17),),
                      
                        ),
                      ),
                      TextButton(onPressed: (){
                         if(!_formkey.currentState!.validate()){
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text("Some fields Required",textAlign:TextAlign.center ,style:TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.bold))
                              ,backgroundColor: Colors.red,duration: Duration(seconds: 3),)
                            );
                          }else{Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context){
                            return navigationScreen();
                          }));}
                      },
                       child: Container(
                        width: 180,
                        height: 60,
                        decoration:BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(20),
                        
                        ) ,
                        alignment: Alignment.center,
                        child: Text("Login",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
                      )),
                      InkWell(
                        onTap: (){
                         
                
                        },
                        child: Align(
                          alignment: Alignment.center,
                          child: Text( '   Dont Have an account? SignUp   \n' ,style: TextStyle(color: Colors.grey,fontSize: 20),),
                      
                        ),
                      ),
                    ],
                  ),
                )
              )
           
           
            ],
          )
        ]),
      )
    );
  }
}