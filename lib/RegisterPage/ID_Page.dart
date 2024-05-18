import 'package:daytodaytask/RegisterPage/registerPage.dart';
import 'package:flutter/material.dart';

class IdPage extends StatefulWidget {
  const IdPage({super.key});

  @override
  State<IdPage> createState() => _IdPageState();
}

class _IdPageState extends State<IdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Center(
        child: Container(
          height: 400,
          width: 350,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  radius: 90,
                  backgroundColor: Colors.black,
                  backgroundImage: (fileimg!=null)?FileImage(fileimg!):null,
                ),
                Text("First Name : "+fname,style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w700),),
                Text("Last Name : "+lname,style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w700),),
                Text("Address : "+add,style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w700),),
                Text("Email : "+email,style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w700),),
                Text("Phone No. : "+num,style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w700),),
                Text("BOD : "+date,style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w700),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
