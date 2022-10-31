import 'dart:io';

import 'package:cute_shop/shared/shared_widget/textformfield.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class editingProfile extends StatefulWidget {
  const editingProfile({super.key});

  @override
  State<editingProfile> createState() => _editingProfileState();
}

class _editingProfileState extends State<editingProfile> {
  File? img;
  TextEditingController fullnamecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            textAlign: TextAlign.right,
            "    Editing profile",
            style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold)),
      ),
      body: Container(
        color: Colors.grey[100],
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.only(top: 50, bottom: 20),
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                  color: Colors.black,
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.white,
                    width: 5,
                  ),
                  image: img == null
                      ? DecorationImage(
                          image: NetworkImage(
                              "https://www.birchgrovedental.co.uk/wp-content/uploads/2016/01/empty-person.jpg"),
                          fit: BoxFit.contain,
                        )
                      : DecorationImage(
                          image: FileImage(img!),
                          fit: BoxFit.fill,
                        )),
              child: Stack(
                children: [
                  InkWell(
                    onTap: () async {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              backgroundColor: Colors.pink[200],
                              title:Text(
                                      "Choose Device",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25,
                                      ),
                                    ),
                              content: SingleChildScrollView(
                                  child: ListBody(
                                children: [
                                  InkWell(
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(8, 8, 8, 10),
                                      child: Text(
                                        "Camera",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                    onTap: () {getimg(ImageSource.camera);},
                                  ),
                                  InkWell(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "Gallary",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20
                                        ),
                                      ),
                                    ),
                                    onTap: () {getimg(ImageSource.gallery);},
                                  ),
                                ],
                              )),
                            );
                          });
                    },
                    child: Container(
                      margin: EdgeInsets.fromLTRB(220, 90, 10, 0),
                      child: Icon(
                        Icons.edit,
                        color: Colors.white,
                      ),
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 4),
                          shape: BoxShape.circle,
                          color: Colors.blue),
                    ),
                  ),
                ],
              ),
            ),
            readyField(Fields(
                icon: Icons.person,
                labelText: "Full Name",
                controler: fullnamecontroller,
                inputType: TextInputType.name)),
            SizedBox(
              height: 30,
            ),
            readyField(Fields(
                icon: Icons.email,
                labelText: " Email ",
                controler: emailcontroller,
                inputType: TextInputType.name)),
            SizedBox(
              height: 30,
            ),
            readyField(Fields(
                icon: Icons.password,
                labelText: "PassWord",
                issecure: true,
                controler: passcontroller,
                fieldtybe: Fieldtybe.password,
                inputType: TextInputType.number)),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                    onPressed: () {},
                    child: Container(
                      margin: EdgeInsets.fromLTRB(15, 15, 15, 15),
                      width: 150,
                      height: 50,
                      alignment: Alignment.center,
                      child: Text(
                        "Cancel",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    )),
                ElevatedButton(
                  onPressed: () {},
                  child: Text("Save",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold)),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    fixedSize: Size(150, 50),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  getimg(ImageSource source) async {
    XFile? pickedimg = await ImagePicker().pickImage(source: source);
   try{ setState(() {
      img = File(pickedimg!.path);
    });}catch(e){
      Navigator.of(context).pop();
    }
  }
}
