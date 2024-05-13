import 'package:daytodaytask/GoogleLoginPage/SuccessPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'LoginPage.dart';
import 'globle.dart';

class PasswordPage extends StatefulWidget {
  const PasswordPage({super.key});

  @override
  State<PasswordPage> createState() => _PasswordPageState();
}
TextEditingController texpass=TextEditingController();


class _PasswordPageState extends State<PasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      body: Form(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 300,
                      width: 800,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 35, top: 25),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image(
                                  image: AssetImage("Assest/image/google.png"),
                                  height: 35,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Sign in",
                                      style: TextStyle(
                                        fontSize: 35,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Use your Google Account",
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    SizedBox(width: 225,height: 40,),
                                    Text(
                                      "Forget password?",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w800,
                                          color: Colors.blue.shade600
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [

                                    SizedBox(width: 395,height: 50,),
                                    Text(
                                      "Not your Computer? Use Guest mode to sign in privately.",
                                      style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w900,
                                        color: Colors.black26,
                                      ),
                                    ),
                                    Text(
                                      "Learn more",
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.blue,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [

                                    SizedBox(width: 555,height: 70,),
                                    Text(
                                      "Create account",
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w900,
                                        color: Colors.blue,
                                      ),
                                    ),
                                    SizedBox(width: 15,),
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          bool rep=fromkey.currentState!.validate();
                                          if(rep)
                                          {
                                            email=texpass.text;
                                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => successpage(),));
                                          }
                                        });
                                      },
                                      child: Container(
                                        height: 35,
                                        width: 80,
                                        decoration: BoxDecoration(
                                          color: Colors.blue,
                                          borderRadius: BorderRadius.circular(25),
                                        ),
                                        child: Center(child: Text("submit",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w500),)),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left: 800,right: 400,top: 75),
                  child: TextFormField(
                    style: TextStyle(
                        height: 1
                    ),
                    validator: (value)

                    {
                      if(value!.isEmpty)
                      {
                        return 'Enter A input';
                      }
                      if(!value.contains('@gmail.com'))
                      {
                        return "Must be Enter @gmail.com";
                      }
                      if(value!.toString()=="@gmail.com")
                      {
                        return "Must be Enter @gmail"
                            ".com";
                      }
                    },
                    controller: texpass,
                    decoration: InputDecoration(
                        hintText: "Sumit124",
                        hintStyle: TextStyle(fontSize: 10,color: Colors.black,letterSpacing: 1),
                        labelText: "Password",
                        labelStyle: TextStyle(fontSize: 12,color: Colors.black),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 5,
                              color: Colors.black,
                            )
                        )
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
