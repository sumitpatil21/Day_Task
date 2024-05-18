import 'dart:io';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

ImagePicker imagePicker = ImagePicker();
XFile? XimageFile;
File? imageFile, image;

class ImgPicker extends StatefulWidget {
  const ImgPicker({super.key});

  @override
  State<ImgPicker> createState() => _ImgPickerState();
}

class _ImgPickerState extends State<ImgPicker> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "Image Picker",
          style: TextStyle(
              fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 130, left: 10),
            height: 280,
            width: 300,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(10),
              image: (imageFile != null)
                  ? DecorationImage(image: FileImage(imageFile!),fit: BoxFit.cover)
                  : null,
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                  onTap: () async{
                    XimageFile=await imagePicker.pickImage(source:ImageSource.camera);
                    setState(() {
                      if(XimageFile!=null)
                      {
                        imageFile=File(XimageFile!.path);
                      }
                    });
                  },
                  child: Icon(
                    Icons.camera_alt,
                    size: 70,
                  )),
              InkWell(
                onTap: () async {
                  XimageFile=await imagePicker.pickImage(source: ImageSource.gallery);
                  setState(() {
                    if(XimageFile!=null)
                      {
                        imageFile=File(XimageFile!.path);
                      }
                  });
                },
                child: Icon(
                  Icons.image,
                  size: 70,
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 50),
            height: 75,
            width: 250,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Center(child: Text("Submit",style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.w400),)),
          )
        ],
      ),
    );;
  }
}


