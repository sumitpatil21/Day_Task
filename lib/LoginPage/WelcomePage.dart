import 'package:daytodaytask/LoginPage/Login_Page.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 100,left: 0),
            child: Image(image: AssetImage("Assest/image/taxi-modern-drip-chamber.png")),
          ),
          SizedBox(height: 150,),
          Padding(
            padding:  EdgeInsets.only(top: 40,left: 1),
            child: Column(
              children: [
                Text("Build Awesome Apps",style: TextStyle(color: Colors.black,fontSize: 38,fontWeight: FontWeight.w700,letterSpacing: 1),),
                Text("Let's put your creativtity on the",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w500,letterSpacing: 1),),
                Text("development highway",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w500,letterSpacing: 1),),
              ],
            ),
          ),
          Row(
            children: [
              InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginPage(),));
                },
                child: Container(
                  margin: EdgeInsets.only(top: 40,left: 20),
                  height: 75,
                  width: 194,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.black,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(15)
                  ),
                  child: Center(child: Text("LOGIN",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700,fontSize: 20,letterSpacing: 1.5),)),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 40,left: 30),
                height: 75,
                width: 195,
                decoration: BoxDecoration(
                    color: Colors.black,
                    border: Border.all(
                      color: Colors.black,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(15)
                ),
                child: Center(child: Text("SIGNUP",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 20,letterSpacing: 1.5),)),
              )
            ],
          )
        ],
      ),
    );
  }
}
