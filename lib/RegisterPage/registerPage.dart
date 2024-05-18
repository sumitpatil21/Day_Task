

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:image_picker/image_picker.dart';
ImagePicker imagePick=ImagePicker();
XFile? imgfile;
File? fileimg;
TextEditingController txtfirst=TextEditingController();
TextEditingController txtlast=TextEditingController();
TextEditingController txtadd=TextEditingController();
TextEditingController txtnum=TextEditingController();
TextEditingController txtemail=TextEditingController();
TextEditingController txtdate=TextEditingController();

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child: Column(
          children: [
        
            Padding(
              padding: const EdgeInsets.only(top: 50,left: 40),
              child: Row(
                children: [
                  Text("Register",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 40),),
                ],
              ),
            ),
            SizedBox(height: 10,),
            CircleAvatar(
              radius: 90,
              backgroundColor: Colors.black,
              backgroundImage: (fileimg!=null)?FileImage(fileimg!):null,
            ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(onPressed: () async {
                imgfile=await imagePick.pickImage(source: ImageSource.camera);
               setState(() {
                 if(imgfile!=null)
                 {
                   fileimg=File(imgfile!.path);
                 }
               });
        
              }, icon:Icon(Icons.camera_alt,size: 40,) ),
              IconButton(onPressed: () async {
                imgfile=await imagePick.pickImage(source: ImageSource.gallery);
               setState(() {
                 if(imgfile!=null)
                 {
                   fileimg=File(imgfile!.path);
                 }
               });
        
              }, icon:Icon(Icons.image,size: 40,) )
            ],
          ),
        
        
        
        
            Padding(
              padding: const EdgeInsets.only(top: 10,left: 35,right: 35),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "First Name",
                  labelStyle: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.w400,
        
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blue,
                      width: 2.5
                    ),
                    borderRadius: BorderRadius.circular(15)
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 3,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10,left: 35,right: 35),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Last Name",
                  labelStyle: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.w400,
        
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blue,
                      width: 2.5
                    ),
                    borderRadius: BorderRadius.circular(15)
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 3,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10,left: 35,right: 35),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Address",
                  labelStyle: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.w400,
        
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blue,
                      width: 2.5
                    ),
                    borderRadius: BorderRadius.circular(15)
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 3,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10,left: 35,right: 35),
              child: TextField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  labelText: "Number",
                  labelStyle: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.w400,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blue,
                      width: 2.5
                    ),
                    borderRadius: BorderRadius.circular(15)
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 3,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10,left: 35,right: 35),
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: "Email Addresss",
                  labelStyle: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.w400,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blue,
                      width: 2.5
                    ),
                    borderRadius: BorderRadius.circular(15)
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 3,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10,left: 35,right: 35),
              child: TextField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                    labelText: "Birth Of Date",
                    labelStyle: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.w400,
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.blue,
                            width: 2.5
                        ),
                        borderRadius: BorderRadius.circular(15)
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                        width: 3,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40,top: 20),
              child: Row(
                children: [
                  Text("Gender",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w800,),),
                ],
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 10,),
           ),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Row(
                children: [
                  Radio(value: "male", groupValue: gender, onChanged: (value) {
                    setState(() {
                      gender=value!;
                    });
                  },),
                  Text("Male",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20,
        
                  ),),
                  Radio(value: "female", groupValue: gender, onChanged: (value) {
                    setState(() {
                      gender=value!;
                    });
                  },),
                  Text("Female",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20,
        
                  ),),
                  Radio(value: "other", groupValue: gender, onChanged: (value) {
                    setState(() {
                      gender=value!;
                    });
                  },),
                  Text("Other",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20,
        
                  ),),
                ],
              ),
            ),

            Padding(
              padding: const  EdgeInsets.only(left: 25),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ...List.generate(checkBox.length, (index) => Checkbox(value: ch, onChanged:(value) {
                      setState(() {
                        if(checkBox[index])
                          {
                            ch=value!;
                          }
                      });
                    },),
                    )
                  ],
                ),
              ),
            )
        
          ],
        ),
      ) ,
    );
  }
}
String gender="male";
bool ch=false;
List checkBox=[
  "Reed Book",
  "Challenge yourself",
  "Stay updated"
];