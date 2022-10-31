import 'package:flutter/material.dart';

OutlineInputBorder textfield(Color color){
  return OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: BorderSide(color: color)
                );
}


enum Fieldtybe{password,email,text}


class Fields{
   final String? labelText;
  final  IconData? icon;
   final TextInputType inputType;
   final  TextEditingController? controler;
   bool issecure;
   final String  hinttext;
   final Fieldtybe fieldtybe;
   Key? key;
   
Fields({this.fieldtybe=Fieldtybe.text ,this.icon,this.inputType=TextInputType.emailAddress,this.controler,this.issecure=false,this.labelText="",this.hinttext="",this.key});




}







class readyField extends StatefulWidget {
  final Fields fields;
  const readyField(this.fields,{super.key});

  @override
  State<readyField> createState() => _readyFieldState();
}

class _readyFieldState extends State<readyField> {
  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.symmetric(horizontal:5 ),
                  child: TextFormField(
                    validator: (x) {
                      if(x!.isEmpty){
                        return " this field Required";
                      }
                    },
                    decoration: InputDecoration(
                      
                border: textfield(Colors.black),
                errorBorder: textfield(Colors.red),
                enabledBorder: textfield(Colors.black),
                focusedBorder: textfield(Colors.blue),
                disabledBorder: textfield(Colors.grey),
                focusedErrorBorder: textfield(Colors.red),
                prefixIcon: Icon(widget.fields.icon),
                suffixIcon: widget.fields.fieldtybe==Fieldtybe.password?
                IconButton(onPressed: (){setState(() {
                  widget.fields.issecure=!widget.fields.issecure;
                });}, icon: Icon(Icons.remove_red_eye)):null,
                 hintStyle: TextStyle(color: Colors.grey,fontSize: 25,wordSpacing: 2,),
                 labelText: widget.fields.labelText,
                 labelStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                 hintText: widget.fields.hinttext
                     
                    ),
                    keyboardType: widget.fields.inputType,
                    controller:widget.fields.controler ,
                    enableSuggestions: true,
                    
                    textAlign: TextAlign.start,
                    textInputAction: TextInputAction.search,
                    obscureText: widget.fields.issecure,
                  ),
                 
                 );
  }
}