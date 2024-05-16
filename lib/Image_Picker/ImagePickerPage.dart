import 'package:flutter/material.dart';

class ImagePicker extends StatefulWidget {
  const ImagePicker({super.key});

  @override
  State<ImagePicker> createState() => _ImagePickerState();
}

class _ImagePickerState extends State<ImagePicker> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Image Picker",style: TextStyle(
          fontSize: 25,
          color: Colors.white,
          fontWeight: FontWeight.bold
        ),),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 130,left: 10),
            height: 280,
            width: 300,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
         SizedBox(height: 50,),
         Row(
           mainAxisAlignment: MainAxisAlignment.spaceAround,
           children: [
             Icon(Icons.camera_alt,size: 70,),
             Icon(Icons.image,size: 70,),
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
          )
        ],
      ),
    );
  }
}
ImagePicker imagePicker=ImagePicker();